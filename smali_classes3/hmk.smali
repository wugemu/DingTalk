.class public Lhmk;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "LocalResSourceImpl.java"

# interfaces
.implements Lhme;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhmk$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "localId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lhmk;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lhmk;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    const-string/jumbo v3, "tb_lightapp_mini_local_res"

    sget-object v4, Lhmk$a;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Z
    .locals 9
    .param p1, "localResModel"    # Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 25
    const/4 v1, 0x0

    .line 31
    .local v1, "insertSuccess":Z
    const/4 v3, 0x0

    .line 32
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    invoke-virtual {p0}, Lhmk;->k()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "dbName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    :goto_0
    return v5

    .line 37
    :cond_0
    :try_start_0
    iget-object v5, p0, Lhmk;->c:Lcom/alibaba/bee/DBManager;

    const-class v6, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    const-class v7, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    const-string/jumbo v8, "tb_lightapp_mini_local_res"

    .line 38
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v5, v0, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 40
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->toDBEntry(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    move-result-object v2

    .line 41
    .local v2, "localResEntry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 43
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 44
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v1, 0x1

    .line 56
    :cond_1
    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .end local v2    # "localResEntry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    :cond_2
    :goto_1
    move v5, v1

    .line 61
    goto :goto_0

    .line 47
    :catch_0
    move-exception v4

    .line 48
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    const-string/jumbo v5, "LocalResSourceImpl"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "insert fail"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "localResModel.id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 50
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1093
    const-string/jumbo v7, "mini_data"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_4

    .line 53
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_3

    .line 57
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    :cond_3
    throw v5

    .line 56
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_4
    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .locals 12
    .param p1, "localId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-virtual {p0}, Lhmk;->k()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-object v7

    .line 77
    :cond_0
    iget-object v0, p0, Lhmk;->c:Lcom/alibaba/bee/DBManager;

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    const-string/jumbo v3, "tb_lightapp_mini_local_res"

    const-class v4, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    .line 78
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhmk$a;->a:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    move-object v8, v7

    .line 77
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 79
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 80
    .local v11, "result":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v9, :cond_2

    .line 82
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v10, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    invoke-direct {v10}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;-><init>()V

    .line 84
    .local v10, "entry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 85
    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fromDBEntry(Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 88
    .end local v10    # "entry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v11

    .line 91
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 96
    invoke-virtual {p0}, Lhmk;->k()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-object v7

    .line 101
    :cond_0
    iget-object v0, p0, Lhmk;->c:Lcom/alibaba/bee/DBManager;

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    const-string/jumbo v3, "tb_lightapp_mini_local_res"

    const-class v4, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    .line 102
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhmk$a;->b:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    move-object v8, v7

    .line 101
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 103
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 104
    .local v11, "result":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v9, :cond_2

    .line 106
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v10, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;

    invoke-direct {v10}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;-><init>()V

    .line 108
    .local v10, "entry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 109
    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;->fromDBEntry(Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 112
    .end local v10    # "entry":Lcom/alibaba/lightapp/runtime/miniapp/datasource/entry/LocalResEntry;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v11

    .line 115
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
