.class public Laua;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "DataSourceFolderGroupExtraImpl.java"

# interfaces
.implements Latz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method

.method static synthetic a(Laua;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Laua;

    .prologue
    .line 17
    iget-object v0, p0, Laua;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(JZ)I
    .locals 9
    .param p1, "groupId"    # J
    .param p3, "isFolded"    # Z

    .prologue
    const/4 v0, 0x0

    .line 28
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 61
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DataSourceFolderGroupExtra]save groupId:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    .line 33
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", isFolded:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 35
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 32
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 37
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 38
    .local v5, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v6, p0, Laua;->c:Lcom/alibaba/bee/DBManager;

    invoke-static {}, Laua;->m()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Laua$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Laua$1;-><init>(Laua;JZLjava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v0, v1}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 61
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected final p_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "DataSourceFolderGroupExtra"

    return-object v0
.end method
