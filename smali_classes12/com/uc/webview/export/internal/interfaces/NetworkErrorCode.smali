.class public Lcom/uc/webview/export/internal/interfaces/NetworkErrorCode;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Reflection;
.end annotation


# static fields
.field public static final ATTACK_DNS_NEED_FORWARD:I = -0x37

.field public static final ATTACK_FORCE_NEED_FORWARD:I = -0x39

.field public static final ATTACK_HEADER_NEED_FORWARD:I = -0x38

.field public static final BACKGROUND_NET_CUT:I = -0x32

.field public static final BLOCK_APP:I = -0x47

.field public static final CONNECT_ERROR_PRELOAD:I = -0x3e

.field public static final ERROR:I = -0x3f

.field public static final ERROR_AUTH:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_DETAIL_OPCON_EXP:I = -0x40

.field public static final ERROR_DETAIL_RDREQ_EXP:I = -0x44

.field public static final ERROR_DETAIL_RDREQ_TH:I = -0x45

.field public static final ERROR_DETAIL_SDREQ_HTTP:I = -0x41

.field public static final ERROR_DETAIL_SDREQ_NP:I = -0x42

.field public static final ERROR_DETAIL_SDREQ_TH:I = -0x43

.field public static final ERROR_FAILED_SSL_CERTIFICATE:I = -0x10

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_LOOKUP:I = -0x2

.field public static final ERROR_PROXYAUTH:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa

.field public static final FILE_ERROR:I = -0xd

.field public static final FILE_NOT_FOUND_ERROR:I = -0xe

.field public static final GZ2_CHECK_ERROR:I = -0x33

.field public static final GZ2_CHECK_ERROR_NEED_FORWARD:I = -0x34

.field public static final GZ2_NO_BODY_NEED_FORWARD:I = -0x36

.field public static final GZ2_NO_GZHEADER_NEED_FORWARD:I = -0x35

.field public static final HTTP_STATUSCODE_408:I = -0x30

.field public static final INVALID_URL:I = -0x46

.field public static final NO_CACHE_NEED_FORWARD:I = -0x3a

.field public static final NO_NETWORK:I = -0x50

.field public static final OK:I = 0x0

.field public static final READ_ERROR_ILLEGAL_STATE:I = -0x2d

.field public static final READ_ERROR_IO:I = -0x2c

.field public static final READ_ERROR_PARSE:I = -0x2b

.field public static final READ_ERROR_SOCKET_ERROR:I = -0x2f

.field public static final READ_ERROR_SOCKET_TIMEOUT:I = -0x2e

.field public static final REQUEST_TOO_BIG:I = -0x31

.field public static final SEND_ERROR_ILLEGAL_STATE:I = -0x29

.field public static final SEND_ERROR_IO:I = -0x28

.field public static final TOO_MANY_REQUESTS_ERROR:I = -0xf

.field public static final UNKNOWN:I = -0x48

.field static final errorString:[Ljava/lang/String;

.field static final errorStringResources:[I

.field public static final httpErrorAuth_Id:I = 0x4

.field public static final httpErrorBadUrl_Id:I = 0xc

.field public static final httpErrorConnect_Id:I = 0x6

.field public static final httpErrorFailedSslHandshake_Id:I = 0xb

.field public static final httpErrorFileNotFound_Id:I = 0xe

.field public static final httpErrorFile_Id:I = 0xd

.field public static final httpErrorIO_Id:I = 0x7

.field public static final httpErrorLookup_Id:I = 0x2

.field public static final httpErrorOk_Id:I = 0x0

.field public static final httpErrorProxyAuth_Id:I = 0x5

.field public static final httpErrorRedirectLoop_Id:I = 0x9

.field public static final httpErrorSslCertError_Id:I = 0x10

.field public static final httpErrorTimeout_Id:I = 0x8

.field public static final httpErrorTooManyRequests_Id:I = 0xf

.field public static final httpErrorUnsupportedAuthScheme_Id:I = 0x3

.field public static final httpErrorUnsupportedScheme_Id:I = 0xa

.field public static final httpError_Id:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x11

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/webview/export/internal/interfaces/NetworkErrorCode;->errorStringResources:[I

    .line 125
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "httpErrorOk_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "httpError_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "httpErrorLookup_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "httpErrorUnsupportedAuthScheme_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "httpErrorAuth_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "httpErrorProxyAuth_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "httpErrorConnect_Id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "httpErrorIO_Id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "httpErrorTimeout_Id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "httpErrorRedirectLoop_Id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "httpErrorUnsupportedScheme_Id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "httpErrorFailedSslHandshake_Id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "httpErrorBadUrl_Id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "httpErrorFile_Id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "httpErrorFileNotFound_Id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "httpErrorTooManyRequests_Id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "httpErrorSslCertError_Id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/uc/webview/export/internal/interfaces/NetworkErrorCode;->errorString:[Ljava/lang/String;

    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
