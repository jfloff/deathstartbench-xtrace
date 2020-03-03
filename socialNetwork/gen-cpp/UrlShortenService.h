/**
 * Autogenerated by Thrift Compiler (0.12.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#ifndef UrlShortenService_H
#define UrlShortenService_H

#include <thrift/TDispatchProcessor.h>
#include <thrift/async/TConcurrentClientSyncInfo.h>
#include "social_network_types.h"

namespace social_network {

#ifdef _MSC_VER
  #pragma warning( push )
  #pragma warning (disable : 4250 ) //inheriting methods via dominance 
#endif

class UrlShortenServiceIf {
 public:
  virtual ~UrlShortenServiceIf() {}
  virtual void UploadUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & urls, const std::map<std::string, std::string> & carrier) = 0;
  virtual void GetExtendedUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & shortened_urls, const std::map<std::string, std::string> & carrier) = 0;
};

class UrlShortenServiceIfFactory {
 public:
  typedef UrlShortenServiceIf Handler;

  virtual ~UrlShortenServiceIfFactory() {}

  virtual UrlShortenServiceIf* getHandler(const ::apache::thrift::TConnectionInfo& connInfo) = 0;
  virtual void releaseHandler(UrlShortenServiceIf* /* handler */) = 0;
};

class UrlShortenServiceIfSingletonFactory : virtual public UrlShortenServiceIfFactory {
 public:
  UrlShortenServiceIfSingletonFactory(const ::apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf>& iface) : iface_(iface) {}
  virtual ~UrlShortenServiceIfSingletonFactory() {}

  virtual UrlShortenServiceIf* getHandler(const ::apache::thrift::TConnectionInfo&) {
    return iface_.get();
  }
  virtual void releaseHandler(UrlShortenServiceIf* /* handler */) {}

 protected:
  ::apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf> iface_;
};

class UrlShortenServiceNull : virtual public UrlShortenServiceIf {
 public:
  virtual ~UrlShortenServiceNull() {}
  void UploadUrls(UrlListRpcResponse& /* _return */, const int64_t /* req_id */, const std::vector<std::string> & /* urls */, const std::map<std::string, std::string> & /* carrier */) {
    return;
  }
  void GetExtendedUrls(UrlListRpcResponse& /* _return */, const int64_t /* req_id */, const std::vector<std::string> & /* shortened_urls */, const std::map<std::string, std::string> & /* carrier */) {
    return;
  }
};

typedef struct _UrlShortenService_UploadUrls_args__isset {
  _UrlShortenService_UploadUrls_args__isset() : req_id(false), urls(false), carrier(false) {}
  bool req_id :1;
  bool urls :1;
  bool carrier :1;
} _UrlShortenService_UploadUrls_args__isset;

class UrlShortenService_UploadUrls_args {
 public:

  UrlShortenService_UploadUrls_args(const UrlShortenService_UploadUrls_args&);
  UrlShortenService_UploadUrls_args& operator=(const UrlShortenService_UploadUrls_args&);
  UrlShortenService_UploadUrls_args() : req_id(0) {
  }

  virtual ~UrlShortenService_UploadUrls_args() throw();
  int64_t req_id;
  std::vector<std::string>  urls;
  std::map<std::string, std::string>  carrier;

  _UrlShortenService_UploadUrls_args__isset __isset;

  void __set_req_id(const int64_t val);

  void __set_urls(const std::vector<std::string> & val);

  void __set_carrier(const std::map<std::string, std::string> & val);

  bool operator == (const UrlShortenService_UploadUrls_args & rhs) const
  {
    if (!(req_id == rhs.req_id))
      return false;
    if (!(urls == rhs.urls))
      return false;
    if (!(carrier == rhs.carrier))
      return false;
    return true;
  }
  bool operator != (const UrlShortenService_UploadUrls_args &rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const UrlShortenService_UploadUrls_args & ) const;

  uint32_t read(::apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(::apache::thrift::protocol::TProtocol* oprot) const;

};


class UrlShortenService_UploadUrls_pargs {
 public:


  virtual ~UrlShortenService_UploadUrls_pargs() throw();
  const int64_t* req_id;
  const std::vector<std::string> * urls;
  const std::map<std::string, std::string> * carrier;

  uint32_t write(::apache::thrift::protocol::TProtocol* oprot) const;

};

typedef struct _UrlShortenService_UploadUrls_result__isset {
  _UrlShortenService_UploadUrls_result__isset() : success(false), se(false) {}
  bool success :1;
  bool se :1;
} _UrlShortenService_UploadUrls_result__isset;

class UrlShortenService_UploadUrls_result {
 public:

  UrlShortenService_UploadUrls_result(const UrlShortenService_UploadUrls_result&);
  UrlShortenService_UploadUrls_result& operator=(const UrlShortenService_UploadUrls_result&);
  UrlShortenService_UploadUrls_result() {
  }

  virtual ~UrlShortenService_UploadUrls_result() throw();
  UrlListRpcResponse success;
  ServiceException se;

  _UrlShortenService_UploadUrls_result__isset __isset;

  void __set_success(const UrlListRpcResponse& val);

  void __set_se(const ServiceException& val);

  bool operator == (const UrlShortenService_UploadUrls_result & rhs) const
  {
    if (!(success == rhs.success))
      return false;
    if (!(se == rhs.se))
      return false;
    return true;
  }
  bool operator != (const UrlShortenService_UploadUrls_result &rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const UrlShortenService_UploadUrls_result & ) const;

  uint32_t read(::apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(::apache::thrift::protocol::TProtocol* oprot) const;

};

typedef struct _UrlShortenService_UploadUrls_presult__isset {
  _UrlShortenService_UploadUrls_presult__isset() : success(false), se(false) {}
  bool success :1;
  bool se :1;
} _UrlShortenService_UploadUrls_presult__isset;

class UrlShortenService_UploadUrls_presult {
 public:


  virtual ~UrlShortenService_UploadUrls_presult() throw();
  UrlListRpcResponse* success;
  ServiceException se;

  _UrlShortenService_UploadUrls_presult__isset __isset;

  uint32_t read(::apache::thrift::protocol::TProtocol* iprot);

};

typedef struct _UrlShortenService_GetExtendedUrls_args__isset {
  _UrlShortenService_GetExtendedUrls_args__isset() : req_id(false), shortened_urls(false), carrier(false) {}
  bool req_id :1;
  bool shortened_urls :1;
  bool carrier :1;
} _UrlShortenService_GetExtendedUrls_args__isset;

class UrlShortenService_GetExtendedUrls_args {
 public:

  UrlShortenService_GetExtendedUrls_args(const UrlShortenService_GetExtendedUrls_args&);
  UrlShortenService_GetExtendedUrls_args& operator=(const UrlShortenService_GetExtendedUrls_args&);
  UrlShortenService_GetExtendedUrls_args() : req_id(0) {
  }

  virtual ~UrlShortenService_GetExtendedUrls_args() throw();
  int64_t req_id;
  std::vector<std::string>  shortened_urls;
  std::map<std::string, std::string>  carrier;

  _UrlShortenService_GetExtendedUrls_args__isset __isset;

  void __set_req_id(const int64_t val);

  void __set_shortened_urls(const std::vector<std::string> & val);

  void __set_carrier(const std::map<std::string, std::string> & val);

  bool operator == (const UrlShortenService_GetExtendedUrls_args & rhs) const
  {
    if (!(req_id == rhs.req_id))
      return false;
    if (!(shortened_urls == rhs.shortened_urls))
      return false;
    if (!(carrier == rhs.carrier))
      return false;
    return true;
  }
  bool operator != (const UrlShortenService_GetExtendedUrls_args &rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const UrlShortenService_GetExtendedUrls_args & ) const;

  uint32_t read(::apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(::apache::thrift::protocol::TProtocol* oprot) const;

};


class UrlShortenService_GetExtendedUrls_pargs {
 public:


  virtual ~UrlShortenService_GetExtendedUrls_pargs() throw();
  const int64_t* req_id;
  const std::vector<std::string> * shortened_urls;
  const std::map<std::string, std::string> * carrier;

  uint32_t write(::apache::thrift::protocol::TProtocol* oprot) const;

};

typedef struct _UrlShortenService_GetExtendedUrls_result__isset {
  _UrlShortenService_GetExtendedUrls_result__isset() : success(false), se(false) {}
  bool success :1;
  bool se :1;
} _UrlShortenService_GetExtendedUrls_result__isset;

class UrlShortenService_GetExtendedUrls_result {
 public:

  UrlShortenService_GetExtendedUrls_result(const UrlShortenService_GetExtendedUrls_result&);
  UrlShortenService_GetExtendedUrls_result& operator=(const UrlShortenService_GetExtendedUrls_result&);
  UrlShortenService_GetExtendedUrls_result() {
  }

  virtual ~UrlShortenService_GetExtendedUrls_result() throw();
  UrlListRpcResponse success;
  ServiceException se;

  _UrlShortenService_GetExtendedUrls_result__isset __isset;

  void __set_success(const UrlListRpcResponse& val);

  void __set_se(const ServiceException& val);

  bool operator == (const UrlShortenService_GetExtendedUrls_result & rhs) const
  {
    if (!(success == rhs.success))
      return false;
    if (!(se == rhs.se))
      return false;
    return true;
  }
  bool operator != (const UrlShortenService_GetExtendedUrls_result &rhs) const {
    return !(*this == rhs);
  }

  bool operator < (const UrlShortenService_GetExtendedUrls_result & ) const;

  uint32_t read(::apache::thrift::protocol::TProtocol* iprot);
  uint32_t write(::apache::thrift::protocol::TProtocol* oprot) const;

};

typedef struct _UrlShortenService_GetExtendedUrls_presult__isset {
  _UrlShortenService_GetExtendedUrls_presult__isset() : success(false), se(false) {}
  bool success :1;
  bool se :1;
} _UrlShortenService_GetExtendedUrls_presult__isset;

class UrlShortenService_GetExtendedUrls_presult {
 public:


  virtual ~UrlShortenService_GetExtendedUrls_presult() throw();
  UrlListRpcResponse* success;
  ServiceException se;

  _UrlShortenService_GetExtendedUrls_presult__isset __isset;

  uint32_t read(::apache::thrift::protocol::TProtocol* iprot);

};

class UrlShortenServiceClient : virtual public UrlShortenServiceIf {
 public:
  UrlShortenServiceClient(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> prot) {
    setProtocol(prot);
  }
  UrlShortenServiceClient(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> iprot, apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> oprot) {
    setProtocol(iprot,oprot);
  }
 private:
  void setProtocol(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> prot) {
  setProtocol(prot,prot);
  }
  void setProtocol(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> iprot, apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> oprot) {
    piprot_=iprot;
    poprot_=oprot;
    iprot_ = iprot.get();
    oprot_ = oprot.get();
  }
 public:
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> getInputProtocol() {
    return piprot_;
  }
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> getOutputProtocol() {
    return poprot_;
  }
  void UploadUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & urls, const std::map<std::string, std::string> & carrier);
  void send_UploadUrls(const int64_t req_id, const std::vector<std::string> & urls, const std::map<std::string, std::string> & carrier);
  void recv_UploadUrls(UrlListRpcResponse& _return);
  void GetExtendedUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & shortened_urls, const std::map<std::string, std::string> & carrier);
  void send_GetExtendedUrls(const int64_t req_id, const std::vector<std::string> & shortened_urls, const std::map<std::string, std::string> & carrier);
  void recv_GetExtendedUrls(UrlListRpcResponse& _return);
 protected:
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> piprot_;
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> poprot_;
  ::apache::thrift::protocol::TProtocol* iprot_;
  ::apache::thrift::protocol::TProtocol* oprot_;
};

class UrlShortenServiceProcessor : public ::apache::thrift::TDispatchProcessor {
 protected:
  ::apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf> iface_;
  virtual bool dispatchCall(::apache::thrift::protocol::TProtocol* iprot, ::apache::thrift::protocol::TProtocol* oprot, const std::string& fname, int32_t seqid, void* callContext);
 private:
  typedef  void (UrlShortenServiceProcessor::*ProcessFunction)(int32_t, ::apache::thrift::protocol::TProtocol*, ::apache::thrift::protocol::TProtocol*, void*);
  typedef std::map<std::string, ProcessFunction> ProcessMap;
  ProcessMap processMap_;
  void process_UploadUrls(int32_t seqid, ::apache::thrift::protocol::TProtocol* iprot, ::apache::thrift::protocol::TProtocol* oprot, void* callContext);
  void process_GetExtendedUrls(int32_t seqid, ::apache::thrift::protocol::TProtocol* iprot, ::apache::thrift::protocol::TProtocol* oprot, void* callContext);
 public:
  UrlShortenServiceProcessor(::apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf> iface) :
    iface_(iface) {
    processMap_["UploadUrls"] = &UrlShortenServiceProcessor::process_UploadUrls;
    processMap_["GetExtendedUrls"] = &UrlShortenServiceProcessor::process_GetExtendedUrls;
  }

  virtual ~UrlShortenServiceProcessor() {}
};

class UrlShortenServiceProcessorFactory : public ::apache::thrift::TProcessorFactory {
 public:
  UrlShortenServiceProcessorFactory(const ::apache::thrift::stdcxx::shared_ptr< UrlShortenServiceIfFactory >& handlerFactory) :
      handlerFactory_(handlerFactory) {}

  ::apache::thrift::stdcxx::shared_ptr< ::apache::thrift::TProcessor > getProcessor(const ::apache::thrift::TConnectionInfo& connInfo);

 protected:
  ::apache::thrift::stdcxx::shared_ptr< UrlShortenServiceIfFactory > handlerFactory_;
};

class UrlShortenServiceMultiface : virtual public UrlShortenServiceIf {
 public:
  UrlShortenServiceMultiface(std::vector<apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf> >& ifaces) : ifaces_(ifaces) {
  }
  virtual ~UrlShortenServiceMultiface() {}
 protected:
  std::vector<apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf> > ifaces_;
  UrlShortenServiceMultiface() {}
  void add(::apache::thrift::stdcxx::shared_ptr<UrlShortenServiceIf> iface) {
    ifaces_.push_back(iface);
  }
 public:
  void UploadUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & urls, const std::map<std::string, std::string> & carrier) {
    size_t sz = ifaces_.size();
    size_t i = 0;
    for (; i < (sz - 1); ++i) {
      ifaces_[i]->UploadUrls(_return, req_id, urls, carrier);
    }
    ifaces_[i]->UploadUrls(_return, req_id, urls, carrier);
    return;
  }

  void GetExtendedUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & shortened_urls, const std::map<std::string, std::string> & carrier) {
    size_t sz = ifaces_.size();
    size_t i = 0;
    for (; i < (sz - 1); ++i) {
      ifaces_[i]->GetExtendedUrls(_return, req_id, shortened_urls, carrier);
    }
    ifaces_[i]->GetExtendedUrls(_return, req_id, shortened_urls, carrier);
    return;
  }

};

// The 'concurrent' client is a thread safe client that correctly handles
// out of order responses.  It is slower than the regular client, so should
// only be used when you need to share a connection among multiple threads
class UrlShortenServiceConcurrentClient : virtual public UrlShortenServiceIf {
 public:
  UrlShortenServiceConcurrentClient(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> prot) {
    setProtocol(prot);
  }
  UrlShortenServiceConcurrentClient(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> iprot, apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> oprot) {
    setProtocol(iprot,oprot);
  }
 private:
  void setProtocol(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> prot) {
  setProtocol(prot,prot);
  }
  void setProtocol(apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> iprot, apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> oprot) {
    piprot_=iprot;
    poprot_=oprot;
    iprot_ = iprot.get();
    oprot_ = oprot.get();
  }
 public:
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> getInputProtocol() {
    return piprot_;
  }
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> getOutputProtocol() {
    return poprot_;
  }
  void UploadUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & urls, const std::map<std::string, std::string> & carrier);
  int32_t send_UploadUrls(const int64_t req_id, const std::vector<std::string> & urls, const std::map<std::string, std::string> & carrier);
  void recv_UploadUrls(UrlListRpcResponse& _return, const int32_t seqid);
  void GetExtendedUrls(UrlListRpcResponse& _return, const int64_t req_id, const std::vector<std::string> & shortened_urls, const std::map<std::string, std::string> & carrier);
  int32_t send_GetExtendedUrls(const int64_t req_id, const std::vector<std::string> & shortened_urls, const std::map<std::string, std::string> & carrier);
  void recv_GetExtendedUrls(UrlListRpcResponse& _return, const int32_t seqid);
 protected:
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> piprot_;
  apache::thrift::stdcxx::shared_ptr< ::apache::thrift::protocol::TProtocol> poprot_;
  ::apache::thrift::protocol::TProtocol* iprot_;
  ::apache::thrift::protocol::TProtocol* oprot_;
  ::apache::thrift::async::TConcurrentClientSyncInfo sync_;
};

#ifdef _MSC_VER
  #pragma warning( pop )
#endif

} // namespace

#endif
