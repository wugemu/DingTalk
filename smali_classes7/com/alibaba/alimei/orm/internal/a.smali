.class final Lcom/alibaba/alimei/orm/internal/a;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;
.source "CipherDBHelper.java"


# instance fields
.field private final a:I

.field private b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private c:Lcom/alibaba/alimei/orm/internal/e;

.field private mConfiguration:Lcom/alibaba/alimei/orm/Configuration;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/orm/internal/e;Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)V
    .locals 3
    .param p1, "wrapper"    # Lcom/alibaba/alimei/orm/internal/e;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configuration"    # Lcom/alibaba/alimei/orm/Configuration;

    .prologue
    .line 23
    invoke-virtual {p3}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseVersion()I

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/a;->c:Lcom/alibaba/alimei/orm/internal/e;

    .line 25
    invoke-virtual {p3}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseVersion()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/orm/internal/a;->a:I

    .line 26
    iput-object p3, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/Configuration;->isEnableWAL()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/internal/a;->setWriteAheadLoggingEnabled(Z)V

    .line 28
    return-void
.end method

.method private a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alibaba/alimei/orm/internal/c;
    .locals 1
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/alimei/orm/internal/a$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/orm/internal/a$1;-><init>(Lcom/alibaba/alimei/orm/internal/a;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 43
    .local v0, "executor":Lcom/alibaba/alimei/orm/internal/c;
    return-object v0
.end method

.method private b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/a;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 117
    return-void
.end method


# virtual methods
.method public final declared-synchronized getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->b:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/orm/internal/a;->setWriteAheadLoggingEnabled(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    :goto_1
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v1    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 50
    .local v0, "conf":Lcom/alibaba/alimei/orm/Configuration;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lcom/alibaba/alimei/orm/internal/DBCreator;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/orm/internal/DBCreator;-><init>(Lcom/alibaba/alimei/orm/Configuration;)V

    .line 53
    .local v1, "creator":Lcom/alibaba/alimei/orm/internal/DBCreator;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alibaba/alimei/orm/internal/c;

    move-result-object v2

    .line 54
    .local v2, "executor":Lcom/alibaba/alimei/orm/internal/c;
    iget v3, p0, Lcom/alibaba/alimei/orm/internal/a;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/internal/DBCreator;->onCreate(Lcom/alibaba/alimei/orm/internal/c;I)V

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/Configuration;->releaseUnusedResource()V

    .line 58
    .end local v1    # "creator":Lcom/alibaba/alimei/orm/internal/DBCreator;
    .end local v2    # "executor":Lcom/alibaba/alimei/orm/internal/c;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 59
    return-void
.end method

.method public final onDowngrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 82
    .local v0, "conf":Lcom/alibaba/alimei/orm/Configuration;
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/alibaba/alimei/orm/internal/DBCreator;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/orm/internal/DBCreator;-><init>(Lcom/alibaba/alimei/orm/Configuration;)V

    .line 85
    .local v1, "creator":Lcom/alibaba/alimei/orm/internal/DBCreator;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alibaba/alimei/orm/internal/c;

    move-result-object v2

    .line 86
    .local v2, "executor":Lcom/alibaba/alimei/orm/internal/c;
    invoke-virtual {v1, v2, p2, p3}, Lcom/alibaba/alimei/orm/internal/DBCreator;->onDowngrade(Lcom/alibaba/alimei/orm/internal/c;II)V

    .line 88
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/Configuration;->releaseUnusedResource()V

    .line 90
    .end local v1    # "creator":Lcom/alibaba/alimei/orm/internal/DBCreator;
    .end local v2    # "executor":Lcom/alibaba/alimei/orm/internal/c;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 91
    return-void
.end method

.method public final onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 33
    return-void
.end method

.method public final onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 65
    .local v0, "conf":Lcom/alibaba/alimei/orm/Configuration;
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/alibaba/alimei/orm/internal/DBCreator;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/orm/internal/DBCreator;-><init>(Lcom/alibaba/alimei/orm/Configuration;)V

    .line 68
    .local v1, "creator":Lcom/alibaba/alimei/orm/internal/DBCreator;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/orm/internal/a;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alibaba/alimei/orm/internal/c;

    move-result-object v2

    .line 69
    .local v2, "executor":Lcom/alibaba/alimei/orm/internal/c;
    invoke-virtual {v1, v2, p2, p3}, Lcom/alibaba/alimei/orm/internal/DBCreator;->onUpgrade(Lcom/alibaba/alimei/orm/internal/c;II)V

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/Configuration;->releaseUnusedResource()V

    .line 73
    .end local v1    # "creator":Lcom/alibaba/alimei/orm/internal/DBCreator;
    .end local v2    # "executor":Lcom/alibaba/alimei/orm/internal/c;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/alimei/orm/internal/a;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    .line 74
    return-void
.end method
