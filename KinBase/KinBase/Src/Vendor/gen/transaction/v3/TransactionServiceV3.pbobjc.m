// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: transaction/v3/transaction_service.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "TransactionServiceV3.pbobjc.h"
#import "Validate.pbobjc.h"
#import "ModelV3.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - APBTransactionV3TransactionServiceRoot

@implementation APBTransactionV3TransactionServiceRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[ValidateRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - APBTransactionV3TransactionServiceRoot_FileDescriptor

static GPBFileDescriptor *APBTransactionV3TransactionServiceRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"kin.agora.transaction.v3"
                                                 objcPrefix:@"APBTransactionV3"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - APBTransactionV3GetHistoryRequest

@implementation APBTransactionV3GetHistoryRequest

@dynamic hasAccountId, accountId;
@dynamic hasCursor, cursor;
@dynamic direction;

typedef struct APBTransactionV3GetHistoryRequest__storage_ {
  uint32_t _has_storage_[1];
  APBTransactionV3GetHistoryRequest_Direction direction;
  APBCommonV3StellarAccountId *accountId;
  APBTransactionV3Cursor *cursor;
} APBTransactionV3GetHistoryRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3StellarAccountId),
        .number = APBTransactionV3GetHistoryRequest_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3GetHistoryRequest__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "cursor",
        .dataTypeSpecific.className = GPBStringifySymbol(APBTransactionV3Cursor),
        .number = APBTransactionV3GetHistoryRequest_FieldNumber_Cursor,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBTransactionV3GetHistoryRequest__storage_, cursor),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "direction",
        .dataTypeSpecific.enumDescFunc = APBTransactionV3GetHistoryRequest_Direction_EnumDescriptor,
        .number = APBTransactionV3GetHistoryRequest_FieldNumber_Direction,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBTransactionV3GetHistoryRequest__storage_, direction),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3GetHistoryRequest class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3GetHistoryRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBTransactionV3GetHistoryRequest_Direction_RawValue(APBTransactionV3GetHistoryRequest *message) {
  GPBDescriptor *descriptor = [APBTransactionV3GetHistoryRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3GetHistoryRequest_FieldNumber_Direction];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBTransactionV3GetHistoryRequest_Direction_RawValue(APBTransactionV3GetHistoryRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [APBTransactionV3GetHistoryRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3GetHistoryRequest_FieldNumber_Direction];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBTransactionV3GetHistoryRequest_Direction

GPBEnumDescriptor *APBTransactionV3GetHistoryRequest_Direction_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Asc\000Desc\000";
    static const int32_t values[] = {
        APBTransactionV3GetHistoryRequest_Direction_Asc,
        APBTransactionV3GetHistoryRequest_Direction_Desc,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBTransactionV3GetHistoryRequest_Direction)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBTransactionV3GetHistoryRequest_Direction_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBTransactionV3GetHistoryRequest_Direction_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBTransactionV3GetHistoryRequest_Direction_Asc:
    case APBTransactionV3GetHistoryRequest_Direction_Desc:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBTransactionV3GetHistoryResponse

@implementation APBTransactionV3GetHistoryResponse

@dynamic result;
@dynamic itemsArray, itemsArray_Count;

typedef struct APBTransactionV3GetHistoryResponse__storage_ {
  uint32_t _has_storage_[1];
  APBTransactionV3GetHistoryResponse_Result result;
  NSMutableArray *itemsArray;
} APBTransactionV3GetHistoryResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = APBTransactionV3GetHistoryResponse_Result_EnumDescriptor,
        .number = APBTransactionV3GetHistoryResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3GetHistoryResponse__storage_, result),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "itemsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(APBTransactionV3HistoryItem),
        .number = APBTransactionV3GetHistoryResponse_FieldNumber_ItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(APBTransactionV3GetHistoryResponse__storage_, itemsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3GetHistoryResponse class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3GetHistoryResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBTransactionV3GetHistoryResponse_Result_RawValue(APBTransactionV3GetHistoryResponse *message) {
  GPBDescriptor *descriptor = [APBTransactionV3GetHistoryResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3GetHistoryResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBTransactionV3GetHistoryResponse_Result_RawValue(APBTransactionV3GetHistoryResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [APBTransactionV3GetHistoryResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3GetHistoryResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBTransactionV3GetHistoryResponse_Result

GPBEnumDescriptor *APBTransactionV3GetHistoryResponse_Result_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Ok\000NotFound\000";
    static const int32_t values[] = {
        APBTransactionV3GetHistoryResponse_Result_Ok,
        APBTransactionV3GetHistoryResponse_Result_NotFound,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBTransactionV3GetHistoryResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBTransactionV3GetHistoryResponse_Result_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBTransactionV3GetHistoryResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBTransactionV3GetHistoryResponse_Result_Ok:
    case APBTransactionV3GetHistoryResponse_Result_NotFound:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBTransactionV3SubmitTransactionRequest

@implementation APBTransactionV3SubmitTransactionRequest

@dynamic envelopeXdr;
@dynamic hasInvoiceList, invoiceList;

typedef struct APBTransactionV3SubmitTransactionRequest__storage_ {
  uint32_t _has_storage_[1];
  NSData *envelopeXdr;
  APBCommonV3InvoiceList *invoiceList;
} APBTransactionV3SubmitTransactionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "envelopeXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3SubmitTransactionRequest_FieldNumber_EnvelopeXdr,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionRequest__storage_, envelopeXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "invoiceList",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3InvoiceList),
        .number = APBTransactionV3SubmitTransactionRequest_FieldNumber_InvoiceList,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionRequest__storage_, invoiceList),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3SubmitTransactionRequest class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3SubmitTransactionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBTransactionV3SubmitTransactionResponse

@implementation APBTransactionV3SubmitTransactionResponse

@dynamic result;
@dynamic invoiceErrorsArray, invoiceErrorsArray_Count;
@dynamic hasHash_p, hash_p;
@dynamic ledger;
@dynamic resultXdr;

typedef struct APBTransactionV3SubmitTransactionResponse__storage_ {
  uint32_t _has_storage_[1];
  APBTransactionV3SubmitTransactionResponse_Result result;
  NSMutableArray *invoiceErrorsArray;
  APBCommonV3TransactionHash *hash_p;
  NSData *resultXdr;
  int64_t ledger;
} APBTransactionV3SubmitTransactionResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = APBTransactionV3SubmitTransactionResponse_Result_EnumDescriptor,
        .number = APBTransactionV3SubmitTransactionResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionResponse__storage_, result),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "invoiceErrorsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3InvoiceError),
        .number = APBTransactionV3SubmitTransactionResponse_FieldNumber_InvoiceErrorsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionResponse__storage_, invoiceErrorsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "hash_p",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3TransactionHash),
        .number = APBTransactionV3SubmitTransactionResponse_FieldNumber_Hash_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionResponse__storage_, hash_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "ledger",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3SubmitTransactionResponse_FieldNumber_Ledger,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionResponse__storage_, ledger),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "resultXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3SubmitTransactionResponse_FieldNumber_ResultXdr,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(APBTransactionV3SubmitTransactionResponse__storage_, resultXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3SubmitTransactionResponse class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3SubmitTransactionResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBTransactionV3SubmitTransactionResponse_Result_RawValue(APBTransactionV3SubmitTransactionResponse *message) {
  GPBDescriptor *descriptor = [APBTransactionV3SubmitTransactionResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3SubmitTransactionResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBTransactionV3SubmitTransactionResponse_Result_RawValue(APBTransactionV3SubmitTransactionResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [APBTransactionV3SubmitTransactionResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3SubmitTransactionResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBTransactionV3SubmitTransactionResponse_Result

GPBEnumDescriptor *APBTransactionV3SubmitTransactionResponse_Result_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Ok\000Failed\000Rejected\000InvoiceError\000";
    static const int32_t values[] = {
        APBTransactionV3SubmitTransactionResponse_Result_Ok,
        APBTransactionV3SubmitTransactionResponse_Result_Failed,
        APBTransactionV3SubmitTransactionResponse_Result_Rejected,
        APBTransactionV3SubmitTransactionResponse_Result_InvoiceError,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBTransactionV3SubmitTransactionResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBTransactionV3SubmitTransactionResponse_Result_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBTransactionV3SubmitTransactionResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBTransactionV3SubmitTransactionResponse_Result_Ok:
    case APBTransactionV3SubmitTransactionResponse_Result_Failed:
    case APBTransactionV3SubmitTransactionResponse_Result_Rejected:
    case APBTransactionV3SubmitTransactionResponse_Result_InvoiceError:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBTransactionV3GetTransactionRequest

@implementation APBTransactionV3GetTransactionRequest

@dynamic hasTransactionHash, transactionHash;

typedef struct APBTransactionV3GetTransactionRequest__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV3TransactionHash *transactionHash;
} APBTransactionV3GetTransactionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "transactionHash",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3TransactionHash),
        .number = APBTransactionV3GetTransactionRequest_FieldNumber_TransactionHash,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3GetTransactionRequest__storage_, transactionHash),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3GetTransactionRequest class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3GetTransactionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBTransactionV3GetTransactionResponse

@implementation APBTransactionV3GetTransactionResponse

@dynamic state;
@dynamic ledger;
@dynamic hasItem, item;

typedef struct APBTransactionV3GetTransactionResponse__storage_ {
  uint32_t _has_storage_[1];
  APBTransactionV3GetTransactionResponse_State state;
  APBTransactionV3HistoryItem *item;
  int64_t ledger;
} APBTransactionV3GetTransactionResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "state",
        .dataTypeSpecific.enumDescFunc = APBTransactionV3GetTransactionResponse_State_EnumDescriptor,
        .number = APBTransactionV3GetTransactionResponse_FieldNumber_State,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3GetTransactionResponse__storage_, state),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "ledger",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3GetTransactionResponse_FieldNumber_Ledger,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBTransactionV3GetTransactionResponse__storage_, ledger),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "item",
        .dataTypeSpecific.className = GPBStringifySymbol(APBTransactionV3HistoryItem),
        .number = APBTransactionV3GetTransactionResponse_FieldNumber_Item,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBTransactionV3GetTransactionResponse__storage_, item),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3GetTransactionResponse class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3GetTransactionResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBTransactionV3GetTransactionResponse_State_RawValue(APBTransactionV3GetTransactionResponse *message) {
  GPBDescriptor *descriptor = [APBTransactionV3GetTransactionResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3GetTransactionResponse_FieldNumber_State];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBTransactionV3GetTransactionResponse_State_RawValue(APBTransactionV3GetTransactionResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [APBTransactionV3GetTransactionResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBTransactionV3GetTransactionResponse_FieldNumber_State];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBTransactionV3GetTransactionResponse_State

GPBEnumDescriptor *APBTransactionV3GetTransactionResponse_State_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Unknown\000Success\000";
    static const int32_t values[] = {
        APBTransactionV3GetTransactionResponse_State_Unknown,
        APBTransactionV3GetTransactionResponse_State_Success,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBTransactionV3GetTransactionResponse_State)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBTransactionV3GetTransactionResponse_State_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBTransactionV3GetTransactionResponse_State_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBTransactionV3GetTransactionResponse_State_Unknown:
    case APBTransactionV3GetTransactionResponse_State_Success:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBTransactionV3HistoryItem

@implementation APBTransactionV3HistoryItem

@dynamic hasHash_p, hash_p;
@dynamic resultXdr;
@dynamic envelopeXdr;
@dynamic hasCursor, cursor;
@dynamic hasInvoiceList, invoiceList;

typedef struct APBTransactionV3HistoryItem__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV3TransactionHash *hash_p;
  NSData *resultXdr;
  NSData *envelopeXdr;
  APBTransactionV3Cursor *cursor;
  APBCommonV3InvoiceList *invoiceList;
} APBTransactionV3HistoryItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "hash_p",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3TransactionHash),
        .number = APBTransactionV3HistoryItem_FieldNumber_Hash_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3HistoryItem__storage_, hash_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "resultXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3HistoryItem_FieldNumber_ResultXdr,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBTransactionV3HistoryItem__storage_, resultXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "envelopeXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3HistoryItem_FieldNumber_EnvelopeXdr,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBTransactionV3HistoryItem__storage_, envelopeXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "cursor",
        .dataTypeSpecific.className = GPBStringifySymbol(APBTransactionV3Cursor),
        .number = APBTransactionV3HistoryItem_FieldNumber_Cursor,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(APBTransactionV3HistoryItem__storage_, cursor),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "invoiceList",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3InvoiceList),
        .number = APBTransactionV3HistoryItem_FieldNumber_InvoiceList,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(APBTransactionV3HistoryItem__storage_, invoiceList),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3HistoryItem class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3HistoryItem__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBTransactionV3Cursor

@implementation APBTransactionV3Cursor

@dynamic value;

typedef struct APBTransactionV3Cursor__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBTransactionV3Cursor__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBTransactionV3Cursor_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBTransactionV3Cursor__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBTransactionV3Cursor class]
                                     rootClass:[APBTransactionV3TransactionServiceRoot class]
                                          file:APBTransactionV3TransactionServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBTransactionV3Cursor__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
