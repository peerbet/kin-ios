// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: account/v3/account_service.proto

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

#import "account/v3/AccountService.pbobjc.h"
#import "validate/Validate.pbobjc.h"
#import "common/v3/Model.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - APBAccountV3AccountServiceRoot

@implementation APBAccountV3AccountServiceRoot

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

#pragma mark - APBAccountV3AccountServiceRoot_FileDescriptor

static GPBFileDescriptor *APBAccountV3AccountServiceRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"kin.agora.account.v3"
                                                 objcPrefix:@"APBAccountV3"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - APBAccountV3AccountInfo

@implementation APBAccountV3AccountInfo

@dynamic hasAccountId, accountId;
@dynamic sequenceNumber;
@dynamic balance;

typedef struct APBAccountV3AccountInfo__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV3StellarAccountId *accountId;
  int64_t sequenceNumber;
  int64_t balance;
} APBAccountV3AccountInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3StellarAccountId),
        .number = APBAccountV3AccountInfo_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3AccountInfo__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sequenceNumber",
        .dataTypeSpecific.className = NULL,
        .number = APBAccountV3AccountInfo_FieldNumber_SequenceNumber,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBAccountV3AccountInfo__storage_, sequenceNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "balance",
        .dataTypeSpecific.className = NULL,
        .number = APBAccountV3AccountInfo_FieldNumber_Balance,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBAccountV3AccountInfo__storage_, balance),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3AccountInfo class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3AccountInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBAccountV3CreateAccountRequest

@implementation APBAccountV3CreateAccountRequest

@dynamic hasAccountId, accountId;

typedef struct APBAccountV3CreateAccountRequest__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV3StellarAccountId *accountId;
} APBAccountV3CreateAccountRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3StellarAccountId),
        .number = APBAccountV3CreateAccountRequest_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3CreateAccountRequest__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3CreateAccountRequest class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3CreateAccountRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBAccountV3CreateAccountResponse

@implementation APBAccountV3CreateAccountResponse

@dynamic result;
@dynamic hasAccountInfo, accountInfo;

typedef struct APBAccountV3CreateAccountResponse__storage_ {
  uint32_t _has_storage_[1];
  APBAccountV3CreateAccountResponse_Result result;
  APBAccountV3AccountInfo *accountInfo;
} APBAccountV3CreateAccountResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = APBAccountV3CreateAccountResponse_Result_EnumDescriptor,
        .number = APBAccountV3CreateAccountResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3CreateAccountResponse__storage_, result),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "accountInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(APBAccountV3AccountInfo),
        .number = APBAccountV3CreateAccountResponse_FieldNumber_AccountInfo,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBAccountV3CreateAccountResponse__storage_, accountInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3CreateAccountResponse class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3CreateAccountResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBAccountV3CreateAccountResponse_Result_RawValue(APBAccountV3CreateAccountResponse *message) {
  GPBDescriptor *descriptor = [APBAccountV3CreateAccountResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBAccountV3CreateAccountResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBAccountV3CreateAccountResponse_Result_RawValue(APBAccountV3CreateAccountResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [APBAccountV3CreateAccountResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBAccountV3CreateAccountResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBAccountV3CreateAccountResponse_Result

GPBEnumDescriptor *APBAccountV3CreateAccountResponse_Result_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Ok\000Exists\000";
    static const int32_t values[] = {
        APBAccountV3CreateAccountResponse_Result_Ok,
        APBAccountV3CreateAccountResponse_Result_Exists,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBAccountV3CreateAccountResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBAccountV3CreateAccountResponse_Result_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBAccountV3CreateAccountResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBAccountV3CreateAccountResponse_Result_Ok:
    case APBAccountV3CreateAccountResponse_Result_Exists:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBAccountV3GetAccountInfoRequest

@implementation APBAccountV3GetAccountInfoRequest

@dynamic hasAccountId, accountId;

typedef struct APBAccountV3GetAccountInfoRequest__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV3StellarAccountId *accountId;
} APBAccountV3GetAccountInfoRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3StellarAccountId),
        .number = APBAccountV3GetAccountInfoRequest_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3GetAccountInfoRequest__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3GetAccountInfoRequest class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3GetAccountInfoRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBAccountV3GetAccountInfoResponse

@implementation APBAccountV3GetAccountInfoResponse

@dynamic result;
@dynamic hasAccountInfo, accountInfo;

typedef struct APBAccountV3GetAccountInfoResponse__storage_ {
  uint32_t _has_storage_[1];
  APBAccountV3GetAccountInfoResponse_Result result;
  APBAccountV3AccountInfo *accountInfo;
} APBAccountV3GetAccountInfoResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = APBAccountV3GetAccountInfoResponse_Result_EnumDescriptor,
        .number = APBAccountV3GetAccountInfoResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3GetAccountInfoResponse__storage_, result),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "accountInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(APBAccountV3AccountInfo),
        .number = APBAccountV3GetAccountInfoResponse_FieldNumber_AccountInfo,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBAccountV3GetAccountInfoResponse__storage_, accountInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3GetAccountInfoResponse class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3GetAccountInfoResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBAccountV3GetAccountInfoResponse_Result_RawValue(APBAccountV3GetAccountInfoResponse *message) {
  GPBDescriptor *descriptor = [APBAccountV3GetAccountInfoResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBAccountV3GetAccountInfoResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBAccountV3GetAccountInfoResponse_Result_RawValue(APBAccountV3GetAccountInfoResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [APBAccountV3GetAccountInfoResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBAccountV3GetAccountInfoResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBAccountV3GetAccountInfoResponse_Result

GPBEnumDescriptor *APBAccountV3GetAccountInfoResponse_Result_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Ok\000NotFound\000";
    static const int32_t values[] = {
        APBAccountV3GetAccountInfoResponse_Result_Ok,
        APBAccountV3GetAccountInfoResponse_Result_NotFound,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBAccountV3GetAccountInfoResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBAccountV3GetAccountInfoResponse_Result_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBAccountV3GetAccountInfoResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBAccountV3GetAccountInfoResponse_Result_Ok:
    case APBAccountV3GetAccountInfoResponse_Result_NotFound:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBAccountV3GetEventsRequest

@implementation APBAccountV3GetEventsRequest

@dynamic hasAccountId, accountId;

typedef struct APBAccountV3GetEventsRequest__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV3StellarAccountId *accountId;
} APBAccountV3GetEventsRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountId",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3StellarAccountId),
        .number = APBAccountV3GetEventsRequest_FieldNumber_AccountId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3GetEventsRequest__storage_, accountId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3GetEventsRequest class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3GetEventsRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBAccountV3Events

@implementation APBAccountV3Events

@dynamic result;
@dynamic eventsArray, eventsArray_Count;

typedef struct APBAccountV3Events__storage_ {
  uint32_t _has_storage_[1];
  APBAccountV3Events_Result result;
  NSMutableArray *eventsArray;
} APBAccountV3Events__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = APBAccountV3Events_Result_EnumDescriptor,
        .number = APBAccountV3Events_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3Events__storage_, result),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "eventsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(APBAccountV3Event),
        .number = APBAccountV3Events_FieldNumber_EventsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(APBAccountV3Events__storage_, eventsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3Events class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3Events__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBAccountV3Events_Result_RawValue(APBAccountV3Events *message) {
  GPBDescriptor *descriptor = [APBAccountV3Events descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBAccountV3Events_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBAccountV3Events_Result_RawValue(APBAccountV3Events *message, int32_t value) {
  GPBDescriptor *descriptor = [APBAccountV3Events descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBAccountV3Events_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBAccountV3Events_Result

GPBEnumDescriptor *APBAccountV3Events_Result_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Ok\000NotFound\000";
    static const int32_t values[] = {
        APBAccountV3Events_Result_Ok,
        APBAccountV3Events_Result_NotFound,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBAccountV3Events_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBAccountV3Events_Result_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBAccountV3Events_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBAccountV3Events_Result_Ok:
    case APBAccountV3Events_Result_NotFound:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBAccountV3Event

@implementation APBAccountV3Event

@dynamic typeOneOfCase;
@dynamic accountUpdateEvent;
@dynamic transactionEvent;

typedef struct APBAccountV3Event__storage_ {
  uint32_t _has_storage_[2];
  APBAccountV3AccountUpdateEvent *accountUpdateEvent;
  APBAccountV3TransactionEvent *transactionEvent;
} APBAccountV3Event__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountUpdateEvent",
        .dataTypeSpecific.className = GPBStringifySymbol(APBAccountV3AccountUpdateEvent),
        .number = APBAccountV3Event_FieldNumber_AccountUpdateEvent,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(APBAccountV3Event__storage_, accountUpdateEvent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "transactionEvent",
        .dataTypeSpecific.className = GPBStringifySymbol(APBAccountV3TransactionEvent),
        .number = APBAccountV3Event_FieldNumber_TransactionEvent,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(APBAccountV3Event__storage_, transactionEvent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3Event class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3Event__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "type",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void APBAccountV3Event_ClearTypeOneOfCase(APBAccountV3Event *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - APBAccountV3AccountUpdateEvent

@implementation APBAccountV3AccountUpdateEvent

@dynamic hasAccountInfo, accountInfo;

typedef struct APBAccountV3AccountUpdateEvent__storage_ {
  uint32_t _has_storage_[1];
  APBAccountV3AccountInfo *accountInfo;
} APBAccountV3AccountUpdateEvent__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountInfo",
        .dataTypeSpecific.className = GPBStringifySymbol(APBAccountV3AccountInfo),
        .number = APBAccountV3AccountUpdateEvent_FieldNumber_AccountInfo,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3AccountUpdateEvent__storage_, accountInfo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3AccountUpdateEvent class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3AccountUpdateEvent__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBAccountV3TransactionEvent

@implementation APBAccountV3TransactionEvent

@dynamic envelopeXdr;
@dynamic resultXdr;

typedef struct APBAccountV3TransactionEvent__storage_ {
  uint32_t _has_storage_[1];
  NSData *envelopeXdr;
  NSData *resultXdr;
} APBAccountV3TransactionEvent__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "envelopeXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBAccountV3TransactionEvent_FieldNumber_EnvelopeXdr,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBAccountV3TransactionEvent__storage_, envelopeXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "resultXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBAccountV3TransactionEvent_FieldNumber_ResultXdr,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBAccountV3TransactionEvent__storage_, resultXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBAccountV3TransactionEvent class]
                                     rootClass:[APBAccountV3AccountServiceRoot class]
                                          file:APBAccountV3AccountServiceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBAccountV3TransactionEvent__storage_)
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
