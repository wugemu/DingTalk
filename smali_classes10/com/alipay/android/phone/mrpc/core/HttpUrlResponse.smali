.class public Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;
.super Lcom/alipay/android/phone/mrpc/core/Response;
.source "HttpUrlResponse.java"


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mCode:I

.field private mCreateTime:J

.field private mHeader:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

.field private mMsg:Ljava/lang/String;

.field private mPeriod:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V
    .locals 0
    .param p1, "header"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "resData"    # [B

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/Response;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mHeader:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    .line 35
    iput p2, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mCode:I

    .line 36
    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mMsg:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mResData:[B

    .line 38
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mCode:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mCreateTime:J

    return-wide v0
.end method

.method public getHeader()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mHeader:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mPeriod:J

    return-wide v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mCharset:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mCreateTime:J

    .line 92
    return-void
.end method

.method public setHeader(Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mHeader:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    .line 118
    return-void
.end method

.method public setPeriod(J)V
    .locals 1
    .param p1, "period"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/alipay/android/phone/mrpc/core/HttpUrlResponse;->mPeriod:J

    .line 110
    return-void
.end method
