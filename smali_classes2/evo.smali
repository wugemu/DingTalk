.class public final Levo;
.super Ljava/lang/Object;
.source "VideoConfRoomInfoObject.java"


# instance fields
.field a:Ljava/lang/String;

.field public b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)V
    .locals 2
    .param p1, "infoModel"    # Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceId:Ljava/lang/String;

    iput-object v0, p0, Levo;->a:Ljava/lang/String;

    .line 51
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->c:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->appId:Ljava/lang/String;

    iput-object v0, p0, Levo;->d:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceNonce:Ljava/lang/String;

    iput-object v0, p0, Levo;->e:Ljava/lang/String;

    .line 54
    iget v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->conferenceTimestamp:I

    int-to-long v0, v0

    iput-wide v0, p0, Levo;->f:J

    .line 55
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Levo;->g:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->token:Ljava/lang/String;

    iput-object v0, p0, Levo;->h:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Levo;->i:Ljava/util/List;

    .line 59
    iget-object v0, p0, Levo;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->gslbs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_0
    iget v0, p1, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->bizType:I

    iput v0, p0, Levo;->b:I

    .line 63
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfUserInfo;I)V
    .locals 2
    .param p1, "info"    # Lcom/alivc/live/conf/AlivcVideoConfUserInfo;
    .param p2, "bizType"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getConferenceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Levo;->f:J

    .line 39
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getSession()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->g:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Levo;->h:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getGslb()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfUserInfo;->getGslb()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Levo;->i:Ljava/util/List;

    .line 45
    :cond_0
    iput p2, p0, Levo;->b:I

    .line 46
    return-void
.end method
