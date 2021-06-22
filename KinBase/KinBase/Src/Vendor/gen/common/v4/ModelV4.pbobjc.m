// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: common/v4/model.proto

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

#import "ModelV4.pbobjc.h"
#import "Validate.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - APBCommonV4ModelRoot

@implementation APBCommonV4ModelRoot

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

#pragma mark - APBCommonV4ModelRoot_FileDescriptor

static GPBFileDescriptor *APBCommonV4ModelRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"kin.agora.common.v4"
                                                 objcPrefix:@"APBCommonV4"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum APBCommonV4Commitment

GPBEnumDescriptor *APBCommonV4Commitment_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Recent\000Single\000Root\000Max\000";
    static const int32_t values[] = {
        APBCommonV4Commitment_Recent,
        APBCommonV4Commitment_Single,
        APBCommonV4Commitment_Root,
        APBCommonV4Commitment_Max,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBCommonV4Commitment)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBCommonV4Commitment_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBCommonV4Commitment_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBCommonV4Commitment_Recent:
    case APBCommonV4Commitment_Single:
    case APBCommonV4Commitment_Root:
    case APBCommonV4Commitment_Max:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBCommonV4SolanaAccountId

@implementation APBCommonV4SolanaAccountId

@dynamic value;

typedef struct APBCommonV4SolanaAccountId__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV4SolanaAccountId__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4SolanaAccountId_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4SolanaAccountId__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4SolanaAccountId class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4SolanaAccountId__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV4TransactionId

@implementation APBCommonV4TransactionId

@dynamic value;

typedef struct APBCommonV4TransactionId__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV4TransactionId__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4TransactionId_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4TransactionId__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4TransactionId class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4TransactionId__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV4Blockhash

@implementation APBCommonV4Blockhash

@dynamic value;

typedef struct APBCommonV4Blockhash__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV4Blockhash__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4Blockhash_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4Blockhash__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4Blockhash class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4Blockhash__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV4TransactionSignature

@implementation APBCommonV4TransactionSignature

@dynamic value;

typedef struct APBCommonV4TransactionSignature__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV4TransactionSignature__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4TransactionSignature_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4TransactionSignature__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4TransactionSignature class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4TransactionSignature__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV4Transaction

@implementation APBCommonV4Transaction

@dynamic value;

typedef struct APBCommonV4Transaction__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV4Transaction__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4Transaction_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4Transaction__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4Transaction class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4Transaction__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV4TransactionError

@implementation APBCommonV4TransactionError

@dynamic reason;
@dynamic instructionIndex;
@dynamic raw;

typedef struct APBCommonV4TransactionError__storage_ {
  uint32_t _has_storage_[1];
  APBCommonV4TransactionError_Reason reason;
  int32_t instructionIndex;
  NSData *raw;
} APBCommonV4TransactionError__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "reason",
        .dataTypeSpecific.enumDescFunc = APBCommonV4TransactionError_Reason_EnumDescriptor,
        .number = APBCommonV4TransactionError_FieldNumber_Reason,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4TransactionError__storage_, reason),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "instructionIndex",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4TransactionError_FieldNumber_InstructionIndex,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBCommonV4TransactionError__storage_, instructionIndex),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "raw",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4TransactionError_FieldNumber_Raw,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBCommonV4TransactionError__storage_, raw),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4TransactionError class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4TransactionError__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBCommonV4TransactionError_Reason_RawValue(APBCommonV4TransactionError *message) {
  GPBDescriptor *descriptor = [APBCommonV4TransactionError descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBCommonV4TransactionError_FieldNumber_Reason];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBCommonV4TransactionError_Reason_RawValue(APBCommonV4TransactionError *message, int32_t value) {
  GPBDescriptor *descriptor = [APBCommonV4TransactionError descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBCommonV4TransactionError_FieldNumber_Reason];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBCommonV4TransactionError_Reason

GPBEnumDescriptor *APBCommonV4TransactionError_Reason_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "None\000Unknown\000Unauthorized\000BadNonce\000Insuf"
        "ficientFunds\000InvalidAccount\000";
    static const int32_t values[] = {
        APBCommonV4TransactionError_Reason_None,
        APBCommonV4TransactionError_Reason_Unknown,
        APBCommonV4TransactionError_Reason_Unauthorized,
        APBCommonV4TransactionError_Reason_BadNonce,
        APBCommonV4TransactionError_Reason_InsufficientFunds,
        APBCommonV4TransactionError_Reason_InvalidAccount,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBCommonV4TransactionError_Reason)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBCommonV4TransactionError_Reason_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBCommonV4TransactionError_Reason_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBCommonV4TransactionError_Reason_None:
    case APBCommonV4TransactionError_Reason_Unknown:
    case APBCommonV4TransactionError_Reason_Unauthorized:
    case APBCommonV4TransactionError_Reason_BadNonce:
    case APBCommonV4TransactionError_Reason_InsufficientFunds:
    case APBCommonV4TransactionError_Reason_InvalidAccount:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - APBCommonV4StellarTransaction

@implementation APBCommonV4StellarTransaction

@dynamic resultXdr;
@dynamic envelopeXdr;

typedef struct APBCommonV4StellarTransaction__storage_ {
  uint32_t _has_storage_[1];
  NSData *resultXdr;
  NSData *envelopeXdr;
} APBCommonV4StellarTransaction__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "resultXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4StellarTransaction_FieldNumber_ResultXdr,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV4StellarTransaction__storage_, resultXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "envelopeXdr",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV4StellarTransaction_FieldNumber_EnvelopeXdr,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBCommonV4StellarTransaction__storage_, envelopeXdr),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV4StellarTransaction class]
                                     rootClass:[APBCommonV4ModelRoot class]
                                          file:APBCommonV4ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV4StellarTransaction__storage_)
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
