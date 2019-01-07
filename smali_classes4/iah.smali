.class public final Liah;
.super Lcom/alibaba/wukong/im/base/IMDatabase;
.source "WKConfDB.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/wukong/im/base/IMDatabase;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Liah;->getWritableDatabase()Ljava/lang/String;

    move-result-object v0

    .local v0, "dbName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    :cond_0
    const-wide/16 v2, 0x0

    .line 34
    :goto_0
    return-wide v2

    .line 30
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v2, "val"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    const-class v3, Liai;

    const-string/jumbo v4, "tbwkconf"

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Liai;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Liah;->getReadableDatabase()Ljava/lang/String;

    move-result-object v1

    .local v1, "dbName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 87
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 69
    .restart local v1    # "dbName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v0

    const-class v2, Liai;

    const-string/jumbo v3, "tbwkconf"

    const-class v4, Liai;

    .line 70
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object p0, v6, v8

    move-object v8, v7

    .line 69
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 72
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 73
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Liai;>;"
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v10, Liai;

    invoke-direct {v10}, Liai;-><init>()V

    .line 77
    .local v10, "entry":Liai;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Liai;->name:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Liai;->value:Ljava/lang/String;

    .line 79
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Liai;->type:Ljava/lang/String;

    .line 80
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 84
    .end local v10    # "entry":Liai;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v11

    goto :goto_0
.end method
