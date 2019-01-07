.class public final Ldpy$6;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ldpy;


# direct methods
.method public constructor <init>(Ldpy;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 193
    iput-object p1, p0, Ldpy$6;->b:Ldpy;

    iput-object p2, p0, Ldpy$6;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v3, p0, Ldpy$6;->b:Ldpy;

    iget-object v4, p0, Ldpy$6;->a:Ljava/util/Map;

    .line 1202
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-object v0, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v0, :cond_0

    iget-object v0, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-eqz v0, :cond_0

    iget-object v0, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 1213
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const/4 v0, 0x0

    .line 1217
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1218
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1219
    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1220
    if-eqz v1, :cond_3

    iget-wide v6, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    iget-wide v8, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 1221
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 1222
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 1223
    iget-boolean v2, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    .line 1224
    iget-wide v6, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    iput-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    .line 1225
    const/4 v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 1228
    goto :goto_1

    .line 1230
    :cond_2
    if-eqz v2, :cond_0

    .line 1233
    iget-object v0, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-virtual {v3, v0}, Ldpy;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;)V

    .line 1235
    iget-object v0, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    move-result-object v0

    .line 1236
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Ldpy$7;

    invoke-direct {v2, v3, v0}, Ldpy$7;-><init>(Ldpy;Lcom/alibaba/android/dingtalkim/models/TopicResultObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method
