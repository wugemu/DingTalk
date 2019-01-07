.class public Ldps;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldps$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Ldps;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldps$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Ldps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldps;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldps;->e:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldps;->a:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldps;->f:Z

    .line 553
    new-instance v0, Ldps$7;

    invoke-direct {v0, p0}, Ldps$7;-><init>(Ldps;)V

    iput-object v0, p0, Ldps;->b:Ljava/util/Comparator;

    .line 72
    return-void
.end method

.method public static declared-synchronized a()Ldps;
    .locals 2

    .prologue
    .line 65
    const-class v1, Ldps;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldps;->d:Ldps;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ldps;

    invoke-direct {v0}, Ldps;-><init>()V

    sput-object v0, Ldps;->d:Ldps;

    .line 68
    :cond_0
    sget-object v0, Ldps;->d:Ldps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V
    .locals 2
    .param p0, "detailObject"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    .line 417
    if-eqz p0, :cond_0

    .line 418
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->packageId:J

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    .line 421
    :cond_0
    return-void
.end method

.method static synthetic a(Ldps;)V
    .locals 2
    .param p0, "x0"    # Ldps;

    .prologue
    .line 47
    .line 2518
    iget-object v0, p0, Ldps;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2522
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$6;

    invoke-direct {v1, p0}, Ldps$6;-><init>(Ldps;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic a(Ldps;Ldra;Lcma;)V
    .locals 3
    .param p0, "x0"    # Ldps;
    .param p1, "x1"    # Ldra;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 47
    .line 2168
    if-nez p1, :cond_1

    .line 2169
    if-eqz p2, :cond_0

    .line 2170
    const-string/jumbo v0, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "addEmotionNativeAsyn addResultObject null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    :goto_0
    return-void

    .line 2176
    :cond_1
    sget-object v0, Ldps;->c:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldps$1;

    invoke-direct {v1, p0, p1, p2}, Ldps$1;-><init>(Ldps;Ldra;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ldps;Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z
    .locals 1
    .param p0, "x0"    # Ldps;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldps;->b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ldps;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ldps;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldps;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ldps;Z)Z
    .locals 1
    .param p0, "x0"    # Ldps;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldps;->f:Z

    return v0
.end method

.method private a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 473
    .local p1, "emotionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v4

    invoke-virtual {v4}, Ldhe;->d()Ldhd;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-interface {v4, v6, v7, p1}, Ldhd;->a(JLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 476
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2044
    .local v1, "emotionId":Ljava/lang/Long;
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 478
    .local v2, "instanceEmotionId":J
    iget-object v5, p0, Ldps;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 479
    .local v0, "customEmotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v0, :cond_1

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    .line 482
    iget-object v5, p0, Ldps;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    .end local v0    # "customEmotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v1    # "emotionId":Ljava/lang/Long;
    .end local v2    # "instanceEmotionId":J
    :cond_2
    const/4 v4, 0x1

    .line 491
    :goto_1
    return v4

    .line 489
    :cond_3
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "traceEmotion"

    const-string/jumbo v6, "remove custom db error"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ldps;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ldps;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldps;

    .prologue
    .line 47
    iget-object v0, p0, Ldps;->e:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Z
    .locals 8
    .param p1, "customEmotion"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 448
    if-nez p1, :cond_0

    .line 449
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "traceEmotion"

    const-string/jumbo v3, "add custom customEmotion null"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 467
    :goto_0
    return v0

    .line 453
    :cond_0
    invoke-static {p1}, Ldps;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V

    .line 455
    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    .line 1438
    iget-object v0, p0, Ldps;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 1439
    if-eqz v0, :cond_1

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    move v0, v1

    .line 455
    :goto_1
    if-eqz v0, :cond_3

    .line 456
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "traceEmotion"

    const-string/jumbo v3, "add custom alredy in list"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 457
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1443
    goto :goto_1

    .line 461
    :cond_3
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v0

    invoke-virtual {v0}, Ldhe;->d()Ldhd;

    move-result-object v0

    invoke-interface {v0, p1}, Ldhd;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)I

    move-result v0

    if-lez v0, :cond_4

    .line 462
    iget-object v0, p0, Ldps;->a:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 463
    goto :goto_0

    .line 465
    :cond_4
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v3, "add custom insert db error"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 467
    goto :goto_0
.end method

.method static synthetic b(Ldps;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ldps;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ldps;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "customEmotions":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    const/4 v1, 0x1

    .line 496
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 497
    :cond_0
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "traceEmotion"

    const-string/jumbo v4, "sync custom emotions empty"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_0
    return v1

    .line 501
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 502
    .local v0, "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    invoke-static {v0}, Ldps;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)V

    goto :goto_1

    .line 506
    .end local v0    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_2
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v2

    invoke-virtual {v2}, Ldhe;->d()Ldhd;

    move-result-object v2

    invoke-interface {v2, p1}, Ldhd;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    iget-object v2, p0, Ldps;->b:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 508
    iget-object v2, p0, Ldps;->a:Ljava/util/List;

    invoke-static {p1, v2}, Ldpu;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 511
    :cond_3
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "traceEmotion"

    const-string/jumbo v3, "sync custom db error"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic c(Ldps;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldps;

    .prologue
    .line 47
    iget-object v0, p0, Ldps;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-string/jumbo v2, "CUSTOM_EMOTION_PACKAGE_VERSION"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 349
    .local v0, "version":J
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "traceEmotion"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sync custom,pre ver="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldps;->f:Z

    .line 351
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v2

    invoke-virtual {v2}, Ldyn;->f()Ldyb;

    move-result-object v2

    new-instance v3, Ldps$5;

    invoke-direct {v3, p0, p1}, Ldps$5;-><init>(Ldps;Lcma;)V

    invoke-interface {v2, v0, v1, v3}, Ldyb;->a(JLcma;)V

    .line 413
    return-void
.end method

.method public final a(Ldps$a;)V
    .locals 1
    .param p1, "listener"    # Ldps$a;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Ldps;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "authMediaId"    # Ljava/lang/String;
    .param p3, "authEntity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    .local p4, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    if-eqz p4, :cond_0

    .line 210
    const-string/jumbo v0, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "addCustomAuthEmotion mediaId all null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const/4 p2, 0x0

    .line 218
    :cond_2
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->f()Ldyb;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v5, Ldps$2;

    invoke-direct {v5, p0, p4}, Ldps$2;-><init>(Ldps;Lcma;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Ldyb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    iget-object v2, p0, Ldps;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 104
    .local v0, "customEmotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b(Ldps$a;)V
    .locals 1
    .param p1, "listener"    # Ldps$a;

    .prologue
    .line 82
    iget-object v0, p0, Ldps;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "authMediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    iget-object v2, p0, Ldps;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 116
    .local v0, "customEmotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const/4 v1, 0x1

    goto :goto_0
.end method
