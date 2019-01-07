.class public final Lbxk;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbvf;)Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    .locals 5
    .param p0, "model"    # Lbvf;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 104
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-object v1

    .line 108
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;-><init>()V

    .line 109
    .local v0, "object":Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    iget-object v4, p0, Lbvf;->a:Ljava/util/List;

    .line 1074
    if-nez v4, :cond_1

    .line 109
    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;->records:Ljava/util/List;

    .line 110
    iget-object v1, p0, Lbvf;->b:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;->isEnd:Z

    move-object v1, v0

    .line 112
    goto :goto_0

    .line 1078
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1079
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbvl;

    .line 1080
    invoke-static {v1}, Lbxk;->a(Lbvl;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    .line 1081
    if-eqz v1, :cond_2

    .line 1082
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 1086
    goto :goto_1

    .line 110
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static a(Lbvl;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .locals 6
    .param p0, "model"    # Lbvl;

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;-><init>()V

    .line 38
    .local v0, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    iget-object v2, p0, Lbvl;->a:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    .line 39
    iget-object v2, p0, Lbvl;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    .line 40
    iget-object v2, p0, Lbvl;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lbvl;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->coverUrl:Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lbvl;->e:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->playUrl:Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lbvl;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->token:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lbvl;->g:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->datetime:J

    .line 45
    iget-object v2, p0, Lbvl;->h:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->duration:J

    .line 46
    iget-object v2, p0, Lbvl;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->inputStreamUrl:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lbvl;->j:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->status:I

    .line 48
    iget-object v2, p0, Lbvl;->k:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape:I

    .line 49
    iget-object v2, p0, Lbvl;->l:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->recordSize:J

    .line 50
    iget-object v2, p0, Lbvl;->m:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    .line 51
    iget-object v2, p0, Lbvl;->n:Ljava/util/List;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->shareToCids:Ljava/util/List;

    .line 52
    iget-object v2, p0, Lbvl;->o:Ljava/util/List;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->stoppedShareToCids:Ljava/util/List;

    .line 53
    iget-object v2, p0, Lbvl;->p:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->cid:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lbvl;->q:Ljava/lang/Boolean;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->hasWatched:Z

    .line 55
    iget-object v2, p0, Lbvl;->r:Ljava/lang/Boolean;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->enableLinkMic:Z

    .line 56
    iget-object v2, p0, Lbvl;->s:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveType:I

    .line 57
    iget-object v2, p0, Lbvl;->t:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLiveAbord:I

    .line 58
    iget-object v2, p0, Lbvl;->u:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->publicType:I

    .line 59
    iget-object v2, p0, Lbvl;->v:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->publicLandingUrl:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lbvl;->w:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->conversationName:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lbvl;->x:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->pv:I

    .line 62
    iget-object v2, p0, Lbvl;->y:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->praiseCount:I

    .line 63
    iget-object v2, p0, Lbvl;->z:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->largeCoverUrl:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lbvl;->A:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorNickname:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 66
    .local v1, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_0

    .line 67
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->nick:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Lbvm;)Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    .locals 4
    .param p0, "model"    # Lbvm;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;-><init>()V

    .line 121
    .local v0, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;
    iget-object v1, p0, Lbvm;->a:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->memberCount:I

    .line 122
    iget-object v1, p0, Lbvm;->b:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->duration:J

    .line 123
    iget-object v1, p0, Lbvm;->c:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->pv:I

    .line 124
    iget-object v1, p0, Lbvm;->d:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->uv:I

    .line 125
    iget-object v1, p0, Lbvm;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->coverUrl:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lbvm;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->title:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lbvm;->g:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->onlineCount:I

    .line 128
    iget-object v1, p0, Lbvm;->h:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->praiseCount:I

    .line 129
    iget-object v1, p0, Lbvm;->i:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->messageCount:I

    .line 130
    iget-object v1, p0, Lbvm;->j:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->viewerCount:I

    .line 131
    iget-object v1, p0, Lbvm;->k:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->unviewedCount:I

    .line 132
    iget-object v1, p0, Lbvm;->l:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->recordSeenLevel:I

    .line 133
    iget-object v1, p0, Lbvm;->m:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->recordSeenLevelReason:I

    .line 134
    iget-object v1, p0, Lbvm;->n:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->allViewCount:I

    .line 135
    iget-object v1, p0, Lbvm;->o:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->unViewAllCount:I

    .line 136
    iget-object v1, p0, Lbvm;->p:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;->liveType:I

    goto :goto_0
.end method
