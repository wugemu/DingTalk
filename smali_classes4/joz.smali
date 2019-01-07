.class public Ljoz;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljoz$b;,
        Ljoz$a;,
        Ljoz$c;,
        Ljoz$d;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/ClassLoader;

.field public a:Landroid/app/Application;

.field public b:Ljava/lang/String;

.field c:Z

.field public d:Ljmn;

.field public e:Z

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:I

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/SharedPreferences;

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/alipay/euler/andfix/patch/PatchManager;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private z:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v2, p0, Ljoz;->f:I

    .line 90
    iput v2, p0, Ljoz;->g:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljoz;->h:J

    .line 93
    iput v2, p0, Ljoz;->i:I

    .line 94
    iput v2, p0, Ljoz;->j:I

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljoz;->k:Ljava/util/HashMap;

    .line 101
    iput-boolean v3, p0, Ljoz;->m:Z

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ljoz;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    iput-boolean v2, p0, Ljoz;->q:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Ljoz;->r:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Ljoz;->v:Z

    .line 112
    iput-boolean v2, p0, Ljoz;->w:Z

    .line 114
    iput-boolean v2, p0, Ljoz;->x:Z

    .line 115
    iput-boolean v3, p0, Ljoz;->e:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljoz;->y:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljoz;-><init>()V

    return-void
.end method

.method static synthetic a(Ljoz;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-object v0, p0, Ljoz;->a:Landroid/app/Application;

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "patchVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 660
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 661
    const-string/jumbo v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 662
    .local v0, "index":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "tmpName":Ljava/lang/String;
    const-string/jumbo v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "s":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 669
    .end local v0    # "index":I
    .end local v2    # "s":[Ljava/lang/String;
    .end local v3    # "tmpName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static a()Ljoz;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Ljoz$d;->a()Ljoz;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ZI)V
    .locals 17
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "immediatelyLoad"    # Z
    .param p3, "patchVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    if-nez p2, :cond_0

    .line 608
    :goto_0
    return-void

    .line 573
    :cond_0
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Ljoz;->u:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->initAndfixManager()V

    .line 577
    :cond_1
    new-instance v14, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-direct {v14, v11}, Lcom/alipay/euler/andfix/patch/Patch;-><init>(Ljava/io/File;)V

    .line 580
    .local v14, "patch":Lcom/alipay/euler/andfix/patch/Patch;
    const/4 v12, 0x0

    .line 581
    .local v12, "isBundleMonitor":Z
    invoke-virtual {v14}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v16

    .line 582
    .local v16, "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 583
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 584
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 586
    .local v15, "patchName":Ljava/lang/String;
    const-string/jumbo v1, "com_taobao_maindex"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Ljoz;->u:Lcom/alipay/euler/andfix/patch/PatchManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->A:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v15, v14, v2}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch(Ljava/lang/String;Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 605
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "isBundleMonitor":Z
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .end local v15    # "patchName":Ljava/lang/String;
    .end local v16    # "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 606
    .local v10, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    const-string/jumbo v2, "load"

    const-string/jumbo v3, "1"

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static/range {v1 .. v7}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 590
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "isBundleMonitor":Z
    .restart local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v14    # "patch":Lcom/alipay/euler/andfix/patch/Patch;
    .restart local v15    # "patchName":Ljava/lang/String;
    .restart local v16    # "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string/jumbo v1, "_"

    const-string/jumbo v2, "."

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 5613
    .local v8, "bundleName":Ljava/lang/String;
    invoke-static {}, Landroid/taobao/atlas/framework/Atlas;->getInstance()Landroid/taobao/atlas/framework/Atlas;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/taobao/atlas/framework/Atlas;->getBundle(Ljava/lang/String;)Lorg/osgi/framework/Bundle;

    move-result-object v1

    check-cast v1, Landroid/taobao/atlas/framework/BundleImpl;

    .line 5614
    if-nez v1, :cond_3

    .line 5615
    const/4 v9, 0x0

    .line 592
    .local v9, "classLoader":Ljava/lang/ClassLoader;
    :goto_2
    if-eqz v9, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget-object v1, v0, Ljoz;->u:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v1, v15, v14, v9}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch(Ljava/lang/String;Lcom/alipay/euler/andfix/patch/Patch;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 5617
    .end local v9    # "classLoader":Ljava/lang/ClassLoader;
    :cond_3
    invoke-virtual {v1}, Landroid/taobao/atlas/framework/BundleImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    goto :goto_2

    .line 596
    .restart local v9    # "classLoader":Ljava/lang/ClassLoader;
    :cond_4
    if-nez v12, :cond_5

    .line 597
    invoke-static {}, Landroid/taobao/atlas/framework/Atlas;->getInstance()Landroid/taobao/atlas/framework/Atlas;

    move-result-object v1

    new-instance v2, Ljoz$b;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Ljoz$b;-><init>(Ljoz;Lcom/alipay/euler/andfix/patch/Patch;)V

    invoke-virtual {v1, v2}, Landroid/taobao/atlas/framework/Atlas;->addBundleListener(Lorg/osgi/framework/BundleListener;)V

    .line 599
    :cond_5
    const/4 v12, 0x1

    .line 602
    goto/16 :goto_1

    .line 604
    .end local v8    # "bundleName":Ljava/lang/String;
    .end local v9    # "classLoader":Ljava/lang/ClassLoader;
    .end local v15    # "patchName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    const-string/jumbo v2, "load"

    const-string/jumbo v3, "0"

    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static/range {v1 .. v7}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Ljoz;Landroid/content/Context;)V
    .locals 6
    .param p0, "x0"    # Ljoz;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 55
    .line 9987
    iget-object v0, p0, Ljoz;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 9988
    const/4 v1, 0x0

    .line 9989
    if-eqz v0, :cond_4

    .line 9990
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 9992
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9993
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 9972
    :cond_1
    :try_start_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 9973
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 9974
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 9975
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9976
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9977
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9974
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    .line 9983
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private declared-synchronized a(Ljpc;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "patchInfo"    # Ljpc;
    .param p2, "dataSource"    # Ljava/lang/String;
    .param p3, "isTestMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 623
    monitor-enter p0

    if-nez p1, :cond_0

    .line 656
    :goto_0
    monitor-exit p0

    return-void

    .line 628
    :cond_0
    :try_start_0
    new-instance v1, Ljoy;

    iget-object v5, p0, Ljoz;->a:Landroid/app/Application;

    invoke-direct {v1, p1, v5, p2, p3}, Ljoy;-><init>(Ljpc;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 629
    .local v1, "listener":Ljoy;
    new-instance v4, Ljlt;

    invoke-direct {v4}, Ljlt;-><init>()V

    .line 630
    .local v4, "request":Ljlt;
    new-instance v0, Ljlu;

    .line 6171
    iget-object v5, p1, Ljpc;->k:Ljava/lang/String;

    const-string/jumbo v6, "dexpatch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6172
    iget-object v5, p1, Ljpc;->n:Ljpa;

    .line 7025
    iget-object v6, v5, Ljpa;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7026
    iget-object v5, v5, Ljpa;->c:Ljava/lang/String;

    .line 630
    :goto_1
    invoke-direct {v0, v5}, Ljlu;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, "item":Ljlu;
    iget-object v5, p1, Ljpc;->g:Ljava/lang/String;

    iput-object v5, v0, Ljlu;->c:Ljava/lang/String;

    .line 632
    iget-wide v6, p1, Ljpc;->d:J

    iput-wide v6, v0, Ljlu;->b:J

    .line 633
    iget-object v5, p1, Ljpc;->k:Ljava/lang/String;

    const-string/jumbo v6, "andfix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 634
    iget-object v5, p1, Ljpc;->b:Ljava/lang/String;

    iget v6, p1, Ljpc;->f:I

    invoke-static {v5, v6}, Ljoz;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 636
    iput-object v2, v0, Ljlu;->d:Ljava/lang/String;

    .line 640
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljlv;

    invoke-direct {v3}, Ljlv;-><init>()V

    .line 641
    .local v3, "param":Ljlv;
    iget-object v5, p0, Ljoz;->t:Ljava/lang/String;

    iput-object v5, v3, Ljlv;->g:Ljava/lang/String;

    .line 642
    const-string/jumbo v5, "hotpatch"

    iput-object v5, v3, Ljlv;->a:Ljava/lang/String;

    .line 643
    iput-object v3, v4, Ljlt;->b:Ljlv;

    .line 644
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Ljlt;->a:Ljava/util/List;

    .line 645
    iget-object v5, v4, Ljlt;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    if-eqz p3, :cond_2

    .line 647
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Ljoz$3;

    invoke-direct {v6, p0}, Ljoz$3;-><init>(Ljoz;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    :cond_2
    invoke-static {}, Ljlb;->a()Ljlb;

    invoke-static {v4, v1}, Ljlb;->a(Ljlt;Ljls;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 623
    .end local v0    # "item":Ljlu;
    .end local v1    # "listener":Ljoy;
    .end local v3    # "param":Ljlv;
    .end local v4    # "request":Ljlt;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 7028
    .restart local v1    # "listener":Ljoy;
    .restart local v4    # "request":Ljlt;
    :cond_3
    :try_start_1
    iget-object v5, v5, Ljpa;->b:Ljava/lang/String;

    goto :goto_1

    .line 6174
    :cond_4
    iget-object v5, p1, Ljpc;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;IZZZ)Z
    .locals 14
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "patchVersion"    # I
    .param p3, "isAndFix"    # Z
    .param p4, "isStartStage"    # Z
    .param p5, "immediatelyLoad"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 480
    monitor-enter p0

    if-nez p3, :cond_0

    .line 481
    const/4 v2, 0x1

    .line 559
    :goto_0
    monitor-exit p0

    return v2

    .line 484
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const/4 v2, 0x0

    goto :goto_0

    .line 487
    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 489
    const/4 v2, 0x0

    goto :goto_0

    .line 493
    :cond_2
    iget-object v2, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "is_native_crash"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 494
    .local v12, "preNativeCrashVersion":Ljava/lang/String;
    iget-object v2, p0, Ljoz;->b:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 495
    const/4 v2, 0x0

    goto :goto_0

    .line 498
    :cond_3
    iget-object v2, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "is_java_crash"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 499
    .local v13, "problemPatchVersion":I
    move/from16 v0, p2

    if-ne v13, v0, :cond_4

    .line 500
    const/4 v2, 0x0

    goto :goto_0

    .line 503
    :cond_4
    iget-object v2, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "use_support"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 504
    const/4 v2, 0x0

    goto :goto_0

    .line 509
    :cond_5
    :try_start_1
    move/from16 v0, p5

    move/from16 v1, p2

    invoke-direct {p0, p1, v0, v1}, Ljoz;->a(Ljava/lang/String;ZI)V

    .line 511
    if-eqz p4, :cond_6

    .line 512
    const-string/jumbo v2, "Page_hotpatch"

    const-string/jumbo v4, "hotpatch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 513
    const/4 v2, 0x1

    const-string/jumbo v3, "hotpatch_andfix_load"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    .line 3463
    iget-object v6, p0, Ljoz;->b:Ljava/lang/String;

    .line 513
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    :cond_6
    if-nez p4, :cond_7

    if-eqz p5, :cond_7

    .line 518
    const/4 v2, 0x1

    const-string/jumbo v3, "hotpatch_andfix_frist_load"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    .line 4463
    iget-object v6, p0, Ljoz;->b:Ljava/lang/String;

    .line 518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    move/from16 v0, p2

    iput v0, p0, Ljoz;->f:I

    .line 523
    :cond_7
    if-nez p5, :cond_8

    .line 524
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljoz;->w:Z

    .line 525
    move/from16 v0, p2

    iput v0, p0, Ljoz;->g:I

    .line 528
    :cond_8
    iget-boolean v2, p0, Ljoz;->x:Z

    if-eqz v2, :cond_9

    .line 529
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Ljoz$1;

    move/from16 v0, p5

    invoke-direct {v4, p0, v0}, Ljoz$1;-><init>(Ljoz;Z)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 542
    :catch_0
    move-exception v9

    .line 543
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/taobao/hotpatch/util/HotPatchUtils;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    .line 544
    .local v10, "exception":Ljava/lang/String;
    const-string/jumbo v3, "hotpatch_andfix_load"

    .line 545
    .local v3, "stage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "3"

    invoke-static {v3, v2, v4, v10}, Ljmo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    if-nez p4, :cond_a

    .line 547
    const-string/jumbo v3, "hotpatch_andfix_frist_load"

    .line 549
    :cond_a
    const/4 v2, 0x0

    const-string/jumbo v4, "1"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 5463
    iget-object v6, p0, Ljoz;->b:Ljava/lang/String;

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 551
    iget-boolean v2, p0, Ljoz;->x:Z

    if-eqz v2, :cond_b

    .line 552
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Ljoz$2;

    invoke-direct {v4, p0}, Ljoz$2;-><init>(Ljoz;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 480
    .end local v3    # "stage":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "exception":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "preNativeCrashVersion":Ljava/lang/String;
    .end local v13    # "problemPatchVersion":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic a(Ljoz;Z)Z
    .locals 0
    .param p0, "x0"    # Ljoz;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Ljoz;->m:Z

    return p1
.end method

.method static synthetic b(Ljoz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-object v0, p0, Ljoz;->p:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 4
    .param p1, "fource"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 420
    invoke-direct {p0}, Ljoz;->c()V

    .line 421
    iput v0, p0, Ljoz;->f:I

    .line 422
    iput v0, p0, Ljoz;->g:I

    .line 423
    iput-boolean v0, p0, Ljoz;->w:Z

    .line 424
    invoke-direct {p0}, Ljoz;->e()V

    .line 3430
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljoz;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "hotpatch"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3432
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3433
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 3434
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 3435
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3437
    invoke-static {v3}, Ljmo;->a(Ljava/io/File;)Z

    .line 3435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method

.method static synthetic b(Ljoz;Z)Z
    .locals 0
    .param p0, "x0"    # Ljoz;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Ljoz;->c:Z

    return p1
.end method

.method static synthetic c(Ljoz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-object v0, p0, Ljoz;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 389
    iget-object v1, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 390
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "use_support"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string/jumbo v1, "hotpatch_priority"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string/jumbo v1, "hotpatch_path"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    const-string/jumbo v1, "hotpatch_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    const-string/jumbo v1, "hotpatch_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    const-string/jumbo v1, "is_native_crash"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    const-string/jumbo v1, "is_java_crash"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    const-string/jumbo v1, "hotpatch_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    const-string/jumbo v1, "andfix_flag"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    const-string/jumbo v1, "andfix_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    return-void
.end method

.method static synthetic c(Ljoz;Z)Z
    .locals 0
    .param p0, "x0"    # Ljoz;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Ljoz;->v:Z

    return p1
.end method

.method static synthetic d(Ljoz;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-object v0, p0, Ljoz;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 404
    iget-object v1, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 405
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "dexpatch_flag"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    const-string/jumbo v1, "dexpatch_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    return-void
.end method

.method static synthetic e(Ljoz;)I
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget v0, p0, Ljoz;->f:I

    return v0
.end method

.method private e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 451
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Ljoz;->t:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 454
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 455
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 456
    .local v1, "child":Ljava/io/File;
    invoke-static {v1}, Ljmo;->a(Ljava/io/File;)Z

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method static synthetic f(Ljoz;)Z
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-boolean v0, p0, Ljoz;->w:Z

    return v0
.end method

.method static synthetic g(Ljoz;)Z
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-boolean v0, p0, Ljoz;->v:Z

    return v0
.end method

.method static synthetic h(Ljoz;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ljoz;

    .prologue
    .line 55
    iget-object v0, p0, Ljoz;->z:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljoz;
    .locals 8
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "mainVersion"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljoz;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p4, "contentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 212
    iput-object p1, p0, Ljoz;->a:Landroid/app/Application;

    .line 213
    iput-object p2, p0, Ljoz;->b:Ljava/lang/String;

    .line 214
    iput-object v3, p0, Ljoz;->k:Ljava/util/HashMap;

    .line 215
    iput-object p3, p0, Ljoz;->o:Ljava/lang/String;

    .line 216
    iget-object v3, p0, Ljoz;->a:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    .line 217
    const-class v3, Ljoz;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Ljoz;->A:Ljava/lang/ClassLoader;

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljoz;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "hotpatch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljoz;->s:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Ljoz;->s:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 223
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljoz;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "hotpatch_tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljoz;->t:Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Ljoz;->t:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "fileTmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_1
    iget-object v3, p0, Ljoz;->a:Landroid/app/Application;

    invoke-static {v3}, Ljmo;->b(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Ljoz;->e:Z

    .line 229
    iget-boolean v3, p0, Ljoz;->e:Z

    if-eqz v3, :cond_3

    .line 1376
    iget-object v3, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    if-nez v3, :cond_2

    .line 1377
    iget-object v3, p0, Ljoz;->a:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    .line 1379
    :cond_2
    iget-object v3, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "main_version"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1380
    iget-object v4, p0, Ljoz;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1381
    invoke-direct {p0}, Ljoz;->c()V

    .line 1382
    invoke-direct {p0}, Ljoz;->e()V

    .line 1383
    invoke-direct {p0}, Ljoz;->d()V

    .line 1384
    invoke-static {}, Ljmm;->a()V

    .line 233
    :cond_3
    iget-object v3, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hotpatch_version"

    const-string/jumbo v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "patchVersion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljoz;->f:I

    .line 238
    :cond_4
    iget-object v3, p0, Ljoz;->b:Ljava/lang/String;

    iget-object v4, p0, Ljoz;->a:Landroid/app/Application;

    .line 2191
    :try_start_0
    new-instance v5, Lcom/alipay/euler/andfix/patch/PatchManager;

    const/4 v6, 0x0

    const-string/jumbo v7, "hotpatch"

    invoke-direct {v5, v4, v6, v7}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;Lcom/alipay/euler/andfix/log/Logger;Ljava/lang/String;)V

    iput-object v5, p0, Ljoz;->u:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 2192
    invoke-static {v4}, Ljmo;->a(Landroid/content/Context;)Z

    move-result v4

    .line 2193
    iget-object v5, p0, Ljoz;->u:Lcom/alipay/euler/andfix/patch/PatchManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v6}, Lcom/alipay/euler/andfix/patch/PatchManager;->init(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3056
    :goto_0
    sput-object p1, Ljla;->c:Landroid/content/Context;

    .line 240
    iget-object v3, p0, Ljoz;->a:Landroid/app/Application;

    new-instance v4, Ljoz$a;

    invoke-direct {v4, p0}, Ljoz$a;-><init>(Ljoz;)V

    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 241
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Ljoz;->z:Landroid/os/Handler;

    .line 242
    return-object p0

    .line 2194
    :catch_0
    move-exception v3

    .line 2196
    const-string/jumbo v4, "initAndFix"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Ljoz;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/taobao/hotpatch/util/HotPatchUtils;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Ljmo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "group"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 326
    iget-object v0, p0, Ljoz;->a:Landroid/app/Application;

    invoke-static {v0}, Ljmo;->a(Landroid/app/Application;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljoz;->m:Z

    .line 330
    iput-object p1, p0, Ljoz;->p:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Ljoz;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-static {}, Ljpb;->a()Ljpb;

    move-result-object v0

    iget-object v1, p0, Ljoz;->o:Ljava/lang/String;

    .line 3109
    iput-object v1, v0, Ljpb;->a:Ljava/lang/String;

    .line 335
    :cond_1
    const/4 v3, 0x0

    .line 336
    .local v3, "version":I
    iget-object v0, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "hotpatch_version"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "patchVersion":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 341
    :cond_2
    invoke-static {}, Ljpb;->a()Ljpb;

    move-result-object v0

    iget-object v1, p0, Ljoz;->a:Landroid/app/Application;

    iget-object v2, p0, Ljoz;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Ljpb;->a(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljpc;

    move-result-object v6

    .line 342
    .local v6, "patchInfo":Ljpc;
    const-string/jumbo v0, "MTOP"

    invoke-virtual {p0, v6, v0}, Ljoz;->a(Ljpc;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljpc;)V
    .locals 20
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "patchInfo"    # Ljpc;

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDownloadFinsh + "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    const/4 v15, 0x0

    .line 796
    .local v15, "loaded":Z
    const/4 v14, 0x1

    .line 798
    .local v14, "isAndFix":Z
    if-nez p2, :cond_1

    .line 875
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 802
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget-object v2, v0, Ljpc;->k:Ljava/lang/String;

    const-string/jumbo v4, "andfix"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 803
    const/4 v14, 0x1

    .line 808
    :cond_2
    :goto_1
    if-eqz v14, :cond_8

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->d:Ljmn;

    if-eqz v2, :cond_3

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->d:Ljmn;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljmn;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    :cond_3
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v19, "src":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->s:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 816
    .local v17, "parent":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 817
    .local v9, "dest":Ljava/io/File;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :try_start_2
    move-object/from16 v0, v19

    invoke-static {v0, v9}, Ljmo;->a(Ljava/io/File;Ljava/io/File;)V

    .line 822
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 823
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 824
    .local v16, "newApkPath":Ljava/lang/String;
    const/4 v2, 0x1

    const-string/jumbo v3, "copyFile"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v8, v0, Ljpc;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Ljpc;->b:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v2, 0x1

    const-string/jumbo v3, "copy"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v8, v0, Ljpc;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static/range {v2 .. v8}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v3, v16

    .line 835
    .end local v16    # "newApkPath":Ljava/lang/String;
    .local v3, "newApkPath":Ljava/lang/String;
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljoz;->m:Z

    if-eqz v2, :cond_4

    .line 836
    move-object/from16 v0, p2

    iget v4, v0, Ljpc;->f:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-boolean v7, v0, Ljpc;->j:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljoz;->a(Ljava/lang/String;IZZZ)Z

    move-result v15

    .line 839
    :cond_4
    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljoz;->m:Z

    if-nez v2, :cond_6

    .line 841
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 842
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "hotpatch_path"

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 843
    const-string/jumbo v2, "hotpatch_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v5, v0, Ljpc;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 844
    const-string/jumbo v2, "hotpatch_md5"

    move-object/from16 v0, p2

    iget-object v4, v0, Ljpc;->g:Ljava/lang/String;

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 845
    const-string/jumbo v2, "main_version"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljoz;->b:Ljava/lang/String;

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 846
    const-string/jumbo v2, "hotpatch_size"

    move-object/from16 v0, p2

    iget-wide v4, v0, Ljpc;->d:J

    invoke-interface {v11, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 847
    const-string/jumbo v2, "andfix_flag"

    const/4 v4, 0x1

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 848
    const-string/jumbo v2, "andfix_version"

    move-object/from16 v0, p2

    iget v4, v0, Ljpc;->f:I

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 873
    .end local v3    # "newApkPath":Ljava/lang/String;
    .end local v9    # "dest":Ljava/io/File;
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "parent":Ljava/io/File;
    .end local v19    # "src":Ljava/io/File;
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loaded result "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 794
    .end local v14    # "isAndFix":Z
    .end local v15    # "loaded":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 804
    .restart local v14    # "isAndFix":Z
    .restart local v15    # "loaded":Z
    :cond_7
    :try_start_4
    move-object/from16 v0, p2

    iget-object v2, v0, Ljpc;->k:Ljava/lang/String;

    const-string/jumbo v4, "dexpatch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 826
    .restart local v9    # "dest":Ljava/io/File;
    .restart local v17    # "parent":Ljava/io/File;
    .restart local v19    # "src":Ljava/io/File;
    :catch_0
    move-exception v10

    .line 828
    .local v10, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u76ee\u6807\u6587\u4ef6\u76ee\u5f55\u662f\u5426\u4e3a\u53ef\u5199:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " and the parent dirs is exist "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 829
    .local v12, "errMsg":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "copyFile"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v8, v0, Ljpc;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Ljpc;->b:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v2, 0x0

    const-string/jumbo v3, "copy"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "e.getMessage()"

    move-object/from16 v0, p0

    iget-object v6, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v8, v0, Ljpc;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static/range {v2 .. v8}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    move-object/from16 v3, p1

    .restart local v3    # "newApkPath":Ljava/lang/String;
    goto/16 :goto_2

    .line 853
    .end local v3    # "newApkPath":Ljava/lang/String;
    .end local v9    # "dest":Ljava/io/File;
    .end local v10    # "e":Ljava/lang/Throwable;
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v17    # "parent":Ljava/io/File;
    .end local v19    # "src":Ljava/io/File;
    :cond_8
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 854
    .local v18, "patchInfoJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "baseVersion"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljoz;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v2, "updateBundles"

    move-object/from16 v0, p2

    iget-object v4, v0, Ljpc;->n:Ljpa;

    iget-object v4, v4, Ljpa;->f:Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string/jumbo v2, "updateVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v5, v0, Ljpc;->n:Ljpa;

    iget-wide v6, v5, Ljpa;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.atlas.intent.DEX_PATCH_APP"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "dexpatch"

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 860
    const-string/jumbo v2, "patch_location"

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string/jumbo v2, "patch_info"

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->a:Landroid/app/Application;

    invoke-virtual {v2, v13}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    move-object/from16 v0, p2

    iget-object v2, v0, Ljpc;->n:Ljpa;

    iget-wide v4, v2, Ljpa;->e:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Ljoz;->h:J

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 866
    .restart local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "dexpatch_flag"

    const/4 v4, 0x1

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 867
    const-string/jumbo v2, "hotpatch_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v5, v0, Ljpc;->n:Ljpa;

    iget-wide v6, v5, Ljpa;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 868
    const-string/jumbo v2, "dexpatch_version"

    move-object/from16 v0, p2

    iget-object v4, v0, Ljpc;->n:Ljpa;

    iget-wide v4, v4, Ljpa;->e:J

    long-to-int v4, v4

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 869
    const-string/jumbo v2, "main_version"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljoz;->b:Ljava/lang/String;

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method public final varargs declared-synchronized a(Ljpc;Ljava/lang/String;)V
    .locals 8
    .param p1, "patchInfo"    # Ljpc;
    .param p2, "dataSource"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 720
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 722
    :try_start_0
    iget-object v0, p0, Ljoz;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupport(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 790
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 726
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Ljpc;->a:Z

    if-eqz v0, :cond_0

    .line 728
    iget-boolean v0, p1, Ljpc;->c:Z

    if-eqz v0, :cond_6

    .line 730
    iget-boolean v0, p1, Ljpc;->m:Z

    if-nez v0, :cond_4

    .line 732
    iget v0, p1, Ljpc;->f:I

    .line 7674
    iget v1, p0, Ljoz;->f:I

    .line 732
    if-eq v0, v1, :cond_3

    iget-object v0, p0, Ljoz;->b:Ljava/lang/String;

    iget-object v1, p1, Ljpc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Ljpc;->f:I

    int-to-long v0, v0

    iget-wide v2, p0, Ljoz;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p1, Ljpc;->f:I

    iget v1, p0, Ljoz;->i:I

    if-eq v0, v1, :cond_3

    iget v0, p1, Ljpc;->f:I

    iget v1, p0, Ljoz;->g:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Ljoz;->i:I

    iget v1, p1, Ljpc;->f:I

    if-eq v0, v1, :cond_3

    .line 739
    const-string/jumbo v0, "scan"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljoz;->x:Z

    .line 746
    :goto_1
    iget-boolean v0, p0, Ljoz;->x:Z

    invoke-direct {p0, p1, p2, v0}, Ljoz;->a(Ljpc;Ljava/lang/String;Z)V

    .line 747
    iget-object v0, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 748
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "hotpatch_priority"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Ljpc;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 751
    const/4 v0, 0x1

    const-string/jumbo v1, "hotpatch_update_info"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    .line 8463
    iget-object v4, p0, Ljoz;->b:Ljava/lang/String;

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Ljpc;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Ljpc;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Ljml;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x1

    const-string/jumbo v1, "revupdate"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    iget-object v4, p0, Ljoz;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Ljpc;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 720
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 742
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljoz;->x:Z

    goto :goto_1

    .line 756
    :cond_3
    const-string/jumbo v0, "scan"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljoz$4;

    invoke-direct {v1, p0}, Ljoz$4;-><init>(Ljoz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 767
    :cond_4
    iget v0, p1, Ljpc;->l:I

    if-nez v0, :cond_5

    .line 768
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljoz;->b(Z)V

    .line 769
    iget v0, p0, Ljoz;->i:I

    iput v0, p0, Ljoz;->f:I

    .line 770
    iget-object v0, p0, Ljoz;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljoz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 771
    :cond_5
    iget v0, p1, Ljpc;->l:I

    iget v1, p0, Ljoz;->i:I

    if-ne v0, v1, :cond_0

    .line 9411
    invoke-static {}, Landroid/taobao/atlas/versionInfo/BaselineInfoManager;->instance()Landroid/taobao/atlas/versionInfo/BaselineInfoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/taobao/atlas/versionInfo/BaselineInfoManager;->rollback(Z)V

    .line 9412
    invoke-direct {p0}, Ljoz;->d()V

    .line 773
    const/4 v0, 0x0

    iput v0, p0, Ljoz;->f:I

    .line 774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljoz;->h:J

    .line 775
    iget-object v0, p0, Ljoz;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljoz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :cond_6
    iget-object v0, p0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 781
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v0, "use_support"

    iget-boolean v1, p1, Ljpc;->c:Z

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 782
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "isAutoLoad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-object v1, p0, Ljoz;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    new-instance v0, Ljoz$c;

    invoke-direct {v0, p0, v3}, Ljoz$c;-><init>(Ljoz;B)V

    .line 351
    .local v0, "queryTask":Ljoz$c;
    new-array v1, v2, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljoz$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    .end local v0    # "queryTask":Ljoz$c;
    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 19

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljoz;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "andfix_flag"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 258
    .local v5, "isAndFix":Z
    if-eqz v5, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "use_support"

    const/4 v7, 0x1

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "main_version"

    const-string/jumbo v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 269
    .local v18, "patchMainVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljoz;->e:Z

    if-eqz v2, :cond_2

    .line 270
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljoz;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v5    # "isAndFix":Z
    .end local v18    # "patchMainVersion":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 273
    .restart local v5    # "isAndFix":Z
    .restart local v18    # "patchMainVersion":Ljava/lang/String;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->a:Landroid/app/Application;

    invoke-static {v2}, Ljmo;->a(Landroid/app/Application;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 274
    const-string/jumbo v2, "HotPatchManager"

    const-string/jumbo v6, "device is not support"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "hotpatch_path"

    const-string/jumbo v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "apkpath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "hotpatch_md5"

    const-string/jumbo v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 282
    .local v17, "patchMD5":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "andfix_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 286
    .local v4, "andfixPatchVersion":I
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljoz;->a(Ljava/lang/String;IZZZ)Z

    .line 289
    .end local v3    # "apkpath":Ljava/lang/String;
    .end local v4    # "andfixPatchVersion":I
    .end local v17    # "patchMD5":Ljava/lang/String;
    .end local v18    # "patchMainVersion":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "dexpatch_flag"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 290
    .local v15, "hasDexPatch":Z
    if-eqz v15, :cond_6

    .line 291
    invoke-static {}, Landroid/taobao/atlas/versionInfo/BaselineInfoManager;->instance()Landroid/taobao/atlas/versionInfo/BaselineInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/atlas/versionInfo/BaselineInfoManager;->dexPatchVersion()J

    move-result-wide v6

    long-to-int v13, v6

    .line 292
    .local v13, "curDexPatchVersion":I
    move-object/from16 v0, p0

    iput v13, v0, Ljoz;->i:I

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "dexpatch_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 294
    .local v16, "historyDexpatchVersion":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "andfix_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 295
    .restart local v4    # "andfixPatchVersion":I
    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    .line 296
    move-object/from16 v0, p0

    iget v2, v0, Ljoz;->f:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 298
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    if-le v4, v13, :cond_7

    .line 299
    const-string/jumbo v2, "hotpatch_version"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    move-object/from16 v0, p0

    iput v4, v0, Ljoz;->f:I

    .line 305
    :goto_1
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljoz;->l:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v6, "dexpatch_version"

    invoke-interface {v2, v6, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    const/4 v6, 0x0

    const-string/jumbo v7, "load"

    const-string/jumbo v8, "1"

    const-string/jumbo v9, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-static/range {v6 .. v12}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .end local v4    # "andfixPatchVersion":I
    .end local v13    # "curDexPatchVersion":I
    .end local v16    # "historyDexpatchVersion":I
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljoz;->q:Z

    goto/16 :goto_0

    .line 302
    .restart local v4    # "andfixPatchVersion":I
    .restart local v13    # "curDexPatchVersion":I
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v16    # "historyDexpatchVersion":I
    :cond_7
    const-string/jumbo v2, "hotpatch_version"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    move-object/from16 v0, p0

    iput v13, v0, Ljoz;->f:I

    goto :goto_1

    .line 310
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_8
    const/4 v6, 0x1

    const-string/jumbo v7, "load"

    const-string/jumbo v8, "0"

    const-string/jumbo v9, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Ljoz;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-static/range {v6 .. v12}, Ljmm;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
