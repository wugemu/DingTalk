.class public final Ldic;
.super Ljava/lang/Object;
.source "GifEmotionPresenterImpl.java"

# interfaces
.implements Ldib$a;


# instance fields
.field a:Ldib$b;

.field b:Ldpy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Ldtc;

.field f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

.field private l:Z

.field private m:Z

.field private n:Ldid;

.field private o:Ldpy$a;


# direct methods
.method public constructor <init>(Ldib$b;Ldpy;)V
    .locals 2
    .param p1, "view"    # Ldib$b;
    .param p2, "imEmotionManager"    # Ldpy;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "gif_emotion_presenter_module"

    iput-object v0, p0, Ldic;->g:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "[GifEmotionPresenterImpl]"

    iput-object v0, p0, Ldic;->h:Ljava/lang/String;

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Ldic;->i:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldic;->c:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldic;->j:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;-><init>()V

    iput-object v0, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 53
    new-instance v0, Ldid;

    invoke-direct {v0}, Ldid;-><init>()V

    iput-object v0, p0, Ldic;->n:Ldid;

    .line 265
    new-instance v0, Ldic$2;

    invoke-direct {v0, p0}, Ldic$2;-><init>(Ldic;)V

    iput-object v0, p0, Ldic;->o:Ldpy$a;

    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "GifEmotionPresenterImpl view or imEmotionManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Ldic;->a:Ldib$b;

    .line 63
    iput-object p2, p0, Ldic;->b:Ldpy;

    .line 64
    return-void
.end method

.method static synthetic a(Ldic;Z)V
    .locals 6
    .param p0, "x0"    # Ldic;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    .line 5340
    if-nez p1, :cond_0

    iget-object v0, p0, Ldic;->a:Ldib$b;

    invoke-interface {v0}, Ldib$b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5343
    :cond_0
    iget-object v0, p0, Ldic;->b:Ldpy;

    .line 5607
    iget-object v0, v0, Ldpy;->f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 5344
    iget-object v1, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5345
    iget-object v1, p0, Ldic;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5346
    if-eqz v0, :cond_2

    .line 5347
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    move-result-object v0

    .line 5348
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5349
    iget-object v1, p0, Ldic;->c:Ljava/util/List;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5350
    iget-object v0, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 5351
    if-eqz v0, :cond_1

    .line 5352
    iget-object v2, p0, Ldic;->j:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5357
    :cond_2
    invoke-direct {p0}, Ldic;->j()V

    .line 5358
    invoke-direct {p0}, Ldic;->k()V

    .line 5359
    invoke-direct {p0}, Ldic;->i()V

    .line 37
    :cond_3
    return-void
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 129
    iget-object v2, p0, Ldic;->a:Ldib$b;

    iget-object v3, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ldib$b;->a(Ljava/util/List;)V

    .line 130
    iget-object v2, p0, Ldic;->j:Ljava/util/Map;

    const-wide/16 v4, -0x64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Ldic;->a:Ldib$b;

    iget-object v3, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Ldib$b;->a(Z)V

    .line 135
    :goto_1
    iget-object v0, p0, Ldic;->a:Ldib$b;

    iget-boolean v1, p0, Ldic;->d:Z

    invoke-interface {v0, v1}, Ldib$b;->b(Z)V

    .line 136
    return-void

    :cond_0
    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Ldic;->a:Ldib$b;

    iget-object v3, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-interface {v2, v0}, Ldib$b;->a(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    iget-object v0, p0, Ldic;->c:Ljava/util/List;

    iget-object v1, p0, Ldic;->n:Ldid;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    return-void
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 367
    iget-object v0, p0, Ldic;->c:Ljava/util/List;

    iget-object v1, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Ldic;->c:Ljava/util/List;

    iget-object v1, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_0
    iget-object v0, p0, Ldic;->j:Ljava/util/Map;

    iget-object v1, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Ldic;->c:Ljava/util/List;

    const/4 v1, 0x1

    iget-object v2, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .locals 3
    .param p1, "topicId"    # J

    .prologue
    .line 181
    iget-object v0, p0, Ldic;->j:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    return-object v0
.end method

.method public final a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, -0x64

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    iget-boolean v4, p0, Ldic;->l:Z

    if-eqz v4, :cond_0

    .line 69
    invoke-direct {p0}, Ldic;->i()V

    .line 70
    invoke-virtual {p0}, Ldic;->h()V

    .line 121
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-boolean v8, p0, Ldic;->l:Z

    .line 1139
    const-string/jumbo v4, "gif_emotion_presenter_module"

    invoke-static {v4, v10}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1142
    :try_start_0
    const-class v5, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-static {v4, v5}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iput-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_1
    :goto_1
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    if-nez v4, :cond_2

    .line 1149
    new-instance v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;-><init>()V

    iput-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1150
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iput-boolean v9, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    .line 1152
    :cond_2
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iput-wide v12, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->sort:J

    .line 1153
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iput-wide v12, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    .line 1154
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->dt_topic_emotion_rectect_used:I

    .line 1155
    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->name:Ljava/lang/String;

    .line 1156
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 1157
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 75
    :goto_2
    iget-object v4, p0, Ldic;->b:Ldpy;

    iget-object v5, p0, Ldic;->o:Ldpy$a;

    invoke-virtual {v4, v5}, Ldpy;->a(Ldpy$a;)V

    .line 77
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "im_chat_gif_tool_bar_icon_enable"

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, "emotionEventEnable":Z
    if-eqz v1, :cond_3

    .line 79
    invoke-static {}, Ldia;->a()Ldia;

    move-result-object v4

    new-instance v5, Ldic$1;

    invoke-direct {v5, p0}, Ldic$1;-><init>(Ldic;)V

    .line 2120
    const-string/jumbo v6, "EventGifManager"

    invoke-static {v6, v8}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 2063
    new-instance v7, Ldia$1;

    invoke-direct {v7, v4, v5}, Ldia$1;-><init>(Ldia;Lcma;)V

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 101
    :cond_3
    iget-object v4, p0, Ldic;->b:Ldpy;

    .line 2607
    iget-object v3, v4, Ldpy;->f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 102
    .local v3, "topicResultSnapshot":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    invoke-virtual {p0}, Ldic;->g()V

    .line 103
    if-eqz v3, :cond_7

    .line 104
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    move-result-object v0

    .line 105
    .local v0, "copy":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    iget-object v4, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 106
    iget-object v4, p0, Ldic;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 107
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 108
    iget-object v4, p0, Ldic;->c:Ljava/util/List;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v4, p0, Ldic;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 110
    .local v2, "object":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v2, :cond_4

    .line 111
    iget-object v5, p0, Ldic;->j:Ljava/util/Map;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1143
    .end local v0    # "copy":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    .end local v1    # "emotionEventEnable":Z
    .end local v2    # "object":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    .end local v3    # "topicResultSnapshot":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    :catch_0
    move-exception v4

    .line 1144
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1145
    const-string/jumbo v5, "im"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[GifEmotionPresenterImpl]"

    aput-object v7, v6, v9

    const-string/jumbo v7, " loadRecent parse error:"

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v10, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1160
    :cond_5
    iget-object v4, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    new-instance v5, Ljava/util/ArrayList;

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    goto/16 :goto_2

    .line 115
    .restart local v0    # "copy":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    .restart local v1    # "emotionEventEnable":Z
    .restart local v3    # "topicResultSnapshot":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    :cond_6
    invoke-direct {p0}, Ldic;->j()V

    .line 116
    invoke-direct {p0}, Ldic;->k()V

    .line 117
    invoke-direct {p0}, Ldic;->i()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "copy":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    :cond_7
    iget-object v4, p0, Ldic;->b:Ldpy;

    invoke-virtual {v4}, Ldpy;->a()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V
    .locals 8
    .param p1, "topicDataObject"    # Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v2, p0, Ldic;->j:Ljava/util/Map;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 192
    .local v0, "oldTopicDataObject":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    .line 197
    .local v1, "topicEmotionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    if-eqz v1, :cond_3

    .line 198
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_2
    :goto_1
    iget-boolean v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->hasMore:Z

    .line 207
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->cursor:J

    .line 208
    iget-boolean v3, p0, Ldic;->m:Z

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->version:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v2, v3

    iput-boolean v2, p0, Ldic;->m:Z

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    goto :goto_1

    .line 208
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    iget-object v0, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    :goto_1
    iget-object v0, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 174
    iget-object v0, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    iget-object v1, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicEmotionObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 176
    :cond_2
    iget-object v0, p0, Ldic;->a:Ldib$b;

    invoke-interface {v0}, Ldib$b;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v1, p0, Ldic;->j:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldic;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ldic;->j:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 215
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    iget-object v1, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    :cond_1
    iget-object v1, p0, Ldic;->b:Ldpy;

    .line 4188
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4191
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4192
    invoke-virtual {v1}, Ldpy;->a()V

    .line 4193
    iget-object v3, v1, Ldpy;->b:Ldxc;

    new-instance v4, Ldpy$6;

    invoke-direct {v4, v1, v2}, Ldpy$6;-><init>(Ldpy;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Ldxc;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    iget-boolean v0, p0, Ldic;->m:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Ldic;->b:Ldpy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldpy;->a(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    iget-boolean v0, p0, Ldic;->m:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Ldic;->b:Ldpy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldpy;->a(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Ldic;->b:Ldpy;

    iget-object v2, p0, Ldic;->o:Ldpy$a;

    invoke-virtual {v1, v2}, Ldpy;->b(Ldpy$a;)V

    .line 4240
    :try_start_0
    iget-object v1, p0, Ldic;->k:Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    invoke-static {v1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4246
    :goto_0
    const-string/jumbo v1, "gif_emotion_presenter_module"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 4241
    :catch_0
    move-exception v1

    .line 4242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4243
    const-string/jumbo v2, "im"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[GifEmotionPresenterImpl]"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "saveRecentList error:"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 4244
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4243
    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-boolean v0, p0, Ldic;->d:Z

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldic;->d:Z

    .line 259
    iget-object v0, p0, Ldic;->a:Ldib$b;

    iget-boolean v1, p0, Ldic;->d:Z

    invoke-interface {v0, v1}, Ldib$b;->b(Z)V

    .line 260
    iget-object v0, p0, Ldic;->b:Ldpy;

    iget-wide v2, p0, Ldic;->f:J

    .line 4570
    iget-object v1, v0, Ldpy;->b:Ldxc;

    new-instance v4, Ldpy$2;

    invoke-direct {v4, v0, v2, v3}, Ldpy$2;-><init>(Ldpy;J)V

    invoke-virtual {v1, v4}, Ldxc;->a(Ljava/lang/Runnable;)V

    .line 262
    :cond_0
    return-void
.end method

.method g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Ldic;->b:Ldpy;

    .line 2631
    iget-wide v0, v0, Ldpy;->h:J

    .line 124
    iput-wide v0, p0, Ldic;->f:J

    .line 125
    iget-wide v0, p0, Ldic;->f:J

    iget-object v2, p0, Ldic;->b:Ldpy;

    .line 3623
    iget-wide v2, v2, Ldpy;->g:J

    .line 125
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ldic;->d:Z

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 328
    iget-object v2, p0, Ldic;->b:Ldpy;

    if-nez v2, :cond_0

    .line 337
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Ldic;->b:Ldpy;

    .line 4615
    iget-object v0, v2, Ldpy;->j:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 332
    .local v0, "gifEmotionIconSnapshot":Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    const/4 v1, 0x0

    .line 333
    .local v1, "mediaId":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->authMediaId:Ljava/lang/String;

    .line 336
    :cond_1
    iget-object v2, p0, Ldic;->a:Ldib$b;

    invoke-interface {v2, v1}, Ldib$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
