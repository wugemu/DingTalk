.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;


# instance fields
.field private final mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private final mEditTable:Ljava/lang/String;

.field private mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

.field private final mSql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 40
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final cursorClosed()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final cursorDeactivated()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final cursorRequeried(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 80
    return-void
.end method

.method public final query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "factory"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .local v2, "query":Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    .line 63
    return-object v0

    .line 55
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v3, p0, v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 57
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->close()V

    .line 59
    throw v1
.end method

.method public final setBindArguments([Ljava/lang/String;)V
    .locals 1
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteDirectCursorDriver: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
