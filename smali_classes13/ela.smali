.class public final Lela;
.super Ljava/lang/Object;
.source "SplashImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lela$a;
    }
.end annotation


# static fields
.field private static e:Lela;


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Leky;

.field c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lela$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lela;->a:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lela;->c:Ljava/util/Queue;

    .line 75
    new-instance v0, Lekz;

    invoke-direct {v0}, Lekz;-><init>()V

    iput-object v0, p0, Lela;->b:Leky;

    .line 76
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lela;->d:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 77
    return-void
.end method

.method public static declared-synchronized a()Lela;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lela;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lela;->e:Lela;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lela;

    invoke-direct {v0}, Lela;-><init>()V

    sput-object v0, Lela;->e:Lela;

    .line 71
    :cond_0
    sget-object v0, Lela;->e:Lela;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 82
    .local v0, "currentTime":J
    const-string/jumbo v2, "pref_key_last_check_splash_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v2, "pref_key_last_check_splash_time"

    invoke-static {v2, v0, v1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 88
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lela$1;

    invoke-direct {v3}, Lela$1;-><init>()V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a(JLjava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "orgId"    # J
    .param p3, "splashId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 310
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 311
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 339
    :goto_0
    monitor-exit p0

    return-object v1

    .line 315
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "splash_image"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    move-object v1, v2

    .line 319
    goto :goto_0

    .line 323
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 327
    goto :goto_0

    .line 331
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    move-object v1, v2

    .line 335
    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    move-object v0, v1

    .line 339
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 310
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v1, p0, Lela;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lela$a;

    .line 152
    .local v0, "downloader":Lela$a;
    if-eqz v0, :cond_2

    .line 1179
    iget-object v1, v0, Lela$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lela$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v1, v0, Lela$a;->d:Lela;

    .line 2043
    iget-object v1, v1, Lela;->a:Ljava/util/HashSet;

    .line 1183
    iget-object v2, v0, Lela$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    iget-object v1, v0, Lela$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcpx;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1188
    const-string/jumbo v1, "REQUEST"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/Request;

    .line 1189
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1190
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1191
    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 1192
    new-instance v2, Lela$a$1;

    invoke-direct {v2, v0}, Lela$a$1;-><init>(Lela$a;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1254
    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 1255
    iget-object v1, v0, Lela$a;->d:Lela;

    .line 3043
    iget-object v1, v1, Lela;->a:Ljava/util/HashSet;

    .line 1255
    iget-object v2, v0, Lela$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a()V

    goto :goto_0
.end method
