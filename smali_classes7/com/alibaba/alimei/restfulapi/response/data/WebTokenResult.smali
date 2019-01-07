.class public Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;
.super Ljava/lang/Object;
.source "WebTokenResult.java"


# instance fields
.field private expireTime:J

.field private webToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;->expireTime:J

    return-wide v0
.end method

.method public getWebToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;->webToken:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireTime(J)V
    .locals 1
    .param p1, "expireTime"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;->expireTime:J

    .line 35
    return-void
.end method

.method public setWebToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "webToken"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/WebTokenResult;->webToken:Ljava/lang/String;

    .line 27
    return-void
.end method
