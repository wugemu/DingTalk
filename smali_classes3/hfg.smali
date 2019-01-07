.class public Lhfg;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "AppInfoSourceImpl.java"

# interfaces
.implements Lhff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhfg$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 168
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 95
    invoke-virtual {p0}, Lhfg;->k()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-object v7

    .line 100
    :cond_0
    iget-object v0, p0, Lhfg;->c:Lcom/alibaba/bee/DBManager;

    const-class v2, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    const-string/jumbo v3, "tb_lightapp_app_app_info"

    const-class v4, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    .line 101
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhfg$a;->a:Ljava/lang/String;

    new-array v6, v13, [Ljava/lang/String;

    aput-object p1, v6, v12

    move-object v8, v7

    .line 100
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 102
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;>;"
    if-eqz v9, :cond_2

    .line 105
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v10, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    invoke-direct {v10}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;-><init>()V

    .line 107
    .local v10, "entry":Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 108
    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->fromDBEntry(Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    .end local v10    # "entry":Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_2
    const-string/jumbo v0, "AppInfoSourceImpl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "getAppInfos"

    aput-object v3, v2, v12

    aput-object p1, v2, v13

    const/4 v3, 0x2

    aput-object v11, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v11

    .line 115
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "result":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    invoke-direct {p0, p1}, Lhfg;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    new-instance v1, Lhfg$1;

    invoke-direct {v1, p0}, Lhfg$1;-><init>(Lhfg;)V

    .line 159
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    check-cast v2, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    .line 162
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;>;"
    .restart local v2    # "result":Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;
    :cond_0
    const-string/jumbo v3, "AppInfoSourceImpl"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getHighestAppVersion"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return-object v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, "affected":I
    if-eqz p1, :cond_0

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lhfg;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lhfg;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    const-string/jumbo v3, "tb_lightapp_app_app_info"

    sget-object v4, Lhfg$a;->c:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 90
    :cond_0
    :goto_0
    const-string/jumbo v0, "AppInfoSourceImpl"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "deleteAppInfo"

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    aput-object p2, v1, v9

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lhfg;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lhfg;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    const-string/jumbo v3, "tb_lightapp_app_app_info"

    sget-object v4, Lhfg$a;->a:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/String;

    aput-object p1, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;)Z
    .locals 13
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 31
    const/4 v2, 0x0

    .line 33
    .local v2, "insertSuccess":Z
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v5

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    invoke-virtual {p0}, Lhfg;->k()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    :try_start_0
    iget-object v6, p0, Lhfg;->c:Lcom/alibaba/bee/DBManager;

    const-class v7, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    const-class v8, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    const-string/jumbo v9, "tb_lightapp_app_app_info"

    .line 44
    invoke-static {v8, v9}, Lcom/alibaba/bee/DatabaseUtils;->getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v6, v1, v7, v8}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 51
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->toDBEntry(Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;Z)Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;

    move-result-object v0

    .line 52
    .local v0, "appInfo":Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0, v3}, Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 54
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 55
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v2, 0x1

    .line 67
    :cond_2
    if-eqz v3, :cond_3

    .line 68
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    .line 72
    .end local v0    # "appInfo":Lcom/alibaba/lightapp/runtime/app/db/impl/AppInfoEntry;
    :cond_3
    :goto_1
    const-string/jumbo v6, "AppInfoSourceImpl"

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "saveAppInfo"

    aput-object v8, v7, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v10

    aput-object p1, v7, v11

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceApp(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v2

    .line 74
    goto :goto_0

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    const-string/jumbo v7, "AppInfoSourceImpl"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v9, "insert fail"

    aput-object v9, v8, v6

    const/4 v6, 0x1

    const-string/jumbo v9, "appInfoModel.app_id"

    aput-object v9, v8, v6

    const/4 v9, 0x2

    if-eqz p1, :cond_5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/app/api/AppInfoModel;->app_id:Ljava/lang/String;

    :goto_2
    aput-object v6, v8, v9

    const/4 v6, 0x3

    .line 61
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 1093
    const-string/jumbo v6, "mini_data"

    invoke-static {v6, v7, v8}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v7, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v6, v7, :cond_6

    .line 64
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    .line 68
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    :cond_4
    throw v5

    .line 60
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_5
    :try_start_2
    const-string/jumbo v6, "[null]"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 67
    :cond_6
    if-eqz v3, :cond_3

    .line 68
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->close()V

    goto :goto_1
.end method
