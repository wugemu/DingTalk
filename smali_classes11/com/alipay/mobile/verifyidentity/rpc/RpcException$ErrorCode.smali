.class public interface abstract Lcom/alipay/mobile/verifyidentity/rpc/RpcException$ErrorCode;
.super Ljava/lang/Object;
.source "RpcException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/rpc/RpcException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorCode"
.end annotation


# static fields
.field public static final CLIENT_DESERIALIZER_ERROR:I = 0xa

.field public static final CLIENT_HANDLE_ERROR:I = 0x9

.field public static final CLIENT_INTERUPTED_ERROR:I = 0xd

.field public static final CLIENT_LOGIN_FAIL_ERROR:I = 0xb

.field public static final CLIENT_NETWORK_AUTH_ERROR:I = 0xf

.field public static final CLIENT_NETWORK_CACHE_ERROR:I = 0xe

.field public static final CLIENT_NETWORK_CONNECTION_ERROR:I = 0x4

.field public static final CLIENT_NETWORK_DNS_ERROR:I = 0x10

.field public static final CLIENT_NETWORK_ERROR:I = 0x7

.field public static final CLIENT_NETWORK_SCHEDULE_ERROR:I = 0x8

.field public static final CLIENT_NETWORK_SERVER_ERROR:I = 0x6

.field public static final CLIENT_NETWORK_SOCKET_ERROR:I = 0x5

.field public static final CLIENT_NETWORK_SSL_ERROR:I = 0x3

.field public static final CLIENT_NETWORK_UNAVAILABLE_ERROR:I = 0x2

.field public static final CLIENT_TRANSPORT_UNAVAILABAL_ERROR:I = 0x1

.field public static final CLIENT_UNKNOWN_ERROR:I = 0x0

.field public static final CLIENT_USER_CHANGE_ERROR:I = 0xc

.field public static final OK:I = 0x3e8

.field public static final SERVER_BIZEXCEPTION:I = 0x1a0a

.field public static final SERVER_CREATEPROXYERROR:I = 0xfa3

.field public static final SERVER_ILLEGALACCESS:I = 0x1773

.field public static final SERVER_ILLEGALARGUMENT:I = 0x1775

.field public static final SERVER_INVOKEEXCEEDLIMIT:I = 0x3ea

.field public static final SERVER_JSONPARSEREXCEPTION:I = 0x1774

.field public static final SERVER_METHODNOTFOUND:I = 0x1771

.field public static final SERVER_OPERATIONTYPEMISSED:I = 0xbb8

.field public static final SERVER_PARAMMISSING:I = 0x1772

.field public static final SERVER_PERMISSIONDENY:I = 0x3e9

.field public static final SERVER_REMOTEACCESSEXCEPTION:I = 0xfa2

.field public static final SERVER_REQUESTDATAMISSED:I = 0xbb9

.field public static final SERVER_REQUESTTIMEOUT:I = 0xfa1

.field public static final SERVER_SERVICENOTFOUND:I = 0x1770

.field public static final SERVER_SESSIONSTATUS:I = 0x7d0

.field public static final SERVER_UNKNOWERROR:I = 0x1388

.field public static final SERVER_VALUEINVALID:I = 0xbba

.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/RpcException$ErrorCode;->sInjector:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method
