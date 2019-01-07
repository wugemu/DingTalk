.class public Lcom/alibaba/bee/impl/SafeDBHelper;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;
.source "SafeDBHelper.java"

# interfaces
.implements Lcom/alibaba/bee/impl/DBHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;",
        "Lcom/alibaba/bee/impl/DBHelper",
        "<",
        "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# static fields
.field private static sDBName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    new-instance v5, Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;

    invoke-direct {v5, v3}, Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;-><init>(Lcom/alibaba/bee/impl/SafeDBHelper$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILcom/alibaba/sqlcrypto/DatabaseErrorHandler;)V

    .line 19
    sput-object p2, Lcom/alibaba/bee/impl/SafeDBHelper;->sDBName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/bee/impl/SafeDBHelper;->sDBName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->close()V

    .line 56
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onClose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/bee/impl/SafeDBHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getDatabase()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/bee/impl/SafeDBHelper;->getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final isCrypto()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    return-void
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/alibaba/bee/impl/SafeDBHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onOpen(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 38
    return-void
.end method
