#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_s_axis_video_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_data_V.dat");
unsigned int ap_apatb_s_axis_video_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_keep_V.dat");
unsigned int ap_apatb_s_axis_video_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_strb_V.dat");
unsigned int ap_apatb_s_axis_video_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_user_V.dat");
unsigned int ap_apatb_s_axis_video_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_last_V.dat");
unsigned int ap_apatb_s_axis_video_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_id_V.dat");
unsigned int ap_apatb_s_axis_video_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video_V_dest_V.dat");
unsigned int ap_apatb_s_axis_video1_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_data_V.dat");
unsigned int ap_apatb_s_axis_video1_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_keep_V.dat");
unsigned int ap_apatb_s_axis_video1_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_strb_V.dat");
unsigned int ap_apatb_s_axis_video1_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_user_V.dat");
unsigned int ap_apatb_s_axis_video1_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_last_V.dat");
unsigned int ap_apatb_s_axis_video1_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_id_V.dat");
unsigned int ap_apatb_s_axis_video1_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video1_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video1_V_dest_V.dat");
unsigned int ap_apatb_s_axis_video2_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_data_V.dat");
unsigned int ap_apatb_s_axis_video2_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_keep_V.dat");
unsigned int ap_apatb_s_axis_video2_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_strb_V.dat");
unsigned int ap_apatb_s_axis_video2_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_user_V.dat");
unsigned int ap_apatb_s_axis_video2_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_last_V.dat");
unsigned int ap_apatb_s_axis_video2_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_id_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_id_V.dat");
unsigned int ap_apatb_s_axis_video2_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_video2_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_video2_V_dest_V.dat");
unsigned int ap_apatb_m_axis_video_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_data_V.dat");
unsigned int ap_apatb_m_axis_video_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_keep_V.dat");
unsigned int ap_apatb_m_axis_video_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_strb_V.dat");
unsigned int ap_apatb_m_axis_video_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_user_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_user_V.dat");
unsigned int ap_apatb_m_axis_video_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_last_V.dat");
unsigned int ap_apatb_m_axis_video_V_id_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_id_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_id_V.dat");
unsigned int ap_apatb_m_axis_video_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_video_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_video_V_dest_V.dat");
using hls::sim::Byte;
extern "C" void v_mix(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, short, short, short, short, short, short, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, Byte<1>*, volatile void *, volatile void *, volatile void *, short, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_v_mix_hw(volatile void * __xlx_apatb_param_s_axis_video_V_data_V, volatile void * __xlx_apatb_param_s_axis_video_V_keep_V, volatile void * __xlx_apatb_param_s_axis_video_V_strb_V, volatile void * __xlx_apatb_param_s_axis_video_V_user_V, volatile void * __xlx_apatb_param_s_axis_video_V_last_V, volatile void * __xlx_apatb_param_s_axis_video_V_id_V, volatile void * __xlx_apatb_param_s_axis_video_V_dest_V, volatile void * __xlx_apatb_param_s_axis_video1_V_data_V, volatile void * __xlx_apatb_param_s_axis_video1_V_keep_V, volatile void * __xlx_apatb_param_s_axis_video1_V_strb_V, volatile void * __xlx_apatb_param_s_axis_video1_V_user_V, volatile void * __xlx_apatb_param_s_axis_video1_V_last_V, volatile void * __xlx_apatb_param_s_axis_video1_V_id_V, volatile void * __xlx_apatb_param_s_axis_video1_V_dest_V, volatile void * __xlx_apatb_param_s_axis_video2_V_data_V, volatile void * __xlx_apatb_param_s_axis_video2_V_keep_V, volatile void * __xlx_apatb_param_s_axis_video2_V_strb_V, volatile void * __xlx_apatb_param_s_axis_video2_V_user_V, volatile void * __xlx_apatb_param_s_axis_video2_V_last_V, volatile void * __xlx_apatb_param_s_axis_video2_V_id_V, volatile void * __xlx_apatb_param_s_axis_video2_V_dest_V, short __xlx_apatb_param_width, short __xlx_apatb_param_height, short __xlx_apatb_param_video_format, short __xlx_apatb_param_background_Y_R, short __xlx_apatb_param_background_U_G, short __xlx_apatb_param_background_V_B, int __xlx_apatb_param_layerEnable, volatile void * __xlx_apatb_param_layerAlpha_0, volatile void * __xlx_apatb_param_layerAlpha_1, volatile void * __xlx_apatb_param_layerAlpha_2, volatile void * __xlx_apatb_param_layerStartX_0, volatile void * __xlx_apatb_param_layerStartX_1, volatile void * __xlx_apatb_param_layerStartX_2, volatile void * __xlx_apatb_param_layerStartY_0, volatile void * __xlx_apatb_param_layerStartY_1, volatile void * __xlx_apatb_param_layerStartY_2, volatile void * __xlx_apatb_param_layerWidth_0, volatile void * __xlx_apatb_param_layerWidth_1, volatile void * __xlx_apatb_param_layerWidth_2, volatile void * __xlx_apatb_param_layerHeight_0, volatile void * __xlx_apatb_param_layerHeight_1, volatile void * __xlx_apatb_param_layerHeight_2, volatile void * __xlx_apatb_param_layerScaleFactor_0, volatile void * __xlx_apatb_param_layerScaleFactor_1, volatile void * __xlx_apatb_param_layerScaleFactor_2, volatile void * __xlx_apatb_param_layerVideoFormat, volatile void * __xlx_apatb_param_layerStride_0, volatile void * __xlx_apatb_param_layerStride_1, volatile void * __xlx_apatb_param_layerStride_2, short __xlx_apatb_param_reserve, int __xlx_apatb_param_K11, int __xlx_apatb_param_K12, int __xlx_apatb_param_K13, int __xlx_apatb_param_K21, int __xlx_apatb_param_K22, int __xlx_apatb_param_K23, int __xlx_apatb_param_K31, int __xlx_apatb_param_K32, int __xlx_apatb_param_K33, int __xlx_apatb_param_ROffset, int __xlx_apatb_param_GOffset, int __xlx_apatb_param_BOffset, int __xlx_apatb_param_K11_2, int __xlx_apatb_param_K12_2, int __xlx_apatb_param_K13_2, int __xlx_apatb_param_K21_2, int __xlx_apatb_param_K22_2, int __xlx_apatb_param_K23_2, int __xlx_apatb_param_K31_2, int __xlx_apatb_param_K32_2, int __xlx_apatb_param_K33_2, int __xlx_apatb_param_YOffset, int __xlx_apatb_param_UOffset, int __xlx_apatb_param_VOffset, volatile void * __xlx_apatb_param_m_axis_video_V_data_V, volatile void * __xlx_apatb_param_m_axis_video_V_keep_V, volatile void * __xlx_apatb_param_m_axis_video_V_strb_V, volatile void * __xlx_apatb_param_m_axis_video_V_user_V, volatile void * __xlx_apatb_param_m_axis_video_V_last_V, volatile void * __xlx_apatb_param_m_axis_video_V_id_V, volatile void * __xlx_apatb_param_m_axis_video_V_dest_V) {
using hls::sim::createStream;
auto* ss_axis_video_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V);
auto* ss_axis_video_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_keep_V);
auto* ss_axis_video_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_strb_V);
auto* ss_axis_video_V_user_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V);
auto* ss_axis_video_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V);
auto* ss_axis_video_V_id_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V);
auto* ss_axis_video_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V);
auto* ss_axis_video1_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_s_axis_video1_V_data_V);
auto* ss_axis_video1_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_keep_V);
auto* ss_axis_video1_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_strb_V);
auto* ss_axis_video1_V_user_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_user_V);
auto* ss_axis_video1_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_last_V);
auto* ss_axis_video1_V_id_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_id_V);
auto* ss_axis_video1_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_dest_V);
auto* ss_axis_video2_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_s_axis_video2_V_data_V);
auto* ss_axis_video2_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_keep_V);
auto* ss_axis_video2_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_strb_V);
auto* ss_axis_video2_V_user_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_user_V);
auto* ss_axis_video2_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_last_V);
auto* ss_axis_video2_V_id_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_id_V);
auto* ss_axis_video2_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_dest_V);
  // Collect __xlx_layerVideoFormat__tmp_vec
std::vector<Byte<1>> __xlx_layerVideoFormat__tmp_vec;
for (size_t i = 0; i < 3; ++i){
__xlx_layerVideoFormat__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_layerVideoFormat)[i]);
}
  int __xlx_size_param_layerVideoFormat = 3;
  int __xlx_offset_param_layerVideoFormat = 0;
  int __xlx_offset_byte_param_layerVideoFormat = 0*1;
  //Create input buffer for m_axis_video_V_data_V
  ap_apatb_m_axis_video_V_data_V_cap_bc = __xlx_m_axis_video_V_data_V_V_size_Reader.read_size();
  int* __xlx_m_axis_video_V_data_V_input_buffer= new int[ap_apatb_m_axis_video_V_data_V_cap_bc];
auto* sm_axis_video_V_data_V = createStream((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V);
  //Create input buffer for m_axis_video_V_keep_V
  ap_apatb_m_axis_video_V_keep_V_cap_bc = __xlx_m_axis_video_V_keep_V_V_size_Reader.read_size();
  char* __xlx_m_axis_video_V_keep_V_input_buffer= new char[ap_apatb_m_axis_video_V_keep_V_cap_bc];
auto* sm_axis_video_V_keep_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_keep_V);
  //Create input buffer for m_axis_video_V_strb_V
  ap_apatb_m_axis_video_V_strb_V_cap_bc = __xlx_m_axis_video_V_strb_V_V_size_Reader.read_size();
  char* __xlx_m_axis_video_V_strb_V_input_buffer= new char[ap_apatb_m_axis_video_V_strb_V_cap_bc];
auto* sm_axis_video_V_strb_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_strb_V);
  //Create input buffer for m_axis_video_V_user_V
  ap_apatb_m_axis_video_V_user_V_cap_bc = __xlx_m_axis_video_V_user_V_V_size_Reader.read_size();
  char* __xlx_m_axis_video_V_user_V_input_buffer= new char[ap_apatb_m_axis_video_V_user_V_cap_bc];
auto* sm_axis_video_V_user_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_user_V);
  //Create input buffer for m_axis_video_V_last_V
  ap_apatb_m_axis_video_V_last_V_cap_bc = __xlx_m_axis_video_V_last_V_V_size_Reader.read_size();
  char* __xlx_m_axis_video_V_last_V_input_buffer= new char[ap_apatb_m_axis_video_V_last_V_cap_bc];
auto* sm_axis_video_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_last_V);
  //Create input buffer for m_axis_video_V_id_V
  ap_apatb_m_axis_video_V_id_V_cap_bc = __xlx_m_axis_video_V_id_V_V_size_Reader.read_size();
  char* __xlx_m_axis_video_V_id_V_input_buffer= new char[ap_apatb_m_axis_video_V_id_V_cap_bc];
auto* sm_axis_video_V_id_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_id_V);
  //Create input buffer for m_axis_video_V_dest_V
  ap_apatb_m_axis_video_V_dest_V_cap_bc = __xlx_m_axis_video_V_dest_V_V_size_Reader.read_size();
  char* __xlx_m_axis_video_V_dest_V_input_buffer= new char[ap_apatb_m_axis_video_V_dest_V_cap_bc];
auto* sm_axis_video_V_dest_V = createStream((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_dest_V);
  // DUT call
  v_mix(ss_axis_video_V_data_V->data<int>(), ss_axis_video_V_keep_V->data<char>(), ss_axis_video_V_strb_V->data<char>(), ss_axis_video_V_user_V->data<char>(), ss_axis_video_V_last_V->data<char>(), ss_axis_video_V_id_V->data<char>(), ss_axis_video_V_dest_V->data<char>(), ss_axis_video1_V_data_V->data<int>(), ss_axis_video1_V_keep_V->data<char>(), ss_axis_video1_V_strb_V->data<char>(), ss_axis_video1_V_user_V->data<char>(), ss_axis_video1_V_last_V->data<char>(), ss_axis_video1_V_id_V->data<char>(), ss_axis_video1_V_dest_V->data<char>(), ss_axis_video2_V_data_V->data<int>(), ss_axis_video2_V_keep_V->data<char>(), ss_axis_video2_V_strb_V->data<char>(), ss_axis_video2_V_user_V->data<char>(), ss_axis_video2_V_last_V->data<char>(), ss_axis_video2_V_id_V->data<char>(), ss_axis_video2_V_dest_V->data<char>(), __xlx_apatb_param_width, __xlx_apatb_param_height, __xlx_apatb_param_video_format, __xlx_apatb_param_background_Y_R, __xlx_apatb_param_background_U_G, __xlx_apatb_param_background_V_B, __xlx_apatb_param_layerEnable, __xlx_apatb_param_layerAlpha_0, __xlx_apatb_param_layerAlpha_1, __xlx_apatb_param_layerAlpha_2, __xlx_apatb_param_layerStartX_0, __xlx_apatb_param_layerStartX_1, __xlx_apatb_param_layerStartX_2, __xlx_apatb_param_layerStartY_0, __xlx_apatb_param_layerStartY_1, __xlx_apatb_param_layerStartY_2, __xlx_apatb_param_layerWidth_0, __xlx_apatb_param_layerWidth_1, __xlx_apatb_param_layerWidth_2, __xlx_apatb_param_layerHeight_0, __xlx_apatb_param_layerHeight_1, __xlx_apatb_param_layerHeight_2, __xlx_apatb_param_layerScaleFactor_0, __xlx_apatb_param_layerScaleFactor_1, __xlx_apatb_param_layerScaleFactor_2, __xlx_layerVideoFormat__tmp_vec.data(), __xlx_apatb_param_layerStride_0, __xlx_apatb_param_layerStride_1, __xlx_apatb_param_layerStride_2, __xlx_apatb_param_reserve, __xlx_apatb_param_K11, __xlx_apatb_param_K12, __xlx_apatb_param_K13, __xlx_apatb_param_K21, __xlx_apatb_param_K22, __xlx_apatb_param_K23, __xlx_apatb_param_K31, __xlx_apatb_param_K32, __xlx_apatb_param_K33, __xlx_apatb_param_ROffset, __xlx_apatb_param_GOffset, __xlx_apatb_param_BOffset, __xlx_apatb_param_K11_2, __xlx_apatb_param_K12_2, __xlx_apatb_param_K13_2, __xlx_apatb_param_K21_2, __xlx_apatb_param_K22_2, __xlx_apatb_param_K23_2, __xlx_apatb_param_K31_2, __xlx_apatb_param_K32_2, __xlx_apatb_param_K33_2, __xlx_apatb_param_YOffset, __xlx_apatb_param_UOffset, __xlx_apatb_param_VOffset, sm_axis_video_V_data_V->data<int>(), sm_axis_video_V_keep_V->data<char>(), sm_axis_video_V_strb_V->data<char>(), sm_axis_video_V_user_V->data<char>(), sm_axis_video_V_last_V->data<char>(), sm_axis_video_V_id_V->data<char>(), sm_axis_video_V_dest_V->data<char>());
ss_axis_video_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_s_axis_video_V_data_V);
ss_axis_video_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_keep_V);
ss_axis_video_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_strb_V);
ss_axis_video_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_user_V);
ss_axis_video_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_last_V);
ss_axis_video_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_id_V);
ss_axis_video_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video_V_dest_V);
ss_axis_video1_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_s_axis_video1_V_data_V);
ss_axis_video1_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_keep_V);
ss_axis_video1_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_strb_V);
ss_axis_video1_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_user_V);
ss_axis_video1_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_last_V);
ss_axis_video1_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_id_V);
ss_axis_video1_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video1_V_dest_V);
ss_axis_video2_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_s_axis_video2_V_data_V);
ss_axis_video2_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_keep_V);
ss_axis_video2_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_strb_V);
ss_axis_video2_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_user_V);
ss_axis_video2_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_last_V);
ss_axis_video2_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_id_V);
ss_axis_video2_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_s_axis_video2_V_dest_V);
// print __xlx_apatb_param_layerVideoFormat
for (size_t i = 0; i < __xlx_size_param_layerVideoFormat; ++i) {
((Byte<1>*)__xlx_apatb_param_layerVideoFormat)[i] = __xlx_layerVideoFormat__tmp_vec[__xlx_offset_param_layerVideoFormat+i];
}
sm_axis_video_V_data_V->transfer((hls::stream<int>*)__xlx_apatb_param_m_axis_video_V_data_V);
sm_axis_video_V_keep_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_keep_V);
sm_axis_video_V_strb_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_strb_V);
sm_axis_video_V_user_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_user_V);
sm_axis_video_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_last_V);
sm_axis_video_V_id_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_id_V);
sm_axis_video_V_dest_V->transfer((hls::stream<char>*)__xlx_apatb_param_m_axis_video_V_dest_V);
}
