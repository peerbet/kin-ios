// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: common/v4/model.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum APBCommonV4Commitment

/** Reference: https://docs.solana.com/apps/jsonrpc-api#configuring-state-commitment */
typedef GPB_ENUM(APBCommonV4Commitment) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  APBCommonV4Commitment_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** The node will query its most recent bank. */
  APBCommonV4Commitment_Recent = 0,

  /** The node will query the most recent bank having reached 1 confirmation. */
  APBCommonV4Commitment_Single = 1,

  /**
   * The node will query the most recent bank having reached `MAX_LOCKOUT_HISTORY`
   * confirmations on 'this' node.
   **/
  APBCommonV4Commitment_Root = 2,

  /**
   * The node will query the most recent bank confirmed by the clsuter as having
   * reached `MAX_LOCKOUT_HISTORY`.
   **/
  APBCommonV4Commitment_Max = 3,
};

GPBEnumDescriptor *APBCommonV4Commitment_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL APBCommonV4Commitment_IsValidValue(int32_t value);

#pragma mark - Enum APBCommonV4TransactionError_Reason

typedef GPB_ENUM(APBCommonV4TransactionError_Reason) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  APBCommonV4TransactionError_Reason_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  APBCommonV4TransactionError_Reason_None = 0,

  /**
   * The error could not be mapped by the service.
   *
   * In this situation, the error may be propogated out
   * band (i.e. via error status), or be looked up using
   * low level RPCs.
   **/
  APBCommonV4TransactionError_Reason_Unknown = 1,

  /** The transaction was missing a required signature. */
  APBCommonV4TransactionError_Reason_Unauthorized = 2,

  /**
   * Corresponds to an invalid sequence number in stellar,
   * and or a bad / expired blockhash in solana.
   **/
  APBCommonV4TransactionError_Reason_BadNonce = 3,

  /** Source did not have sufficient kin. */
  APBCommonV4TransactionError_Reason_InsufficientFunds = 4,

  /**
   * Indicates one of the accounts in the transaction is
   * invalid. Some possible reasons are be:
   *
   *   1. Account does not exist
   *   2. Account exists, but is not a token account
   *   3. Account exists, but is for the wrong token.
   **/
  APBCommonV4TransactionError_Reason_InvalidAccount = 5,
};

GPBEnumDescriptor *APBCommonV4TransactionError_Reason_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL APBCommonV4TransactionError_Reason_IsValidValue(int32_t value);

#pragma mark - APBCommonV4ModelRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface APBCommonV4ModelRoot : GPBRootObject
@end

#pragma mark - APBCommonV4SolanaAccountId

typedef GPB_ENUM(APBCommonV4SolanaAccountId_FieldNumber) {
  APBCommonV4SolanaAccountId_FieldNumber_Value = 1,
};

@interface APBCommonV4SolanaAccountId : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *value;

@end

#pragma mark - APBCommonV4TransactionId

typedef GPB_ENUM(APBCommonV4TransactionId_FieldNumber) {
  APBCommonV4TransactionId_FieldNumber_Value = 1,
};

@interface APBCommonV4TransactionId : GPBMessage

/**
 * Value is either a 32-byte transaction hash, or a 64-byte transaction signature.
 * Values that are neither 32 or 64 bytes are considered invalid.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *value;

@end

#pragma mark - APBCommonV4BlockHash

typedef GPB_ENUM(APBCommonV4BlockHash_FieldNumber) {
  APBCommonV4BlockHash_FieldNumber_Value = 1,
};

@interface APBCommonV4BlockHash : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *value;

@end

#pragma mark - APBCommonV4TransactionSignature

typedef GPB_ENUM(APBCommonV4TransactionSignature_FieldNumber) {
  APBCommonV4TransactionSignature_FieldNumber_Value = 1,
};

@interface APBCommonV4TransactionSignature : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *value;

@end

#pragma mark - APBCommonV4Transaction

typedef GPB_ENUM(APBCommonV4Transaction_FieldNumber) {
  APBCommonV4Transaction_FieldNumber_Value = 1,
};

@interface APBCommonV4Transaction : GPBMessage

/** Maximum size taken from: https://github.com/solana-labs/solana/blob/39b3ac6a8d29e14faa1de73d8b46d390ad41797b/sdk/src/packet.rs#L9-L13 */
@property(nonatomic, readwrite, copy, null_resettable) NSData *value;

@end

#pragma mark - APBCommonV4TransactionError

typedef GPB_ENUM(APBCommonV4TransactionError_FieldNumber) {
  APBCommonV4TransactionError_FieldNumber_Reason = 1,
  APBCommonV4TransactionError_FieldNumber_InstructionIndex = 2,
  APBCommonV4TransactionError_FieldNumber_Raw = 3,
};

@interface APBCommonV4TransactionError : GPBMessage

@property(nonatomic, readwrite) APBCommonV4TransactionError_Reason reason;

/**
 * If the transaction failed due to an instruction, the
 * instruction_index will be >= 0, corresponding to the
 * instruction that failed the transaction.
 *
 * Otherwise, the instruction_index will be negative.
 **/
@property(nonatomic, readwrite) int32_t instructionIndex;

/**
 * Raw is the raw error returned from the underlying RPC
 * mechanisms with Solana. There are no stability guarentees
 * to the contents of this field.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *raw;

@end

/**
 * Fetches the raw value of a @c APBCommonV4TransactionError's @c reason property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t APBCommonV4TransactionError_Reason_RawValue(APBCommonV4TransactionError *message);
/**
 * Sets the raw value of an @c APBCommonV4TransactionError's @c reason property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetAPBCommonV4TransactionError_Reason_RawValue(APBCommonV4TransactionError *message, int32_t value);

#pragma mark - APBCommonV4StellarTransaction

typedef GPB_ENUM(APBCommonV4StellarTransaction_FieldNumber) {
  APBCommonV4StellarTransaction_FieldNumber_ResultXdr = 2,
  APBCommonV4StellarTransaction_FieldNumber_EnvelopeXdr = 3,
};

@interface APBCommonV4StellarTransaction : GPBMessage

/** Contains the transaction result from when the transaction was submitted */
@property(nonatomic, readwrite, copy, null_resettable) NSData *resultXdr;

/** Contains the transaction envelope for the transaction. */
@property(nonatomic, readwrite, copy, null_resettable) NSData *envelopeXdr;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
