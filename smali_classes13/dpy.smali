.class public final Ldpy;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldpy$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldpy$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ldxc;

.field c:Ljava/lang/String;

.field d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

.field public e:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

.field public f:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

.field public g:J

.field public h:J

.field public i:Ldro;

.field public j:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

.field k:Z

.field l:Z

.field m:J

.field private final n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string/jumbo v2, "[ImEmotionManager]"

    iput-object v2, p0, Ldpy;->n:Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Ldpy;->a:Ljava/util/List;

    .line 71
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldpy;->o:Z

    .line 75
    new-instance v2, Ldxc;

    const-string/jumbo v3, "ImEmotionManager"

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v2, v3, v4, v5}, Ldxc;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v2, p0, Ldpy;->b:Ldxc;

    .line 76
    invoke-static {}, Ldpx;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldpy;->c:Ljava/lang/String;

    .line 1727
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_emotion"

    const-string/jumbo v4, "dt_im_chat_gif_sticker_update_seconds"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1730
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1731
    const-wide v2, 0x408c200000000000L    # 900.0

    .line 1735
    :goto_0
    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    .line 1738
    :goto_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 77
    iput-wide v0, p0, Ldpy;->m:J

    .line 78
    return-void

    .line 1733
    :cond_0
    invoke-static {v2}, Lcoc;->b(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic a(Ldpy;)V
    .locals 2
    .param p0, "x0"    # Ldpy;

    .prologue
    .line 46
    .line 3671
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 3672
    if-eqz v0, :cond_0

    .line 3673
    invoke-interface {v0}, Ldpy$a;->b()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic b(Ldpy;)V
    .locals 2
    .param p0, "x0"    # Ldpy;

    .prologue
    .line 46
    .line 4655
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 4656
    if-eqz v0, :cond_0

    .line 4657
    invoke-interface {v0}, Ldpy$a;->h()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method static c()J
    .locals 4

    .prologue
    .line 742
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 743
    .local v0, "currentUserMainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 744
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 746
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static synthetic c(Ldpy;)V
    .locals 2
    .param p0, "x0"    # Ldpy;

    .prologue
    .line 46
    .line 5537
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 5538
    if-eqz v0, :cond_0

    .line 5539
    invoke-interface {v0}, Ldpy$a;->g()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic d(Ldpy;)V
    .locals 2
    .param p0, "x0"    # Ldpy;

    .prologue
    .line 46
    .line 6529
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 6530
    if-eqz v0, :cond_0

    .line 6531
    invoke-interface {v0}, Ldpy$a;->d()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic e(Ldpy;)V
    .locals 2
    .param p0, "x0"    # Ldpy;

    .prologue
    .line 46
    .line 6663
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 6664
    if-eqz v0, :cond_0

    .line 6665
    invoke-interface {v0}, Ldpy$a;->e()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic f(Ldpy;)V
    .locals 2
    .param p0, "x0"    # Ldpy;

    .prologue
    .line 46
    .line 6679
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 6680
    if-eqz v0, :cond_0

    .line 6681
    invoke-interface {v0}, Ldpy$a;->f()V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Ldpy;->b:Ldxc;

    new-instance v1, Ldpy$1;

    invoke-direct {v1, p0}, Ldpy$1;-><init>(Ldpy;)V

    invoke-virtual {v0, v1}, Ldxc;->a(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;)V
    .locals 9
    .param p1, "emotionLocalObject"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x14

    const/4 v8, 0x0

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "content":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 548
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v3, :cond_0

    .line 550
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 551
    .local v2, "topicResultObject":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 552
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-interface {v4, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 555
    .end local v2    # "topicResultObject":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    :cond_0
    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 561
    :cond_1
    :goto_0
    iget-object v3, p0, Ldpy;->c:Ljava/lang/String;

    .line 3082
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3085
    invoke-static {v3}, Ldpx;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3086
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3087
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3093
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3098
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 3099
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3100
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3105
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 3106
    :cond_3
    :goto_1
    return-void

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    const-string/jumbo v3, "im"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "[ImEmotionManager]"

    aput-object v6, v4, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "save2LocalFile error:"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3101
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v4, v5

    .line 3102
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3105
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_3
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v5, v4

    goto :goto_3

    .line 3101
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public final a(Ldpy$a;)V
    .locals 1
    .param p1, "listener"    # Ldpy$a;

    .prologue
    .line 635
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "forceLoadFromServer"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-virtual {p0}, Ldpy;->a()V

    .line 179
    iget-object v0, p0, Ldpy;->b:Ldxc;

    new-instance v1, Ldpy$5;

    invoke-direct {v1, p0, p1}, Ldpy$5;-><init>(Ldpy;Z)V

    invoke-virtual {v0, v1}, Ldxc;->a(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method b()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v14, 0x1

    .line 269
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 270
    .local v2, "lwpOrSystemTime":J
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "language":Ljava/lang/String;
    new-instance v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;-><init>()V

    .line 272
    .local v8, "emotionVersionObject":Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;
    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 274
    .local v11, "topicResultObject":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 275
    .local v10, "likeEmotionObject":Ldro;
    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 276
    .local v9, "hotSearchWordResultObject":Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    .line 277
    .local v7, "defaultEmotionObject":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    if-eqz v10, :cond_0

    .line 278
    iget-wide v0, v10, Ldro;->b:J

    iput-wide v0, v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->likeEmotionVer:J

    .line 280
    :cond_0
    if-eqz v7, :cond_1

    .line 281
    iget-wide v0, v7, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->version:J

    iput-wide v0, v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->defaultEmotionVer:J

    .line 283
    :cond_1
    if-eqz v11, :cond_2

    .line 284
    iget-object v0, v11, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->fromTopicDataObjectList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->topicVersionList:Ljava/util/List;

    .line 286
    :cond_2
    if-eqz v9, :cond_3

    .line 287
    iget-wide v0, v9, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->version:J

    iput-wide v0, v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->hotSearchWordsVer:J

    .line 289
    :cond_3
    iget-object v0, p0, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    iput-wide v0, v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->iconRedPointVer:J

    .line 291
    .end local v7    # "defaultEmotionObject":Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    .end local v9    # "hotSearchWordResultObject":Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    .end local v10    # "likeEmotionObject":Ldro;
    .end local v11    # "topicResultObject":Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    :cond_4
    invoke-static {}, Ldpy;->c()J

    move-result-wide v5

    .line 292
    .local v5, "mainOrgId":J
    iput-wide v5, v8, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->mainOrgId:J

    .line 293
    iput-boolean v14, p0, Ldpy;->l:Z

    .line 294
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v12

    new-instance v0, Ldpy$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldpy$8;-><init>(Ldpy;JLjava/lang/String;J)V

    .line 2282
    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->toIdl(Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;)Ldte;

    move-result-object v13

    .line 2283
    if-nez v13, :cond_5

    .line 2285
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    sget v13, Lctk$i;->unknown_error:I

    invoke-virtual {v12, v13}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v1, v12}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    new-array v12, v14, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "[ImgResAPIImpl] getEmotionByVersions error: toIdl is null"

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v1, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    :goto_0
    return-void

    .line 2290
    :cond_5
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 2291
    new-instance v14, Ldyc$3;

    invoke-direct {v14, v12, v0}, Ldyc$3;-><init>(Ldyc;Lcma;)V

    invoke-interface {v1, v13, v14}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getEmotionByVersions(Ldte;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ldpy$a;)V
    .locals 1
    .param p1, "listener"    # Ldpy$a;

    .prologue
    .line 641
    if-eqz p1, :cond_0

    .line 642
    iget-object v0, p0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    return-void
.end method
