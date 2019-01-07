.class public Lcom/alibaba/bee/impl/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DBAdapter"

.field private static final dbPool:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/bee/impl/DBHelper",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final mDBStatusListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/bee/DBStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/bee/DataManipulationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mTableListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/bee/DBTableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTransactionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/bee/DBTransactionListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isCrypt:Z

.field private mChecker:Lcom/alibaba/bee/impl/DBChecker;

.field private mContext:Landroid/content/Context;

.field private mGenerator:Lcom/alibaba/bee/CipherGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/bee/impl/DBAdapter;->dbPool:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->isCrypt:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/alibaba/bee/impl/DBChecker;

    invoke-direct {v0, p0}, Lcom/alibaba/bee/impl/DBChecker;-><init>(Lcom/alibaba/bee/impl/DBAdapter;)V

    iput-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    .line 48
    return-void
.end method

.method private getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 497
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Database name cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    :cond_0
    monitor-enter p0

    .line 501
    :try_start_0
    sget-object v3, Lcom/alibaba/bee/impl/DBAdapter;->dbPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/impl/DBHelper;

    .line 502
    .local v1, "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    if-eqz v1, :cond_1

    .line 503
    monitor-exit p0

    move-object v2, v1

    .line 516
    .end local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    .local v2, "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    :goto_0
    return-object v2

    .line 505
    .end local v2    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    .restart local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/bee/impl/DBAdapter;->isSafe()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    new-instance v1, Lcom/alibaba/bee/impl/SafeDBHelper;

    .end local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    iget-object v3, p0, Lcom/alibaba/bee/impl/DBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/alibaba/bee/impl/SafeDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    .restart local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    iget-object v3, p0, Lcom/alibaba/bee/impl/DBAdapter;->mGenerator:Lcom/alibaba/bee/CipherGenerator;

    if-nez v3, :cond_2

    .line 508
    new-instance v3, Lcom/alibaba/bee/impl/DefaultCipherGenerator;

    invoke-direct {v3}, Lcom/alibaba/bee/impl/DefaultCipherGenerator;-><init>()V

    iput-object v3, p0, Lcom/alibaba/bee/impl/DBAdapter;->mGenerator:Lcom/alibaba/bee/CipherGenerator;

    .line 510
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/alibaba/bee/impl/SafeDBHelper;

    move-object v3, v0

    iget-object v4, p0, Lcom/alibaba/bee/impl/DBAdapter;->mGenerator:Lcom/alibaba/bee/CipherGenerator;

    invoke-interface {v4}, Lcom/alibaba/bee/CipherGenerator;->generate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/bee/impl/SafeDBHelper;->setPassword(Ljava/lang/String;)V

    .line 514
    :goto_1
    sget-object v3, Lcom/alibaba/bee/impl/DBAdapter;->dbPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init database "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    monitor-exit p0

    move-object v2, v1

    .end local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    .restart local v2    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    goto :goto_0

    .line 512
    .end local v2    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    .restart local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    :cond_3
    new-instance v1, Lcom/alibaba/bee/impl/BaseDBHelper;

    .end local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    iget-object v3, p0, Lcom/alibaba/bee/impl/DBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/alibaba/bee/impl/BaseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    goto :goto_1

    .line 517
    .end local v1    # "helper":Lcom/alibaba/bee/impl/DBHelper;, "Lcom/alibaba/bee/impl/DBHelper<*>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 638
    if-nez p0, :cond_1

    .line 651
    :cond_0
    return-void

    .line 641
    :cond_1
    sget-object v3, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 642
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 644
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/bee/DataManipulationListener;

    .line 646
    .local v2, "listener":Lcom/alibaba/bee/DataManipulationListener;
    :try_start_0
    invoke-virtual {v2, p0, p1, p2}, Lcom/alibaba/bee/DataManipulationListener;->afterProcess(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onAfterTransactionBegin(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 655
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    :cond_0
    return-void

    .line 659
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 663
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBTransactionListener;

    .line 664
    .local v1, "transactionListener":Lcom/alibaba/bee/DBTransactionListener;
    if-eqz v1, :cond_2

    .line 668
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBTransactionListener;->afterTransactionBegin(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "dbName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 622
    if-nez p0, :cond_1

    .line 635
    :cond_0
    return-void

    .line 625
    :cond_1
    sget-object v3, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 626
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/bee/DataManipulationListener;

    .line 630
    .local v2, "listener":Lcom/alibaba/bee/DataManipulationListener;
    :try_start_0
    invoke-virtual {v2, p0, p1, p2}, Lcom/alibaba/bee/DataManipulationListener;->beforeProcess(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onBeforeTransactionCommit(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 677
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    return-void

    .line 681
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 685
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBTransactionListener;

    .line 686
    .local v1, "transactionListener":Lcom/alibaba/bee/DBTransactionListener;
    if-eqz v1, :cond_2

    .line 690
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBTransactionListener;->beforeTransactionCommit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onBeforeTransactionRollback(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    return-void

    .line 703
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 707
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTransactionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBTransactionListener;

    .line 708
    .local v1, "transactionListener":Lcom/alibaba/bee/DBTransactionListener;
    if-eqz v1, :cond_2

    .line 712
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBTransactionListener;->beforeTransactionRollback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onClose(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 574
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    :cond_0
    return-void

    .line 576
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBStatusListener;

    .line 578
    .local v1, "listener":Lcom/alibaba/bee/DBStatusListener;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBStatusListener;->onClose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onDelete(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 586
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    :cond_0
    return-void

    .line 588
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBStatusListener;

    .line 590
    .local v1, "listener":Lcom/alibaba/bee/DBStatusListener;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBStatusListener;->onDelete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static onOpen(Ljava/lang/String;)V
    .locals 4
    .param p0, "dbName"    # Ljava/lang/String;

    .prologue
    .line 562
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    :cond_0
    return-void

    .line 564
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBStatusListener;

    .line 566
    .local v1, "listener":Lcom/alibaba/bee/DBStatusListener;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/alibaba/bee/DBStatusListener;->onOpen(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/bee/DataManipulationListener;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 598
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 601
    :try_start_0
    sget-object v1, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 602
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    if-nez v0, :cond_2

    .line 603
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 604
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    sget-object v1, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    monitor-exit v2

    goto :goto_0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addStatusListener(Lcom/alibaba/bee/DBStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBStatusListener;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTableListener(Lcom/alibaba/bee/DBTableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBTableListener;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public beginTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 383
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    new-instance v2, Lcom/alibaba/bee/impl/DBAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/bee/impl/DBAdapter$3;-><init>(Lcom/alibaba/bee/impl/DBAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransactionWithListener(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V

    .line 418
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Lcom/alibaba/bee/impl/DBAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/bee/impl/DBAdapter$4;-><init>(Lcom/alibaba/bee/impl/DBAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    goto :goto_0
.end method

.method close(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->close()V

    .line 523
    return-void
.end method

.method public compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/bee/SQLiteStatement;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 294
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p3}, Lcom/alibaba/bee/DatabaseUtils;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "tableName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 296
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v4, p1, p2, v3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 297
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 299
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v1

    .line 301
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    new-instance v2, Lcom/alibaba/bee/impl/SafeSQLiteStatement;

    invoke-direct {v2, v1, p1, v3, p3}, Lcom/alibaba/bee/impl/SafeSQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .local v2, "stmt":Lcom/alibaba/bee/SQLiteStatement;
    :goto_0
    return-object v2

    .line 303
    .end local v2    # "stmt":Lcom/alibaba/bee/SQLiteStatement;
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 304
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    new-instance v2, Lcom/alibaba/bee/impl/BaseSQLiteStatement;

    invoke-direct {v2, v1, p1, v3, p3}, Lcom/alibaba/bee/impl/BaseSQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "stmt":Lcom/alibaba/bee/SQLiteStatement;
    goto :goto_0
.end method

.method public createTableIfNotExist(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 737
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "whereClause"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v3, 0x5

    .line 258
    iget-object v2, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v2, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1

    .line 260
    :cond_0
    invoke-static {p1, p3, v3}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 263
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p3, p4, p5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 269
    .local v1, "ret":I
    :goto_1
    invoke-static {p1, p3, v3}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 267
    .end local v1    # "ret":I
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_1
.end method

.method public deleteDatabase(Ljava/io/File;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 449
    iget-boolean v5, p0, Lcom/alibaba/bee/impl/DBAdapter;->isCrypt:Z

    if-eqz v5, :cond_1

    .line 450
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 452
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 454
    :cond_2
    if-nez p1, :cond_3

    .line 455
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "file must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 457
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 458
    .local v0, "deleted":Z
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-journal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 459
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-shm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 460
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-wal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 462
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 463
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-mj"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 465
    .local v4, "prefix":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/bee/impl/DBAdapter$5;

    invoke-direct {v2, p0, v4}, Lcom/alibaba/bee/impl/DBAdapter$5;-><init>(Lcom/alibaba/bee/impl/DBAdapter;Ljava/lang/String;)V

    .line 471
    .local v2, "filter":Ljava/io/FileFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    .line 472
    .local v3, "masterJournal":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    or-int/2addr v0, v8

    .line 471
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public enableTrigger(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 730
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->enableTrigger(Z)V

    .line 733
    :cond_0
    return-void
.end method

.method public endTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 430
    invoke-static {p1}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeTransactionCommit(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 432
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "listener"    # Lcom/alibaba/bee/SQLiteTransactionListener;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 310
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v1

    .line 311
    .local v1, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v1}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-interface {v1}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 314
    .local v2, "safeDB":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/alibaba/bee/impl/DBAdapter$1;

    invoke-direct {v3, p0, p3, p1}, Lcom/alibaba/bee/impl/DBAdapter$1;-><init>(Lcom/alibaba/bee/impl/DBAdapter;Lcom/alibaba/bee/SQLiteTransactionListener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransactionWithListener(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V

    .line 338
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 339
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 376
    .end local v2    # "safeDB":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :goto_0
    return v4

    .line 342
    .restart local v2    # "safeDB":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 345
    .end local v2    # "safeDB":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 346
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/alibaba/bee/impl/DBAdapter$2;

    invoke-direct {v3, p0, p3, p1}, Lcom/alibaba/bee/impl/DBAdapter$2;-><init>(Lcom/alibaba/bee/impl/DBAdapter;Lcom/alibaba/bee/SQLiteTransactionListener;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 372
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 373
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public execRaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 275
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/bee/impl/DBChecker;->checkDropTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void

    .line 278
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execRaw(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 285
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/bee/impl/DBChecker;->checkDropTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 288
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public executeWriteTask(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "databaseTask"    # Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 720
    const/4 v1, -0x1

    .line 721
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 722
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->executeWriteTask(Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I

    move-result v1

    .line 725
    :cond_0
    return v1
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 441
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSqliteHandler(Ljava/lang/String;)J
    .locals 5
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    .line 483
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v1

    .line 484
    .local v1, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v1}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    iget-object v4, p0, Lcom/alibaba/bee/impl/DBAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 486
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler(Ljava/lang/String;)J

    move-result-wide v2

    .line 492
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 171
    iget-object v1, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const-wide/16 v2, 0x0

    .line 182
    :goto_0
    return-wide v2

    .line 173
    :cond_0
    invoke-static {p1, p3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 176
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3, v5, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 181
    .local v2, "ret":J
    :goto_1
    invoke-static {p1, p3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 179
    .end local v2    # "ret":J
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2    # "ret":J
    goto :goto_1
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "conflictAlgorithm"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I)J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 188
    iget-object v1, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-wide/16 v2, 0x0

    .line 201
    :goto_0
    return-wide v2

    .line 190
    :cond_0
    invoke-static {p1, p3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 193
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3, v5, p4, p5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 200
    .local v2, "ret":J
    :goto_1
    invoke-static {p1, p3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 197
    .end local v2    # "ret":J
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3, v5, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .restart local v2    # "ret":J
    goto :goto_1
.end method

.method public isSafe()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->isCrypt:Z

    return v0
.end method

.method onAlter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 538
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    :cond_0
    return-void

    .line 540
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBTableListener;

    .line 542
    .local v1, "listener":Lcom/alibaba/bee/DBTableListener;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/bee/DBTableListener;->onAlter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method onCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 526
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    return-void

    .line 528
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBTableListener;

    .line 530
    .local v1, "listener":Lcom/alibaba/bee/DBTableListener;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/bee/DBTableListener;->onCreate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method onDrop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 550
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    :cond_0
    return-void

    .line 552
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/bee/DBTableListener;

    .line 554
    .local v1, "listener":Lcom/alibaba/bee/DBTableListener;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/bee/DBTableListener;->onDrop(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/alibaba/bee/impl/DBChecker;->queryCheckTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v13, 0x0

    .line 114
    :goto_0
    return-object v13

    .line 94
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v16

    .line 96
    .local v16, "helper":Lcom/alibaba/bee/impl/DBHelper;
    const/4 v13, 0x0

    .line 97
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 100
    .local v3, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    :try_start_0
    invoke-virtual/range {v3 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 113
    .end local v3    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    .restart local v3    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v14

    .line 102
    .local v14, "e":Landroid/database/SQLException;
    invoke-virtual {v14}, Landroid/database/SQLException;->printStackTrace()V

    .line 104
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    :try_start_1
    invoke-virtual/range {v3 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    goto :goto_1

    .line 105
    :catch_1
    move-exception v15

    .line 106
    .local v15, "e2":Landroid/database/SQLException;
    invoke-virtual {v15}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v3    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .end local v14    # "e":Landroid/database/SQLException;
    .end local v15    # "e2":Landroid/database/SQLException;
    :cond_1
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_1
.end method

.method public query(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "distinct"    # Z
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columns"    # [Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "selectionArgs"    # [Ljava/lang/String;
    .param p8, "groupBy"    # Ljava/lang/String;
    .param p9, "having"    # Ljava/lang/String;
    .param p10, "orderBy"    # Ljava/lang/String;
    .param p11, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/alibaba/bee/impl/DBChecker;->queryCheckTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v14, 0x0

    .line 141
    :goto_0
    return-object v14

    .line 121
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v17

    .line 123
    .local v17, "helper":Lcom/alibaba/bee/impl/DBHelper;
    const/4 v14, 0x0

    .line 124
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .local v3, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 127
    :try_start_0
    invoke-virtual/range {v3 .. v12}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 140
    .end local v3    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 128
    .restart local v3    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v15

    .line 129
    .local v15, "e":Landroid/database/SQLException;
    invoke-virtual {v15}, Landroid/database/SQLException;->printStackTrace()V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 131
    :try_start_1
    invoke-virtual/range {v3 .. v12}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    goto :goto_1

    .line 132
    :catch_1
    move-exception v16

    .line 133
    .local v16, "e2":Landroid/database/SQLException;
    invoke-virtual/range {v16 .. v16}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v3    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .end local v15    # "e":Landroid/database/SQLException;
    .end local v16    # "e2":Landroid/database/SQLException;
    :cond_1
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_1
.end method

.method public queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "sql"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v7, 0x1

    .line 145
    invoke-static {p3}, Lcom/alibaba/bee/DatabaseUtils;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "tableName":Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v6, p1, p2, v5}, Lcom/alibaba/bee/impl/DBChecker;->queryCheckTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {p1, v5, v7}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v4

    .line 150
    .local v4, "helper":Lcom/alibaba/bee/impl/DBHelper;
    const/4 v0, 0x0

    .line 151
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v4}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    invoke-interface {v4}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 154
    .local v1, "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    .end local v1    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :goto_1
    invoke-static {p1, v5, v7}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    .restart local v1    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 158
    :try_start_1
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 159
    :catch_1
    move-exception v3

    .line 160
    .local v3, "e2":Landroid/database/SQLException;
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v1    # "db":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .end local v2    # "e":Landroid/database/SQLException;
    .end local v3    # "e2":Landroid/database/SQLException;
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public removeDataManipulationListener(Ljava/lang/String;Lcom/alibaba/bee/DataManipulationListener;)V
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alibaba/bee/DataManipulationListener;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 611
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    sget-object v2, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 614
    :try_start_0
    sget-object v1, Lcom/alibaba/bee/impl/DBAdapter;->mDataManipulationListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 615
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    if-eqz v0, :cond_2

    .line 616
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 618
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/bee/DataManipulationListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStatusListener(Lcom/alibaba/bee/DBStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBStatusListener;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mDBStatusListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeTableListener(Lcom/alibaba/bee/DBTableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/bee/DBTableListener;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/alibaba/bee/impl/DBAdapter;->mTableListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 205
    iget-object v1, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    const-wide/16 v2, 0x0

    .line 217
    :goto_0
    return-wide v2

    .line 207
    :cond_0
    invoke-static {p1, p3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 210
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3, v5, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 216
    .local v2, "ret":J
    :goto_1
    invoke-static {p1, p3, v4}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 214
    .end local v2    # "ret":J
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2    # "ret":J
    goto :goto_1
.end method

.method public setCryptEnabled(ZLcom/alibaba/bee/CipherGenerator;)V
    .locals 2
    .param p1, "crypt"    # Z
    .param p2, "generator"    # Lcom/alibaba/bee/CipherGenerator;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isDatabaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->isCrypt:Z

    .line 54
    iput-object p2, p0, Lcom/alibaba/bee/impl/DBAdapter;->mGenerator:Lcom/alibaba/bee/CipherGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    const-string/jumbo v0, "DBAdapter"

    const-string/jumbo v1, "sqlcrypto db disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->isCrypt:Z

    goto :goto_0
.end method

.method public setTransactionSuccessful(Ljava/lang/String;)V
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 422
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "whereClause"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    const/4 v3, 0x3

    .line 222
    iget-object v2, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v2, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    .line 224
    :cond_0
    invoke-static {p1, p3, v3}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v0

    .line 227
    .local v0, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p3, p4, p5, p6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 233
    .local v1, "ret":I
    :goto_1
    invoke-static {p1, p3, v3}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 231
    .end local v1    # "ret":I
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_1
.end method

.method public updateWithOnConflict(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 8
    .param p1, "dbName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "whereClause"    # Ljava/lang/String;
    .param p6, "whereArgs"    # [Ljava/lang/String;
    .param p7, "conflictAlgorithm"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    iget-object v0, p0, Lcom/alibaba/bee/impl/DBAdapter;->mChecker:Lcom/alibaba/bee/impl/DBChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/bee/impl/DBChecker;->checkAndAlterTable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v7, 0x0

    .line 253
    :goto_0
    return v7

    .line 242
    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DBAdapter;->onBeforeProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    invoke-direct {p0, p1}, Lcom/alibaba/bee/impl/DBAdapter;->getDBHelper(Ljava/lang/String;)Lcom/alibaba/bee/impl/DBHelper;

    move-result-object v6

    .line 245
    .local v6, "helper":Lcom/alibaba/bee/impl/DBHelper;
    invoke-interface {v6}, Lcom/alibaba/bee/impl/DBHelper;->isCrypto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v6}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v7

    .line 252
    .local v7, "ret":I
    :goto_1
    const/4 v0, 0x3

    invoke-static {p1, p3, v0}, Lcom/alibaba/bee/impl/DBAdapter;->onAfterProcess(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 249
    .end local v7    # "ret":I
    :cond_1
    invoke-interface {v6}, Lcom/alibaba/bee/impl/DBHelper;->getDatabase()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v7

    .restart local v7    # "ret":I
    goto :goto_1
.end method
