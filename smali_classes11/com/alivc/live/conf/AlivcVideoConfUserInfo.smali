.class public Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
.super Ljava/lang/Object;
.source "AlivcVideoConfUserInfo.java"


# instance fields
.field public mAppid:Ljava/lang/String;

.field public mConferenceId:Ljava/lang/String;

.field public mGslb:[Ljava/lang/String;

.field public mNonce:Ljava/lang/String;

.field public mSession:Ljava/lang/String;

.field public mTimestamp:J

.field public mToken:Ljava/lang/String;

.field public mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mConferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGslb()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mGslb:[Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mSession:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mAppid:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setConferenceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conferenceId"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mConferenceId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setGslb([Ljava/lang/String;)V
    .locals 0
    .param p1, "gslb"    # [Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mGslb:[Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mNonce:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mSession:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mTimestamp:J

    .line 107
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mToken:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->mUserId:Ljava/lang/String;

    .line 53
    return-void
.end method
