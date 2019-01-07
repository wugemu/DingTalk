.class public Lfnh;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "OrgScoreDataSourceImpl.java"

# interfaces
.implements Lfmu;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lfmu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Lfnh;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnh;

    .prologue
    .line 23
    invoke-virtual {p0}, Lfnh;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfnh;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnh;

    .prologue
    .line 23
    iget-object v0, p0, Lfnh;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgScoreDataObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 54
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfnh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnh;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfnh$1;

    invoke-direct {v3, p0, p1, v0}, Lfnh$1;-><init>(Lfnh;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(J)Lcom/alibaba/android/user/model/OrgScoreDataObject;
    .locals 13
    .param p1, "orgId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v7

    .line 89
    :cond_1
    iget-object v0, p0, Lfnh;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnh;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;

    const-string/jumbo v3, "tborgscore"

    const-class v4, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;

    invoke-static {v4}, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "orgId"

    aput-object v6, v5, v11

    const-string/jumbo v6, " = ? "

    aput-object v6, v5, v8

    .line 90
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    const-string/jumbo v8, "0, 1"

    .line 89
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 91
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 93
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance v10, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;-><init>()V

    .line 96
    .local v10, "entry":Lcom/alibaba/android/user/entry/OrgScoreDataEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 97
    invoke-static {v10}, Lcom/alibaba/android/user/entry/OrgScoreDataEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/OrgScoreDataEntry;)Lcom/alibaba/android/user/model/OrgScoreDataObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 100
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "entry":Lcom/alibaba/android/user/entry/OrgScoreDataEntry;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
