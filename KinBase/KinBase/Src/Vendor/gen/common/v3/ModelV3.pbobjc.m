// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: common/v3/model.proto

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

#import "ModelV3.pbobjc.h"
#import "Validate.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - APBCommonV3ModelRoot

@implementation APBCommonV3ModelRoot

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

#pragma mark - APBCommonV3ModelRoot_FileDescriptor

static GPBFileDescriptor *APBCommonV3ModelRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"kin.agora.common.v3"
                                                 objcPrefix:@"APBCommonV3"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - APBCommonV3StellarAccountId

@implementation APBCommonV3StellarAccountId

@dynamic value;

typedef struct APBCommonV3StellarAccountId__storage_ {
  uint32_t _has_storage_[1];
  NSString *value;
} APBCommonV3StellarAccountId__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3StellarAccountId_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV3StellarAccountId__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3StellarAccountId class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3StellarAccountId__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV3TransactionHash

@implementation APBCommonV3TransactionHash

@dynamic value;

typedef struct APBCommonV3TransactionHash__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV3TransactionHash__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3TransactionHash_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV3TransactionHash__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3TransactionHash class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3TransactionHash__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV3InvoiceHash

@implementation APBCommonV3InvoiceHash

@dynamic value;

typedef struct APBCommonV3InvoiceHash__storage_ {
  uint32_t _has_storage_[1];
  NSData *value;
} APBCommonV3InvoiceHash__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3InvoiceHash_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV3InvoiceHash__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3InvoiceHash class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3InvoiceHash__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV3Invoice

@implementation APBCommonV3Invoice

@dynamic itemsArray, itemsArray_Count;

typedef struct APBCommonV3Invoice__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *itemsArray;
} APBCommonV3Invoice__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "itemsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3Invoice_LineItem),
        .number = APBCommonV3Invoice_FieldNumber_ItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(APBCommonV3Invoice__storage_, itemsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3Invoice class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3Invoice__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV3Invoice_LineItem

@implementation APBCommonV3Invoice_LineItem

@dynamic title;
@dynamic description_p;
@dynamic amount;
@dynamic sku;

typedef struct APBCommonV3Invoice_LineItem__storage_ {
  uint32_t _has_storage_[1];
  NSString *title;
  NSString *description_p;
  NSData *sku;
  int64_t amount;
} APBCommonV3Invoice_LineItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "title",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3Invoice_LineItem_FieldNumber_Title,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV3Invoice_LineItem__storage_, title),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3Invoice_LineItem_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBCommonV3Invoice_LineItem__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "amount",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3Invoice_LineItem_FieldNumber_Amount,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBCommonV3Invoice_LineItem__storage_, amount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "sku",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3Invoice_LineItem_FieldNumber_Sku,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(APBCommonV3Invoice_LineItem__storage_, sku),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3Invoice_LineItem class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3Invoice_LineItem__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(APBCommonV3Invoice)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV3InvoiceList

@implementation APBCommonV3InvoiceList

@dynamic invoicesArray, invoicesArray_Count;

typedef struct APBCommonV3InvoiceList__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *invoicesArray;
} APBCommonV3InvoiceList__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "invoicesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3Invoice),
        .number = APBCommonV3InvoiceList_FieldNumber_InvoicesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(APBCommonV3InvoiceList__storage_, invoicesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3InvoiceList class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3InvoiceList__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - APBCommonV3InvoiceError

@implementation APBCommonV3InvoiceError

@dynamic opIndex;
@dynamic hasInvoice, invoice;
@dynamic reason;

typedef struct APBCommonV3InvoiceError__storage_ {
  uint32_t _has_storage_[1];
  uint32_t opIndex;
  APBCommonV3InvoiceError_Reason reason;
  APBCommonV3Invoice *invoice;
} APBCommonV3InvoiceError__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "opIndex",
        .dataTypeSpecific.className = NULL,
        .number = APBCommonV3InvoiceError_FieldNumber_OpIndex,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(APBCommonV3InvoiceError__storage_, opIndex),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "invoice",
        .dataTypeSpecific.className = GPBStringifySymbol(APBCommonV3Invoice),
        .number = APBCommonV3InvoiceError_FieldNumber_Invoice,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(APBCommonV3InvoiceError__storage_, invoice),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "reason",
        .dataTypeSpecific.enumDescFunc = APBCommonV3InvoiceError_Reason_EnumDescriptor,
        .number = APBCommonV3InvoiceError_FieldNumber_Reason,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(APBCommonV3InvoiceError__storage_, reason),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[APBCommonV3InvoiceError class]
                                     rootClass:[APBCommonV3ModelRoot class]
                                          file:APBCommonV3ModelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(APBCommonV3InvoiceError__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t APBCommonV3InvoiceError_Reason_RawValue(APBCommonV3InvoiceError *message) {
  GPBDescriptor *descriptor = [APBCommonV3InvoiceError descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBCommonV3InvoiceError_FieldNumber_Reason];
  return GPBGetMessageInt32Field(message, field);
}

void SetAPBCommonV3InvoiceError_Reason_RawValue(APBCommonV3InvoiceError *message, int32_t value) {
  GPBDescriptor *descriptor = [APBCommonV3InvoiceError descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:APBCommonV3InvoiceError_FieldNumber_Reason];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum APBCommonV3InvoiceError_Reason

GPBEnumDescriptor *APBCommonV3InvoiceError_Reason_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Unknown\000AlreadyPaid\000WrongDestination\000Sku"
        "NotFound\000";
    static const int32_t values[] = {
        APBCommonV3InvoiceError_Reason_Unknown,
        APBCommonV3InvoiceError_Reason_AlreadyPaid,
        APBCommonV3InvoiceError_Reason_WrongDestination,
        APBCommonV3InvoiceError_Reason_SkuNotFound,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(APBCommonV3InvoiceError_Reason)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:APBCommonV3InvoiceError_Reason_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL APBCommonV3InvoiceError_Reason_IsValidValue(int32_t value__) {
  switch (value__) {
    case APBCommonV3InvoiceError_Reason_Unknown:
    case APBCommonV3InvoiceError_Reason_AlreadyPaid:
    case APBCommonV3InvoiceError_Reason_WrongDestination:
    case APBCommonV3InvoiceError_Reason_SkuNotFound:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
