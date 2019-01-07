.class public final Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
.super Lcom/alibaba/android/teleconf/data/ApmtBaseObject;
.source "ApmtConfRecordItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;
    }
.end annotation


# instance fields
.field public b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

.field public c:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:I

.field public l:I

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

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:I

.field public t:I


# direct methods
.method private constructor <init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->b:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .line 77
    return-void
.end method

.method public static a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .locals 2
    .param p0, "type"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .prologue
    .line 116
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V

    .line 117
    .local v0, "item":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->c:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    .line 118
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .locals 6
    .param p0, "type"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;
    .param p1, "confInfoModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;

    .prologue
    const-wide/16 v4, 0x0

    .line 235
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 238
    :cond_1
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V

    .line 239
    .local v0, "confRecordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 240
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->conferenceId:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    .line 241
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->appointId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->f:Ljava/lang/String;

    .line 242
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->callerId:Ljava/lang/Long;

    .line 11044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 242
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    .line 243
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->startTime:Ljava/lang/Long;

    .line 12044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 243
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 244
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->operateTime:Ljava/lang/Long;

    .line 13044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 244
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->o:J

    .line 245
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 14033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 245
    iput v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->k:I

    .line 246
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->callerNick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->h:Ljava/lang/String;

    .line 247
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->g:Ljava/lang/String;

    .line 248
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->calleeIds:Ljava/lang/String;

    invoke-static {v1}, Lcob;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    .line 249
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->l:I

    .line 252
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->predDuration:Ljava/lang/Long;

    .line 14044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 252
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->p:J

    .line 253
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->confDuration:Ljava/lang/Long;

    .line 15044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 253
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->q:J

    .line 254
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->confDuration:Ljava/lang/Long;

    .line 16044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 254
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->r:J

    .line 255
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfInfoModel;->calleeNicks:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .locals 12
    .param p0, "type"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;
    .param p1, "confInfoModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;

    .prologue
    const-wide/16 v10, 0x0

    .line 122
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 123
    :cond_0
    const/4 v5, 0x0

    .line 162
    :cond_1
    :goto_0
    return-object v5

    .line 125
    :cond_2
    new-instance v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V

    .line 126
    .local v5, "recordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    sget-object v7, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 127
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    .line 128
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->appointId:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->f:Ljava/lang/String;

    .line 129
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerId:Ljava/lang/Long;

    .line 1044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 129
    iput-wide v8, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    .line 130
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->startTime:Ljava/lang/Long;

    .line 2044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 130
    iput-wide v8, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 131
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->apmtStatus:Ljava/lang/Integer;

    .line 3033
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 131
    iput v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->k:I

    .line 132
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerNick:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->h:Ljava/lang/String;

    .line 133
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->title:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->g:Ljava/lang/String;

    .line 134
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    if-eqz v7, :cond_4

    .line 135
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 136
    .local v6, "size":I
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    iget-wide v8, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 139
    :cond_3
    iput v6, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->l:I

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    .line 141
    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    iget-object v8, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    .end local v6    # "size":I
    :cond_4
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confDuration:Ljava/lang/Long;

    .line 3044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 143
    iput-wide v8, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->p:J

    .line 144
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->predDuration:Ljava/lang/Long;

    .line 4044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 144
    iput-wide v8, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->r:J

    .line 145
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 146
    invoke-static {}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "nickSeparator":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 148
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 149
    .restart local v6    # "size":I
    add-int/lit8 v2, v6, -0x1

    .line 150
    .local v2, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_6

    .line 151
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "nick":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 155
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 156
    if-eq v1, v2, :cond_5

    .line 157
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 150
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    .end local v3    # "nick":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->i:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .locals 8
    .param p0, "confInfoModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-direct {v0, v2}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V

    .line 170
    .local v0, "confRecordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 171
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->conferenceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->callerId:Ljava/lang/Long;

    .line 5044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 172
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    .line 173
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->startTime:Ljava/lang/Long;

    .line 6044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 173
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 174
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->g:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->callerNick:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->h:Ljava/lang/String;

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->confCameraStatus:Ljava/lang/Integer;

    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->s:I

    .line 177
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->confMicStatus:Ljava/lang/Integer;

    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->t:I

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 181
    .local v1, "size":I
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    iget-wide v4, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_1
    iput v1, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->l:I

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    .line 186
    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->calleeIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    .end local v1    # "size":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceInfoModel;->confDuration:Ljava/lang/Long;

    .line 7044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 188
    iput-wide v2, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->p:J

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .locals 12
    .param p0, "confInfoModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;

    .prologue
    const-wide/16 v10, 0x0

    .line 193
    if-nez p0, :cond_1

    .line 194
    const/4 v1, 0x0

    .line 231
    :cond_0
    :goto_0
    return-object v1

    .line 196
    :cond_1
    new-instance v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    sget-object v7, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-direct {v1, v7}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V

    .line 197
    .local v1, "confRecordItem":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    sget-object v7, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 198
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->conferenceId:Ljava/lang/String;

    iput-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    .line 199
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->callerId:Ljava/lang/Long;

    .line 8044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 199
    iput-wide v8, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    .line 200
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->startTime:Ljava/lang/Long;

    .line 9044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 200
    iput-wide v8, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    .line 201
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->myStatus:Ljava/lang/Integer;

    .line 10033
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 201
    iput v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->k:I

    .line 202
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->callerNick:Ljava/lang/String;

    iput-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->h:Ljava/lang/String;

    .line 203
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->title:Ljava/lang/String;

    iput-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->g:Ljava/lang/String;

    .line 204
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeIds:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 205
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 206
    .local v6, "size":I
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeIds:Ljava/util/List;

    iget-wide v8, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 207
    add-int/lit8 v6, v6, 0x1

    .line 209
    :cond_2
    iput v6, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->l:I

    .line 210
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    .line 211
    iget-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->m:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeIds:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    .end local v6    # "size":I
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->confDuration:Ljava/lang/Long;

    .line 10044
    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 213
    iput-wide v8, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->p:J

    .line 214
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeNicks:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 215
    invoke-static {}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "nickSeparator":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 217
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 218
    .restart local v6    # "size":I
    add-int/lit8 v3, v6, -0x1

    .line 219
    .local v3, "lastIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_5

    .line 220
    iget-object v7, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceModel;->calleeNicks:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 221
    .local v4, "nick":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 224
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 225
    if-eq v2, v3, :cond_4

    .line 226
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 219
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 229
    .end local v4    # "nick":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->i:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    .locals 2
    .param p0, "headerTitle"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;-><init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem$ItemInfoType;)V

    .line 111
    .local v0, "item":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iput-object p0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->d:Ljava/lang/String;

    .line 112
    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, ", "

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\u3001"

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    instance-of v3, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .line 92
    .local v0, "other":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "other":Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;
    :cond_4
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    const/16 v0, 0x11

    .line 103
    .local v0, "result":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 106
    :cond_0
    return v0
.end method
