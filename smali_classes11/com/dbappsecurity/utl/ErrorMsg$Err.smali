.class public final enum Lcom/dbappsecurity/utl/ErrorMsg$Err;
.super Ljava/lang/Enum;
.source "ErrorMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dbappsecurity/utl/ErrorMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Err"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dbappsecurity/utl/ErrorMsg$Err;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum DomainNameSwitching:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum GetNonceErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum IMEI_Err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum LocMsgDecrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum LocMsgEncrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum ReleaseVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum ServerResponseErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum SetVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum TemporaryEncryptKeysErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum UpdateKeysDTGetCodeProxyEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum UpdateKeysDTGetCodeProxyFailed:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum UpdateKeysDTGetCodeProxyResponseErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum UpdateKeysDTHttpRequestProxyFailed:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum decryptKey_Format_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum decryptKey_Format_msgSize_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum encryptDataHelper_isloadgong:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum load_so_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

.field public static final enum so_initialization:Lcom/dbappsecurity/utl/ErrorMsg$Err;


# instance fields
.field private code:I

.field private errMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SecretkeyErr"

    const/16 v2, -0x3a9a

    const-string/jumbo v3, "The secret key is wrong "

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 13
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SecretkeyNotExist"

    const/16 v2, -0x3a9b

    const-string/jumbo v3, "The secret key does not exist "

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 15
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "EncryptMsgErr"

    const/16 v2, -0x3a9d

    const-string/jumbo v3, "Encryption failed "

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 16
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "DecryptMsgErr"

    const/16 v2, -0x3a9e

    const-string/jumbo v3, "Decryption failed "

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 18
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "TemporaryEncryptKeysErr"

    const/16 v2, -0x3a9f

    const-string/jumbo v3, "Key temporary or update decryption failed "

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->TemporaryEncryptKeysErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 21
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "ServerResponseErr"

    const/4 v2, 0x5

    const/16 v3, -0x3aa0

    const-string/jumbo v4, "Server Return data resolution failed  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->ServerResponseErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 24
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "MethodParamsErr"

    const/4 v2, 0x6

    const/16 v3, -0x4269

    const-string/jumbo v4, "Method parameter error "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 25
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "IMEI_Err"

    const/4 v2, 0x7

    const/16 v3, -0x426a

    const-string/jumbo v4, "IMEI access failed "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->IMEI_Err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 26
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SD_PathInvalid"

    const/16 v2, 0x8

    const/16 v3, -0x426b

    const-string/jumbo v4, "invalid path "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 27
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "load_so_err"

    const/16 v2, 0x9

    const/16 v3, -0x426c

    const-string/jumbo v4, " So file failed to load "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 28
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "so_initialization"

    const/16 v2, 0xa

    const/16 v3, -0x426d

    const-string/jumbo v4, "initialization failed  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->so_initialization:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 29
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "UnsupportedEncodingErr"

    const/16 v2, 0xb

    const/16 v3, -0x426e

    const-string/jumbo v4, "Byte conversion failed  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 30
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "Context_PathInvalid"

    const/16 v2, 0xc

    const/16 v3, -0x426f

    const-string/jumbo v4, "invalid context "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 31
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "load_so_loading_err"

    const/16 v2, 0xd

    const/16 v3, -0x4270

    const-string/jumbo v4, "So is loading "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 34
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SecretkeyUpdata"

    const/16 v2, 0xe

    const/16 v3, -0x42cf

    const-string/jumbo v4, "Force update key "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 35
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "AppkeyVersOrMathematicalVersErr"

    const/16 v2, 0xf

    const/16 v3, -0x42d0

    const-string/jumbo v4, "The secret key or algorithm version is invalid  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 38
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "decryptKey_Format_is_not_valid"

    const/16 v2, 0x10

    const/16 v3, -0x4331

    const-string/jumbo v4, "decrypt Data format is not valid "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 39
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "decryptKey_params_format_err"

    const/16 v2, 0x11

    const/16 v3, -0x4332

    const-string/jumbo v4, "decrypt  Parameter format error  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 40
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "decryptKey_Format_msgSize_is_not_valid"

    const/16 v2, 0x12

    const/16 v3, -0x4333

    const-string/jumbo v4, "Decryption true content length error "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_msgSize_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 43
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SecretKeyEncryption"

    const/16 v2, 0x13

    const/16 v3, -0x4397

    const-string/jumbo v4, "The secret key encryption failed "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 44
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "onLocRefreshKeyHtpParamsEmpty"

    const/16 v2, 0x14

    const/16 v3, -0x4398

    const-string/jumbo v4, "Server to return data error "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 45
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SaveSingleParseKeyParameterErr"

    const/16 v2, 0x15

    const/16 v3, -0x4399

    const-string/jumbo v4, "Save a key error "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 48
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "KeyLoading"

    const/16 v2, 0x16

    const/16 v3, -0x43f9

    const-string/jumbo v4, "Key loading"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 49
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "DomainNameSwitching"

    const/16 v2, 0x17

    const/16 v3, -0x43fa

    const-string/jumbo v4, "Domain switching ...... "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainNameSwitching:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 52
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "LocMsgEncrypt"

    const/16 v2, 0x18

    const/16 v3, -0x445d

    const-string/jumbo v4, "Local encryption failed "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgEncrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 53
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "LocMsgDecrypt"

    const/16 v2, 0x19

    const/16 v3, -0x445e

    const-string/jumbo v4, "Local decryption password failed "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgDecrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 54
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "LocDataEmpty"

    const/16 v2, 0x1a

    const/16 v3, -0x445f

    const-string/jumbo v4, "Local data does not exist "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 57
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "DomainUrlDecryptErr"

    const/16 v2, 0x1b

    const/16 v3, -0x4525

    const-string/jumbo v4, "Privatization, domain name acquisition failure  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 59
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "encryptDataHelper_isloadgong"

    const/16 v2, 0x1c

    const/16 v3, -0x4589

    const-string/jumbo v4, "File encryption... "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->encryptDataHelper_isloadgong:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 61
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "GetNonceErr"

    const/16 v2, 0x1d

    const/16 v3, -0x45ed

    const-string/jumbo v4, "Get nonce error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->GetNonceErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 63
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "UpdateKeysDTGetCodeProxyEmpty"

    const/16 v2, 0x1e

    const/16 v3, -0x4651

    const-string/jumbo v4, "Update keys failed, DTGetCodeProxy not initialized"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTGetCodeProxyEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 64
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "UpdateKeysDTGetCodeProxyFailed"

    const/16 v2, 0x1f

    const/16 v3, -0x4652

    const-string/jumbo v4, "Update keys failed, DTGetCodeProxy getCode failed  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTGetCodeProxyFailed:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 65
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "UpdateKeysDTGetCodeProxyResponseErr"

    const/16 v2, 0x20

    const/16 v3, -0x4653

    const-string/jumbo v4, "Update keys failed, DTGetCodeProxy getCode response err  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTGetCodeProxyResponseErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 66
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "UpdateKeysDTHttpRequestProxyFailed"

    const/16 v2, 0x21

    const/16 v3, -0x4654

    const-string/jumbo v4, "Update keys failed, DTHttpRequestProxy request failed  "

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTHttpRequestProxyFailed:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 68
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "SetVoipKeyErr"

    const/16 v2, 0x22

    const/16 v3, -0x4a39

    const-string/jumbo v4, "Set voip key error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SetVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 70
    new-instance v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v1, "ReleaseVoipKeyErr"

    const/16 v2, 0x23

    const/16 v3, -0x4a9d

    const-string/jumbo v4, "Release voip key error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->ReleaseVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 8
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/dbappsecurity/utl/ErrorMsg$Err;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->EncryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DecryptMsgErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->TemporaryEncryptKeysErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->ServerResponseErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->IMEI_Err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->so_initialization:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UnsupportedEncodingErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->Context_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_loading_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_params_format_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->decryptKey_Format_msgSize_is_not_valid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainNameSwitching:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgEncrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocMsgDecrypt:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->LocDataEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->encryptDataHelper_isloadgong:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->GetNonceErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTGetCodeProxyEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTGetCodeProxyFailed:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTGetCodeProxyResponseErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->UpdateKeysDTHttpRequestProxyFailed:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SetVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->ReleaseVoipKeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->$VALUES:[Lcom/dbappsecurity/utl/ErrorMsg$Err;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p4, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->errMsg:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->code:I

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dbappsecurity/utl/ErrorMsg$Err;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;

    return-object v0
.end method

.method public static values()[Lcom/dbappsecurity/utl/ErrorMsg$Err;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->$VALUES:[Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v0}, [Lcom/dbappsecurity/utl/ErrorMsg$Err;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dbappsecurity/utl/ErrorMsg$Err;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->code:I

    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->code:I

    .line 100
    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dbappsecurity/utl/ErrorMsg$Err;->errMsg:Ljava/lang/String;

    .line 92
    return-void
.end method
