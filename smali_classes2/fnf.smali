.class public Lfnf;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "LoginUserDataSourceImpl.java"

# interfaces
.implements Lfms;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 28
    const-string/jumbo v0, "login_users.db"

    iput-object v0, p0, Lfnf;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lfnf;->b:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lfnf;->b:Lcom/google/gson/Gson;

    .line 96
    :cond_0
    iget-object v0, p0, Lfnf;->b:Lcom/google/gson/Gson;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)I
    .locals 9
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lfnf;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-static {v4, p2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "json":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v4, "info"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lfnf;->c:Lcom/alibaba/bee/DBManager;

    const-string/jumbo v5, "login_users.db"

    const-class v6, Lcom/alibaba/android/user/entry/LoginUserEntry;

    const-string/jumbo v7, "tb_login_users"

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v3, v4

    .line 73
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LoginUserDataSourceImpl"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "LoginUserDataSourceImpl insertOrReplace and exception = "

    aput-object v7, v6, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lfxo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 11
    .param p1, "uid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lfnf;->c:Lcom/alibaba/bee/DBManager;

    const-string/jumbo v6, "login_users.db"

    const-class v7, Lcom/alibaba/android/user/entry/LoginUserEntry;

    const-string/jumbo v8, "SELECT * FROM tb_login_users WHERE uid=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 59
    :cond_1
    :goto_0
    return-object v4

    .line 43
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    new-instance v2, Lcom/alibaba/android/user/entry/LoginUserEntry;

    invoke-direct {v2}, Lcom/alibaba/android/user/entry/LoginUserEntry;-><init>()V

    .line 45
    .local v2, "entry":Lcom/alibaba/android/user/entry/LoginUserEntry;
    invoke-virtual {v2, v0}, Lcom/alibaba/android/user/entry/LoginUserEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 46
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/StringReader;

    iget-object v6, v2, Lcom/alibaba/android/user/entry/LoginUserEntry;->info:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v3, "reader":Lcom/google/gson/stream/JsonReader;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 48
    invoke-direct {p0}, Lfnf;->a()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v4, v3, v6}, Lcor;->a(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 54
    .end local v2    # "entry":Lcom/alibaba/android/user/entry/LoginUserEntry;
    .end local v3    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_3
    if-eqz v0, :cond_4

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v4, v5

    .line 59
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "LoginUserDataSourceImpl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getUserProfileExtensionObjectByUid and exception = "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lfxo;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method
