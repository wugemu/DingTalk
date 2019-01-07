.class public final Leuz;
.super Lcom/alibaba/android/teleconf/data/ApmtBaseObject;
.source "TeleApmtConfInfoObject.java"


# instance fields
.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public p:J

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:I

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject;-><init>()V

    .line 69
    return-void
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;)Leuz;
    .locals 13
    .param p0, "model"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "infoObject":Leuz;
    if-eqz p0, :cond_9

    .line 120
    new-instance v3, Leuz;

    .end local v3    # "infoObject":Leuz;
    invoke-direct {v3}, Leuz;-><init>()V

    .line 121
    .restart local v3    # "infoObject":Leuz;
    sget-object v7, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v7, v3, Leuz;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 122
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    if-eqz v7, :cond_9

    .line 123
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerId:Ljava/lang/Long;

    .line 1044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 123
    iput-wide v8, v3, Leuz;->b:J

    .line 124
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerNick:Ljava/lang/String;

    iput-object v7, v3, Leuz;->c:Ljava/lang/String;

    .line 125
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->title:Ljava/lang/String;

    iput-object v7, v3, Leuz;->d:Ljava/lang/String;

    .line 126
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->startTime:Ljava/lang/Long;

    .line 2044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 126
    iput-wide v8, v3, Leuz;->e:J

    .line 127
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->predDuration:Ljava/lang/Long;

    .line 3044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 127
    iput-wide v8, v3, Leuz;->f:J

    .line 128
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confDuration:Ljava/lang/Long;

    .line 4044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 128
    iput-wide v8, v3, Leuz;->g:J

    .line 129
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 5033
    invoke-static {v7, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 129
    iput v7, v3, Leuz;->h:I

    .line 130
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v7, v3, Leuz;->i:Ljava/lang/String;

    .line 131
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->appointId:Ljava/lang/String;

    iput-object v7, v3, Leuz;->j:Ljava/lang/String;

    .line 132
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->operateTime:Ljava/lang/Long;

    .line 5044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 132
    iput-wide v8, v3, Leuz;->p:J

    .line 133
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->enableDing:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v7, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v7

    .line 133
    iput-boolean v7, v3, Leuz;->q:Z

    .line 134
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 135
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 136
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 137
    .local v5, "size":I
    add-int/lit8 v1, v5, -0x1

    .line 138
    .local v1, "destPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 139
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 140
    .local v6, "uid":Ljava/lang/Long;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 143
    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 144
    if-eq v2, v1, :cond_0

    .line 145
    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v6    # "uid":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Leuz;->r:Ljava/lang/String;

    .line 153
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "destPos":I
    .end local v2    # "i":I
    .end local v5    # "size":I
    :goto_1
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 154
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 155
    .restart local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 156
    .restart local v5    # "size":I
    add-int/lit8 v1, v5, -0x1

    .line 157
    .restart local v1    # "destPos":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 158
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, "nick":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 162
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 163
    if-eq v2, v1, :cond_2

    .line 164
    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "destPos":I
    .end local v2    # "i":I
    .end local v4    # "nick":Ljava/lang/String;
    .end local v5    # "size":I
    :cond_3
    const-string/jumbo v7, ""

    iput-object v7, v3, Leuz;->r:Ljava/lang/String;

    goto :goto_1

    .line 167
    .restart local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v1    # "destPos":I
    .restart local v2    # "i":I
    .restart local v5    # "size":I
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Leuz;->s:Ljava/lang/String;

    .line 171
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "destPos":I
    .end local v2    # "i":I
    .end local v5    # "size":I
    :goto_3
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confInProcessing:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v7, v12}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v7

    .line 171
    iput-boolean v7, v3, Leuz;->t:Z

    .line 172
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatus:Ljava/lang/Integer;

    .line 7033
    invoke-static {v7, v12}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 172
    iput v7, v3, Leuz;->u:I

    .line 173
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatusDesc:Ljava/lang/String;

    iput-object v7, v3, Leuz;->v:Ljava/lang/String;

    .line 175
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 176
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Leuz;->k:Ljava/util/List;

    .line 177
    iget-object v7, v3, Leuz;->k:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v8, v8, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 180
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Leuz;->l:Ljava/util/List;

    .line 181
    iget-object v7, v3, Leuz;->l:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v8, v8, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 184
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Leuz;->m:Ljava/util/List;

    .line 185
    iget-object v7, v3, Leuz;->m:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v8, v8, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->talkingCalleeIds:Ljava/util/List;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->talkingCalleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 188
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Leuz;->n:Ljava/util/List;

    .line 189
    iget-object v7, v3, Leuz;->n:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v8, v8, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->talkingCalleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_8
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->newjoinCalleeIds:Ljava/util/List;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v7, v7, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->newjoinCalleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 192
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Leuz;->o:Ljava/util/List;

    .line 193
    iget-object v7, v3, Leuz;->o:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;->vConfDetailInfosModel:Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    iget-object v8, v8, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->newjoinCalleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_9
    return-object v3

    .line 169
    :cond_a
    const-string/jumbo v7, ""

    iput-object v7, v3, Leuz;->s:Ljava/lang/String;

    goto/16 :goto_3
.end method
