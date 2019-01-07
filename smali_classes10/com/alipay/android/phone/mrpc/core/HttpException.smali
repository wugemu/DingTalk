.class public Lcom/alipay/android/phone/mrpc/core/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field public static final NETWORK_AUTH_ERROR:I = 0x8

.field public static final NETWORK_CONNECTION_EXCEPTION:I = 0x3

.field public static final NETWORK_DNS_ERROR:I = 0x9

.field public static final NETWORK_IO_EXCEPTION:I = 0x6

.field public static final NETWORK_SCHEDULE_ERROR:I = 0x7

.field public static final NETWORK_SERVER_EXCEPTION:I = 0x5

.field public static final NETWORK_SOCKET_EXCEPTION:I = 0x4

.field public static final NETWORK_SSL_EXCEPTION:I = 0x2

.field public static final NETWORK_UNAVAILABLE:I = 0x1

.field public static final NETWORK_UNKNOWN_ERROR:I = 0x0

.field private static final serialVersionUID:J = -0x57b72c3493a914ccL


# instance fields
.field private mCode:I

.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/HttpException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpException;->mCode:I

    .line 79
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/HttpException;->mMsg:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpException;->mCode:I

    .line 69
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpException;->mMsg:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Ljava/lang/Integer;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Http Transport error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    if-eqz p0, :cond_0

    .line 104
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpException;->mCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpException;->mMsg:Ljava/lang/String;

    return-object v0
.end method
