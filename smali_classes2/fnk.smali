.class public Lfnk;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "SafeOplogDataSourceImpl.java"

# interfaces
.implements Lfmx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lfnk;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnk;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    const-string/jumbo v3, "tb_safe_oplog"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lfqk;)I
    .locals 8
    .param p1, "object"    # Lfqk;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 24
    const/4 v2, 0x0

    .line 26
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lfnk;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnk;->k()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    const-class v6, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    const-string/jumbo v7, "tb_safe_oplog"

    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 27
    invoke-static {p1}, Lcom/alibaba/android/user/entry/SafeOplogEntry;->fromSafeOplogModel(Lfqk;)Lcom/alibaba/android/user/entry/SafeOplogEntry;

    move-result-object v1

    .line 28
    .local v1, "entry":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/entry/SafeOplogEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 29
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 30
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v2}, Lfnk;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    const/4 v3, 0x1

    .line 37
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    :goto_0
    return v3

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v2}, Lfnk;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 37
    const/4 v3, 0x0

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lfnk;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method

.method public final b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfqk;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 47
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Lfqk;>;"
    iget-object v0, p0, Lfnk;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnk;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    const-string/jumbo v3, "tb_safe_oplog"

    const-class v4, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    .line 49
    invoke-static {v4}, Lcom/alibaba/android/user/entry/SafeOplogEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 48
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 51
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 53
    :try_start_0
    new-instance v10, Lcom/alibaba/android/user/entry/SafeOplogEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/SafeOplogEntry;-><init>()V

    .line 54
    .local v10, "entry":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v10}, Lcom/alibaba/android/user/entry/SafeOplogEntry;->reset()V

    .line 56
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/SafeOplogEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 57
    invoke-virtual {v10}, Lcom/alibaba/android/user/entry/SafeOplogEntry;->toSafeOplogModel()Lfqk;

    move-result-object v11

    .line 58
    .local v11, "o":Lfqk;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    .end local v10    # "entry":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    .end local v11    # "o":Lfqk;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v10    # "entry":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 64
    .end local v10    # "entry":Lcom/alibaba/android/user/entry/SafeOplogEntry;
    :cond_1
    return-object v12
.end method
