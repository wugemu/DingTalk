.class public abstract Ljit;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljij;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljit$6;
    }
.end annotation


# static fields
.field public static final ELECTION_KEY_BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final ELECTION_KEY_HOST:Ljava/lang/String; = "host"

.field public static final ELECTION_KEY_SDKVS:Ljava/lang/String; = "sdkvs"

.field public static final ELECTION_KEY_VERSION:Ljava/lang/String; = "elversion"

.field public static final ELECTION_SERVICE_ID:Ljava/lang/String; = "accs_election"

.field public static final ELE_ERROR_EXCEPTION:I = -0x385

.field public static final ELE_ERROR_SERVER:I = -0x384

.field public static final ELE_LIST_NULL:I = -0x386

.field private static final MAX_ELECTION_TIMES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ElectionServiceImpl"

.field private static electionPackCount:I

.field private static isPing:Z


# instance fields
.field private isElectioning:Z

.field private isHandleServerElection:Z

.field private isReportComplete:Z

.field private mBaseService:Landroid/app/Service;

.field private mContext:Landroid/content/Context;

.field private mDataListener:Ljig;

.field private mElectionResult:Ljir$a;

.field private mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mServerElecionTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private packMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resultBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput v0, Ljit;->electionPackCount:I

    .line 54
    sput-boolean v0, Ljit;->isPing:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 3
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Ljit;->isElectioning:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljit;->resultBack:Z

    .line 48
    iput-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    .line 56
    iput-object v2, p0, Ljit;->mBaseService:Landroid/app/Service;

    .line 357
    new-instance v0, Ljit$1;

    invoke-direct {v0, p0}, Ljit$1;-><init>(Ljit;)V

    iput-object v0, p0, Ljit;->mDataListener:Ljig;

    .line 591
    iput-boolean v1, p0, Ljit;->isReportComplete:Z

    .line 592
    iput-boolean v1, p0, Ljit;->isHandleServerElection:Z

    .line 82
    iput-object p1, p0, Ljit;->mBaseService:Landroid/app/Service;

    .line 83
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljit;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljit;->packMap:Ljava/util/Map;

    .line 85
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 86
    invoke-static {}, Lih;->a()Lij;

    move-result-object v0

    const-class v1, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v0, v1}, Lij;->a(Ljava/lang/Class;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Ljit;[BI)V
    .locals 0
    .param p0, "x0"    # Ljit;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljit;->handleServerElectionResult([BI)V

    return-void
.end method

.method static synthetic access$100(Ljit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Ljit;

    .prologue
    .line 37
    iget-object v0, p0, Ljit;->mServerElecionTask:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Ljit;->isPing:Z

    return v0
.end method

.method static synthetic access$300(Ljit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljit;

    .prologue
    .line 37
    iget-object v0, p0, Ljit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Ljit;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljit;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljit;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljit;)Z
    .locals 1
    .param p0, "x0"    # Ljit;

    .prologue
    .line 37
    iget-boolean v0, p0, Ljit;->resultBack:Z

    return v0
.end method

.method static synthetic access$600(Ljit;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljit;

    .prologue
    .line 37
    iget-object v0, p0, Ljit;->packMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Ljit;)V
    .locals 0
    .param p0, "x0"    # Ljit;

    .prologue
    .line 37
    invoke-direct {p0}, Ljit;->onReportComplete()V

    return-void
.end method

.method private handleResult(Ljava/lang/String;)V
    .locals 10
    .param p1, "sudoPack"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 707
    :try_start_0
    iget-object v4, p0, Ljit;->mElectionResult:Ljir$a;

    if-nez v4, :cond_0

    .line 708
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v4

    iput-object v4, p0, Ljit;->mElectionResult:Ljir$a;

    .line 710
    :cond_0
    iget-object v4, p0, Ljit;->mElectionResult:Ljir$a;

    iput-object p1, v4, Ljir$a;->a:Ljava/lang/String;

    .line 711
    iget-object v4, p0, Ljit;->mElectionResult:Ljir$a;

    iget v5, v4, Ljir$a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljir$a;->b:I

    .line 712
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    iget-object v5, p0, Ljit;->mElectionResult:Ljir$a;

    invoke-static {v4, v5}, Ljir;->a(Landroid/content/Context;Ljir$a;)V

    .line 713
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "handleResult notify result"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "packMap"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Ljit;->packMap:Ljava/util/Map;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    iget-object v4, p0, Ljit;->packMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 715
    .local v2, "pack":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 716
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v1, "noticeIntent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string/jumbo v4, "operate"

    sget-object v5, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 719
    const-string/jumbo v4, "sudoPack"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string/jumbo v4, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 722
    :try_start_1
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 723
    :catch_0
    move-exception v3

    .line 724
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "handleResult startService"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 729
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "noticeIntent":Landroid/content/Intent;
    .end local v2    # "pack":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 730
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "handleResult"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 733
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private handleServerElectionResult([BI)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 649
    iget-boolean v8, p0, Ljit;->isHandleServerElection:Z

    if-eqz v8, :cond_1

    .line 650
    const-string/jumbo v7, "ElectionServiceImpl"

    const-string/jumbo v8, "server election handled, return"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iput-boolean v7, p0, Ljit;->isHandleServerElection:Z

    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "host":Ljava/lang/String;
    const/4 v4, 0x0

    .line 657
    .local v4, "needLocal":Z
    const/16 v8, 0xc8

    if-ne p2, v8, :cond_2

    if-nez p1, :cond_6

    .line 658
    :cond_2
    :try_start_0
    const-string/jumbo v8, "ElectionServiceImpl"

    const-string/jumbo v9, "handleServerElectionResult fail, start local election"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "error"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const/16 v8, 0xc9

    if-eq p2, v8, :cond_3

    .line 661
    const/4 v4, 0x1

    .line 663
    :cond_3
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_4

    .line 664
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput p2, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 665
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string/jumbo v9, "server status error"

    iput-object v9, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 693
    invoke-direct {p0}, Ljit;->localElection()Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_5
    invoke-direct {p0, v0}, Ljit;->handleResult(Ljava/lang/String;)V

    .line 696
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_0

    .line 697
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_c

    :goto_2
    iput v6, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 698
    invoke-static {}, Lih;->a()Lij;

    move-result-object v6

    iget-object v7, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v6, v7}, Lij;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_0

    .line 668
    :cond_6
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 669
    .local v1, "json":Ljava/lang/String;
    const-string/jumbo v8, "ElectionServiceImpl"

    const-string/jumbo v9, "handleServerElectionResult"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "json"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    .local v3, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "host"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 673
    const/4 v4, 0x1

    .line 675
    :cond_7
    const-string/jumbo v8, "blacklist"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 676
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 677
    iget-object v8, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Ljir;->a(Landroid/content/Context;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 684
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 685
    .local v5, "t":Ljava/lang/Throwable;
    const/4 v4, 0x1

    .line 686
    :try_start_2
    const-string/jumbo v8, "ElectionServiceImpl"

    const-string/jumbo v9, "handleServerElectionResult"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 687
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v8, :cond_8

    .line 688
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v9, -0x385

    iput v9, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 689
    iget-object v8, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    :cond_8
    invoke-direct {p0}, Ljit;->localElection()Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-direct {p0, v0}, Ljit;->handleResult(Ljava/lang/String;)V

    .line 696
    iget-object v7, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v7, :cond_0

    .line 697
    iget-object v7, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v6, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 698
    invoke-static {}, Lih;->a()Lij;

    move-result-object v6

    iget-object v7, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v6, v7}, Lij;->a(Lanet/channel/statist/StatObject;)V

    goto/16 :goto_0

    .line 679
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v1    # "json":Ljava/lang/String;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    :cond_9
    :try_start_3
    iget-object v8, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ljir;->c(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 692
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_a

    .line 693
    invoke-direct {p0}, Ljit;->localElection()Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_a
    invoke-direct {p0, v0}, Ljit;->handleResult(Ljava/lang/String;)V

    .line 696
    iget-object v9, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v9, :cond_b

    .line 697
    iget-object v9, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v4, :cond_d

    :goto_3
    iput v6, v9, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 698
    invoke-static {}, Lih;->a()Lij;

    move-result-object v6

    iget-object v7, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v6, v7}, Lij;->a(Lanet/channel/statist/StatObject;)V

    :cond_b
    throw v8

    :cond_c
    move v6, v7

    .line 697
    goto/16 :goto_2

    :cond_d
    move v6, v7

    goto :goto_3
.end method

.method private localElection()Ljava/lang/String;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, "sudoPack":Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, "error":I
    const/4 v2, 0x0

    .line 306
    .local v2, "errorMsg":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Ljit;->packMap:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Ljit;->packMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 307
    iget-object v6, p0, Ljit;->mContext:Landroid/content/Context;

    iget-object v7, p0, Ljit;->packMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljir;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 313
    :goto_0
    const-string/jumbo v6, "ElectionServiceImpl"

    const-string/jumbo v7, "localElection"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "host"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v6, :cond_1

    .line 320
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 322
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v2, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 324
    :cond_0
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    iput v4, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 325
    invoke-static {}, Lih;->a()Lij;

    move-result-object v4

    iget-object v5, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v4, v5}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 330
    :cond_1
    :goto_2
    return-object v3

    .line 309
    :cond_2
    const/16 v1, -0x386

    .line 310
    :try_start_1
    const-string/jumbo v2, "apps is null"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v4, v5

    .line 324
    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v6, "ElectionServiceImpl"

    const-string/jumbo v7, "localElection error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 316
    const/16 v1, -0x385

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 319
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v6, :cond_1

    .line 320
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 321
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v7, -0x385

    iput v7, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 322
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v2, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 324
    :cond_4
    iget-object v6, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    iput v4, v6, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 325
    invoke-static {}, Lih;->a()Lij;

    move-result-object v4

    iget-object v5, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v4, v5}, Lij;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_2

    :cond_5
    move v4, v5

    .line 324
    goto :goto_3

    .line 319
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v7, :cond_7

    .line 320
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 321
    iget-object v7, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput v1, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 322
    iget-object v7, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iput-object v2, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 324
    :cond_6
    iget-object v7, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_4
    iput v4, v7, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 325
    invoke-static {}, Lih;->a()Lij;

    move-result-object v4

    iget-object v5, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v4, v5}, Lij;->a(Lanet/channel/statist/StatObject;)V

    :cond_7
    throw v6

    :cond_8
    move v4, v5

    .line 324
    goto :goto_4
.end method

.method private onReportComplete()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    :try_start_0
    iget-object v2, p0, Ljit;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Ljit;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 601
    const/4 v2, 0x0

    iput-object v2, p0, Ljit;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 603
    :cond_0
    iget-boolean v2, p0, Ljit;->isReportComplete:Z

    if-eqz v2, :cond_1

    .line 604
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v4, "reportcompleted, return"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iput-boolean v3, p0, Ljit;->isElectioning:Z

    .line 644
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Ljit;->isReportComplete:Z

    .line 609
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v5, "onReportComplete"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    iget-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 611
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    .line 613
    :cond_2
    iget-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    iget-object v5, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 617
    iget-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v0, v2, v5

    .line 618
    .local v0, "sudoPack":Ljava/lang/String;
    iget-object v2, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_3

    .line 619
    iget-object v5, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput v2, v5, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->ret:I

    .line 620
    invoke-static {}, Lih;->a()Lij;

    move-result-object v2

    iget-object v4, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-interface {v2, v4}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 622
    :cond_3
    invoke-direct {p0, v0}, Ljit;->handleResult(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    .end local v0    # "sudoPack":Ljava/lang/String;
    :goto_2
    iput-boolean v3, p0, Ljit;->isElectioning:Z

    goto :goto_0

    .restart local v0    # "sudoPack":Ljava/lang/String;
    :cond_4
    move v2, v4

    .line 619
    goto :goto_1

    .line 625
    .end local v0    # "sudoPack":Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v2, p0, Ljit;->packMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Ljit;->serverElection(Ljava/util/Map;)V

    .line 626
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljit;->isHandleServerElection:Z

    .line 627
    iget-object v2, p0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Ljit$5;

    invoke-direct {v4, p0}, Ljit$5;-><init>(Ljit;)V

    const-wide/16 v6, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Ljit;->mServerElecionTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 636
    :catch_0
    move-exception v1

    .line 637
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_6

    .line 638
    iget-object v2, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v4, -0x385

    iput v4, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 639
    iget-object v2, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    .line 641
    :cond_6
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v4, "onReportComplete"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v1, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    iput-boolean v3, p0, Ljit;->isElectioning:Z

    goto/16 :goto_0

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Ljit;->isElectioning:Z

    throw v2
.end method

.method private selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "startReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    invoke-static {p1}, Ljir;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "pack":Ljava/lang/String;
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "selectAppToElection"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "pkg"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    sput-boolean v6, Ljir;->c:Z

    .line 465
    iput-boolean v6, p0, Ljit;->resultBack:Z

    .line 466
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, "startIntent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    const-string/jumbo v2, "operate"

    sget-object v3, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 469
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string/jumbo v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    :goto_0
    iget-object v2, p0, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 480
    const/4 v2, 0x0

    iput-object v2, p0, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 482
    :cond_0
    iget-object v2, p0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Ljit$3;

    invoke-direct {v3, p0, p1}, Ljit$3;-><init>(Ljit;Landroid/content/Context;)V

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 500
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 501
    return-void

    .line 473
    :cond_1
    const-string/jumbo v2, "operate"

    sget-object v3, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 474
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private serverElection(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p1, "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 335
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "serverElection start"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "packs"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v2}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    iput-object v2, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 338
    :try_start_0
    iget-object v2, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string/jumbo v3, "server"

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 339
    iget-object v2, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v3, p0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    iget-object v3, v3, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 342
    :cond_0
    iget-object v2, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v2

    const-string/jumbo v3, "accs_election"

    iget-object v4, p0, Ljit;->mDataListener:Ljig;

    invoke-virtual {v2, v3, v4}, Ljim;->a(Ljava/lang/String;Ljig;)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v2, "command"

    const/16 v3, 0x69

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string/jumbo v2, "packs"

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 348
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljit;->onHostStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v3, -0x385

    iput v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 351
    iget-object v2, p0, Ljit;->mServerElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private tryElection(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 398
    :try_start_0
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->isFirstStart(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "first start"

    invoke-direct {p0, v4, v5}, Ljit;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->setSdkStart(Landroid/content/Context;)V

    .line 453
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v4

    iget-object v0, v4, Ljir$a;->a:Ljava/lang/String;

    .line 404
    .local v0, "currentElectionPack":Ljava/lang/String;
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "currentPack":Ljava/lang/String;
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection begin"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isFirstStart"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/taobao/accs/utl/UtilityImpl;->isFirstStart(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "currentPack"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "currentElectionPack"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "host is empty, try selectAppToElection"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "host null"

    invoke-direct {p0, v4, v5}, Ljit;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v0    # "currentElectionPack":Ljava/lang/String;
    .end local v1    # "currentPack":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection error"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "currentElectionPack":Ljava/lang/String;
    .restart local v1    # "currentPack":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 415
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v3, "pingIntent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v4, "operate"

    sget-object v5, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 418
    const-string/jumbo v4, "com.taobao.accs.ChannelService"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string/jumbo v4, "pingPack"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v4, p0, Ljit;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 421
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection send PING_ELECTION"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "to pkg"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    :try_start_3
    iget-object v4, p0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Ljit$2;

    invoke-direct {v5, p0, v0}, Ljit$2;-><init>(Ljit;Ljava/lang/String;)V

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 422
    .end local v3    # "pingIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 423
    .restart local v2    # "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "tryElection startService error"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "currentElectionPack"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 425
    :try_start_5
    iget-object v4, p0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Ljit$2;

    invoke-direct {v5, p0, v0}, Ljit$2;-><init>(Ljit;Ljava/lang/String;)V

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v6, Ljit$2;

    invoke-direct {v6, p0, v0}, Ljit$2;-><init>(Ljit;Ljava/lang/String;)V

    const-wide/16 v8, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v8, v9, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    throw v4

    .line 445
    :cond_2
    const-string/jumbo v4, "ElectionServiceImpl"

    const-string/jumbo v5, "curr is host, no need election"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p0}, Ljit;->onVotedHost()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "onCreate,"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "sdkv"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xd5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 292
    const-string/jumbo v0, "ElectionServiceImpl"

    const-string/jumbo v1, "Service onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iput-object v3, p0, Ljit;->mContext:Landroid/content/Context;

    .line 294
    iput-object v3, p0, Ljit;->mBaseService:Landroid/app/Service;

    .line 295
    return-void
.end method

.method public abstract onHostStartCommand(Landroid/content/Intent;II)I
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 30
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const/16 v25, 0x2

    .line 275
    :goto_0
    return v25

    .line 102
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "currentPack":Ljava/lang/String;
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "onStartCommand begin"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "action"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v6, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Ljir;->b()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 110
    :try_start_0
    const-string/jumbo v25, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "packageName":Ljava/lang/String;
    const-string/jumbo v25, "android.intent.extra.REPLACING"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 114
    .local v18, "replaced":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v11

    .line 115
    .local v11, "electionResult":Ljir$a;
    iget-object v0, v11, Ljir$a;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 116
    .local v22, "sudoPack":Ljava/lang/String;
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "onstartcommand PACKAGE_REMOVED"

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v15, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "host"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    aput-object v22, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, "replaced"

    aput-object v29, v27, v28

    const/16 v28, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    move-object/from16 v0, v22

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljir;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 120
    const/16 v25, 0x0

    move/from16 v0, v25

    iput v0, v11, Ljir$a;->b:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v11}, Ljir;->a(Landroid/content/Context;Ljir$a;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "host removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljit;->startElection(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v11    # "electionResult":Ljir$a;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "replaced":Z
    .end local v22    # "sudoPack":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v25, "com.taobao.accs.intent.action.START_SERVICE"

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 243
    const-string/jumbo v25, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 245
    .restart local v15    # "packageName":Ljava/lang/String;
    const-string/jumbo v25, "appKey"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "appkey":Ljava/lang/String;
    const-string/jumbo v25, "ttid"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 248
    .local v24, "ttid":Ljava/lang/String;
    const-string/jumbo v25, "app_sercet"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "appSecret":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljim;->a(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "try to setAppInfo"

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "appkey"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v8, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "appSecret"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    aput-object v7, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, "ttid"

    aput-object v29, v27, v28

    const/16 v28, 0x5

    aput-object v24, v27, v28

    const/16 v28, 0x6

    const-string/jumbo v29, "pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x7

    aput-object v15, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-static {v0, v8, v1, v2}, Lcom/taobao/accs/utl/UtilityImpl;->setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    invoke-static {}, Ljir;->b()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 259
    const/16 v25, 0x2

    goto/16 :goto_0

    .line 124
    .end local v7    # "appSecret":Ljava/lang/String;
    .end local v8    # "appkey":Ljava/lang/String;
    .end local v24    # "ttid":Ljava/lang/String;
    .restart local v11    # "electionResult":Ljir$a;
    .restart local v18    # "replaced":Z
    .restart local v22    # "sudoPack":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "onstartcommand PACKAGE_REMOVED no need election"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 229
    .end local v11    # "electionResult":Ljir$a;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "replaced":Z
    .end local v22    # "sudoPack":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 230
    .local v23, "t":Ljava/lang/Throwable;
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "onStartCommand"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 127
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v11    # "electionResult":Ljir$a;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v18    # "replaced":Z
    .restart local v22    # "sudoPack":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "onstartcommand PACKAGE_REMOVED no need election"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 129
    .end local v11    # "electionResult":Ljir$a;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "replaced":Z
    .end local v22    # "sudoPack":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 130
    const-string/jumbo v25, "operate"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Lcom/taobao/accs/common/Constants$Operate;

    .line 131
    .local v14, "operate":Lcom/taobao/accs/common/Constants$Operate;
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "operate is receive"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "operate"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v14, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget-object v25, Ljit$6;->a:[I

    invoke-virtual {v14}, Lcom/taobao/accs/common/Constants$Operate;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 227
    :cond_6
    :goto_2
    const/16 v25, 0x2

    goto/16 :goto_0

    .line 135
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Ljit;->tryElection(Landroid/content/Intent;)V

    goto :goto_2

    .line 139
    :pswitch_1
    const-string/jumbo v25, "reason"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 140
    .local v17, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljit;->startElection(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 144
    .end local v17    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v25, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "fromPack":Ljava/lang/String;
    const-string/jumbo v25, "elversion"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 146
    .local v12, "electionVersion":I
    new-instance v19, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v19, "reportIntent":Landroid/content/Intent;
    const-string/jumbo v25, "operate"

    sget-object v26, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v25, "packageName"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v25, "com.taobao.accs.ChannelService"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/16 v20, 0xd5

    .line 152
    .local v20, "reportSdkv":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Ljir;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 153
    const-string/jumbo v25, "sdkVersion"

    const/16 v26, 0xd5

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "report"

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "sdkv"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "from pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, "to pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x5

    aput-object v13, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 155
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 162
    .end local v12    # "electionVersion":I
    .end local v13    # "fromPack":Ljava/lang/String;
    .end local v19    # "reportIntent":Landroid/content/Intent;
    .end local v20    # "reportSdkv":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljit;->isElectioning:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 164
    const-string/jumbo v25, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "electionPack":Ljava/lang/String;
    const-string/jumbo v25, "sdkVersion"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 166
    .local v21, "sdkVersion":I
    sget v25, Ljit;->electionPackCount:I

    add-int/lit8 v25, v25, -0x1

    sput v25, Ljit;->electionPackCount:I

    .line 167
    if-eqz v21, :cond_8

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->packMap:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_8
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "collect info"

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "sdkv"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "election pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    aput-object v10, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, "electionPackCount"

    aput-object v29, v27, v28

    const/16 v28, 0x5

    sget v29, Ljit;->electionPackCount:I

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    sget v25, Ljit;->electionPackCount:I

    if-nez v25, :cond_6

    .line 172
    invoke-direct/range {p0 .. p0}, Ljit;->onReportComplete()V

    goto/16 :goto_2

    .line 175
    .end local v10    # "electionPack":Ljava/lang/String;
    .end local v21    # "sdkVersion":I
    :cond_9
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "not electioning, but receive report"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 180
    :pswitch_4
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljit;->resultBack:Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 183
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Ljit;->mSelectAppTimeOutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 185
    :cond_a
    const-string/jumbo v25, "sudoPack"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 186
    .restart local v22    # "sudoPack":Ljava/lang/String;
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "election result"

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "host"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v22, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "curr pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    aput-object v9, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const-string/jumbo v25, "accs"

    const-string/jumbo v26, "ele_pkg_times"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-wide/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljir;->b(Landroid/content/Context;)Ljir$a;

    .line 189
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 191
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 192
    invoke-virtual/range {p0 .. p0}, Ljit;->onVotedHost()V

    goto/16 :goto_2

    .line 195
    :cond_b
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljit;->stopSelf(Z)V

    goto/16 :goto_2

    .line 201
    .end local v22    # "sudoPack":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Ljir$a;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 202
    .restart local v22    # "sudoPack":Ljava/lang/String;
    const-string/jumbo v25, "pingPack"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 204
    .local v16, "pingPack":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 205
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 206
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "host receive ping, and report ping"

    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "to pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v16, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "host"

    aput-object v29, v27, v28

    const/16 v28, 0x3

    aput-object v22, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v19, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v19    # "reportIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string/jumbo v25, "com.taobao.accs.ChannelService"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string/jumbo v25, "operate"

    sget-object v26, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v25, "isPing"

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    const-string/jumbo v25, "pingPack"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v25, "sdkVersion"

    const/16 v26, 0xd5

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    invoke-virtual/range {p0 .. p0}, Ljit;->onVotedHost()V

    .line 219
    .end local v19    # "reportIntent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, v16

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 220
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "receive host\'s ping back"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "host"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v22, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const-string/jumbo v25, "isPing"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    sput-boolean v25, Ljit;->isPing:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 233
    .end local v14    # "operate":Lcom/taobao/accs/common/Constants$Operate;
    .end local v16    # "pingPack":Ljava/lang/String;
    .end local v22    # "sudoPack":Ljava/lang/String;
    :cond_d
    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 234
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "election disabled"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const/16 v25, 0x2

    goto/16 :goto_0

    .line 263
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v10, v0, Ljir$a;->a:Ljava/lang/String;

    .line 265
    .restart local v10    # "electionPack":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljit;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_f

    invoke-static {}, Ljir;->b()Z

    move-result v25

    if-nez v25, :cond_10

    .line 268
    :cond_f
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "deliver to channelservice"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "host pkg"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v10, v27, v28

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual/range {p0 .. p3}, Ljit;->onHostStartCommand(Landroid/content/Intent;II)I

    move-result v25

    goto/16 :goto_0

    .line 271
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljit;->isElectioning:Z

    move/from16 v25, v0

    if-nez v25, :cond_11

    const-string/jumbo v25, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 272
    const-string/jumbo v25, "ElectionServiceImpl"

    const-string/jumbo v26, "not electioning and not host, stop"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljit;->stopSelf(Z)V

    .line 275
    :cond_11
    const/16 v25, 0x2

    goto/16 :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onVotedHost()V
.end method

.method public startElection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "startReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 513
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Ljit;->isElectioning:Z

    if-eqz v10, :cond_1

    .line 514
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "isElectioning return"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static/range {p1 .. p1}, Ljir;->a(Landroid/content/Context;)Ljir$a;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Ljit;->mElectionResult:Ljir$a;

    .line 518
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mElectionResult:Ljir$a;

    iget v10, v10, Ljir$a;->b:I

    const/16 v11, 0x14

    if-le v10, v11, :cond_2

    .line 519
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection too many times, return"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "times"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljit;->mElectionResult:Ljir$a;

    iget v14, v14, Ljir$a;->b:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    const-string/jumbo v10, "accs"

    const-string/jumbo v11, "ele_over_max_times"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v10, v11, v12, v14, v15}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v5

    .line 579
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection error"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v5, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 580
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Ljit;->isElectioning:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    if-eqz v10, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const/16 v11, -0x385

    iput v11, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorCode:I

    .line 583
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->errorMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 524
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    new-instance v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    invoke-direct {v10}, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    .line 525
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    const-string/jumbo v11, "local"

    iput-object v11, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->type:Ljava/lang/String;

    .line 526
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mLocalElectionMonitor:Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;

    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/taobao/accs/ut/monitor/ElectionRateMonitor;->reason:Ljava/lang/String;

    .line 528
    const-string/jumbo v10, "accs"

    const-string/jumbo v11, "ele_start_times"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0, v12, v13}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 532
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v2, "accsIntent":Landroid/content/Intent;
    const/16 v10, 0x20

    invoke-virtual {v8, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 538
    .local v7, "localList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Ljit;->isElectioning:Z

    .line 539
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    .line 540
    :cond_3
    const-string/jumbo v11, "ElectionServiceImpl"

    const-string/jumbo v12, "startElection apps < 2"

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v14, "services"

    aput-object v14, v13, v10

    const/4 v14, 0x1

    if-nez v7, :cond_4

    const-string/jumbo v10, "null"

    :goto_1
    aput-object v10, v13, v14

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-direct/range {p0 .. p0}, Ljit;->onReportComplete()V

    goto/16 :goto_0

    .line 540
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 544
    :cond_5
    const/4 v10, 0x0

    sput v10, Ljit;->electionPackCount:I

    .line 545
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection begin"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "locallist"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "size"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 547
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_6

    .line 550
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_6

    .line 553
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 554
    .local v4, "clientPack":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 555
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection unvailable app"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "pkg"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 558
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v3, "askIntent":Landroid/content/Intent;
    const-string/jumbo v10, "operate"

    sget-object v11, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 560
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string/jumbo v10, "packageName"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string/jumbo v10, "elversion"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    const-string/jumbo v10, "com.taobao.accs.ChannelService"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string/jumbo v10, "ElectionServiceImpl"

    const-string/jumbo v11, "startElection askversion"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "receive pkg"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 566
    sget v10, Ljit;->electionPackCount:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Ljit;->electionPackCount:I

    goto :goto_2

    .line 568
    .end local v3    # "askIntent":Landroid/content/Intent;
    .end local v4    # "clientPack":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Ljit;->isReportComplete:Z

    .line 569
    move-object/from16 v0, p0

    iget-object v10, v0, Ljit;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v11, Ljit$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljit$4;-><init>(Ljit;)V

    const-wide/16 v12, 0x3

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Ljit;->mReportTimeOutTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopSelf(Z)V
    .locals 3
    .param p1, "kill"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 737
    const-string/jumbo v0, "ElectionServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldStopSelf, kill:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    iget-object v0, p0, Ljit;->mBaseService:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Ljit;->mBaseService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 741
    :cond_0
    if-eqz p1, :cond_1

    .line 742
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 744
    :cond_1
    return-void
.end method
