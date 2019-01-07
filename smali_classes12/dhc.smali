.class public Ldhc;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "BurnCountDataSourceImpl.java"

# interfaces
.implements Ldhb;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Ldhc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldhc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 9
    .param p1, "messageId"    # J

    .prologue
    .line 47
    iget-object v0, p0, Ldhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhc;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;

    const-string/jumbo v3, "tb_burn_count"

    const-string/jumbo v4, "messageId = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 48
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 49
    .local v6, "deleteId":I
    return v6
.end method

.method public final a(JLjava/lang/String;IJ)I
    .locals 9
    .param p1, "messageId"    # J
    .param p3, "messageContent"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "remain"    # J

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;-><init>()V

    .line 24
    .local v0, "burnEntry":Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;
    iput-wide p1, v0, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->burnMessageId:J

    .line 25
    iput-object p3, v0, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->burnMessageContent:Ljava/lang/String;

    .line 26
    const/4 v3, 0x1

    iput v3, v0, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->burnType:I

    .line 27
    iput-wide p5, v0, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->remain:J

    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 30
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v2, 0x0

    .line 32
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Ldhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhc;->k()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;

    const-class v6, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;

    const-string/jumbo v7, "tb_burn_count"

    .line 33
    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 35
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 36
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v2}, Ldhc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v3

    return v3

    .line 40
    :catchall_0
    move-exception v3

    invoke-static {v2}, Ldhc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method

.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v11, "unBurnMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 58
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Ldhc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhc;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;

    const-string/jumbo v3, "tb_burn_count"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "messageContent"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 61
    if-eqz v9, :cond_1

    .line 62
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v10, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;-><init>()V

    .line 64
    .local v10, "entry":Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 65
    iget-object v0, v10, Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;->burnMessageContent:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v10    # "entry":Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 71
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 70
    :cond_1
    if-eqz v9, :cond_2

    .line 71
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_2
    return-object v11
.end method
