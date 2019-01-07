.class public Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public accountType:I

.field public avatarAddr:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public expiredTime:J

.field public extend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;",
            ">;"
        }
    .end annotation
.end field

.field public masterAccount:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public refreshToken:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accountType:I

    return v0
.end method

.method public getAvatarAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->avatarAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    return-wide v0
.end method

.method public getExtend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    return-object v0
.end method

.method public getMasterAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->masterAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAccountType(I)V
    .locals 0
    .param p1, "accountType"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accountType:I

    .line 114
    return-void
.end method

.method public setAvatarAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarAddr"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->avatarAddr:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->deviceId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->email:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setExpiredTime(J)V
    .locals 1
    .param p1, "expiredTime"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    .line 90
    return-void
.end method

.method public setExtend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "extend":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/auth/AccountExtend;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->extend:Ljava/util/List;

    .line 134
    return-void
.end method

.method public setMasterAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "masterAccount"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->masterAccount:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->nickname:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->userId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AuthInfo [accessToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avatarAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->avatarAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    .line 139
    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accountType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", masterAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->masterAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
