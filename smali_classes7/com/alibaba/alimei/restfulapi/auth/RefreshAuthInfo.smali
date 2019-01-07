.class public Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;
.super Ljava/lang/Object;
.source "RefreshAuthInfo.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public expiredTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->expiredTime:J

    return-wide v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->accessToken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setExpiredTime(J)V
    .locals 1
    .param p1, "expiredTime"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;->expiredTime:J

    .line 34
    return-void
.end method
