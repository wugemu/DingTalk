.class public Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.super Ljava/lang/Object;
.source "WPSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;,
        Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;,
        Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

.field private static g:Ljava/util/Timer;


# instance fields
.field private b:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

.field private c:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private f:Landroid/content/BroadcastReceiver;

.field private h:Ljava/util/TimerTask;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->d:Ljava/util/Map;

    .line 88
    const-string/jumbo v0, "WPSUtil"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->i:Ljava/lang/String;

    .line 658
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;)Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->c:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    .line 4568
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    .line 4569
    if-eqz v0, :cond_0

    .line 4573
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4574
    :goto_0
    return-object v0

    .line 4578
    :cond_1
    const/4 v0, 0x0

    .line 71
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Lgob;)Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lgob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    .line 3282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3283
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3286
    :cond_1
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 3288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    .line 3290
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 3286
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lhcs;->a(Ljava/io/File;)V

    .line 3296
    invoke-static {p3, v1}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3298
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    invoke-direct {v0, p0, v4}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;B)V

    .line 3299
    iput-object p4, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->c:Lgob;

    .line 3300
    iput-object p2, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3301
    sget-object v2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_CREATE_TEMP:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 3302
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    .line 3303
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->d:Ljava/util/Map;

    invoke-static {p2}, Lgpr;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a()Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    if-nez v0, :cond_1

    .line 97
    const-class v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 71
    sput-object p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->g:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Ljava/util/TimerTask;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->h:Ljava/util/TimerTask;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 535
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    sget v1, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 539
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p5, "wpsOpenListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 553
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->i:Ljava/lang/String;

    invoke-static {p2, p3, p4, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->d:Ljava/util/Map;

    invoke-static {p1}, Lgpr;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lgon;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 560
    :cond_0
    if-nez p5, :cond_1

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-interface {p5, p3, p4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 71
    .line 1542
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 71
    .line 2318
    if-eqz p1, :cond_1

    .line 2322
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2323
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$4;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f:Landroid/content/BroadcastReceiver;

    .line 2361
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2362
    const-string/jumbo v1, "cn.wps.moffice.file.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2363
    const-string/jumbo v1, "cn.wps.moffice.file.save"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2364
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    .prologue
    const/4 v3, 0x0

    .line 71
    .line 5371
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->c:Lgob;

    .line 5373
    if-eqz v0, :cond_0

    .line 5374
    new-instance v5, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;

    invoke-direct {v5, p0, p2, v0, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;Lgob;Landroid/content/Context;)V

    .line 5414
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 5415
    :goto_0
    return-void

    .line 5416
    :cond_0
    sget v0, Lfzs$h;->dt_space_error_inner:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 5417
    iget-object v5, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v6, "checkVersion"

    const-string/jumbo v7, "2012"

    const-string/jumbo v8, "originLockObject is null"

    move-object v4, p0

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;Lcma;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "x4"    # Lgob;
    .param p5, "x5"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;
    .param p6, "x6"    # Lcma;

    .prologue
    .line 71
    .line 2226
    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2230
    :cond_1
    const-string/jumbo v0, "wps_open_file"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$3;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;Lgob;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;Landroid/content/Context;)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcma;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->g:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 71
    .line 4164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    if-eqz v0, :cond_0

    .line 4165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    .line 3309
    :goto_0
    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a(Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;)V

    .line 3310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3311
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    return-void

    .line 4168
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$2;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    .line 4219
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    .prologue
    const/4 v1, 0x0

    .line 71
    .line 5425
    if-nez p2, :cond_0

    .line 5426
    sget v0, Lfzs$h;->dt_space_error_inner:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 5427
    const-string/jumbo v2, "overrideFile"

    const-string/jumbo v3, "2012"

    const-string/jumbo v4, "wpsEditingModel is null"

    move-object v0, p0

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 5433
    :goto_0
    return-void

    .line 5430
    :cond_0
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5431
    sget v0, Lfzs$h;->dt_space_error_inner:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 5432
    iget-object v3, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v4, "overrideFile"

    const-string/jumbo v5, "2012"

    const-string/jumbo v6, "temp file not exists"

    move-object v2, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 5436
    :cond_1
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 5438
    new-instance v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;)V

    .line 5491
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Landroid/content/Context;)V

    .line 5493
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;

    invoke-direct {v4, p0, p2, v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;Lgpe$b;)V

    invoke-interface {v2, v3, v0, v4}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->queryDentryModelBySpaceIdAndFileId(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->c:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->h:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcma;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "lockObject"    # Lgob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lgob;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p4, :cond_0

    .line 116
    const-string/jumbo v2, "downloadAndOpenFile"

    const-string/jumbo v3, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->space_save_param_error:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 158
    :goto_0
    return-void

    .line 120
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    if-nez p2, :cond_2

    .line 121
    :cond_1
    const-string/jumbo v2, "downloadAndOpenFile"

    const-string/jumbo v3, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->space_save_param_error:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 125
    :cond_2
    new-instance v5, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;B)V

    .line 127
    .local v5, "iAppOffice":Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;
    invoke-virtual {v5, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    const-string/jumbo v2, "downloadAndOpenFile"

    const-string/jumbo v3, "404"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->dt_space_revise_error_wps_not_install:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 132
    :cond_3
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;Lcma;)V

    .line 154
    .local v0, "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v2, Lcma;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 156
    .restart local v0    # "downloadListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLcma;)V

    goto :goto_0
.end method
