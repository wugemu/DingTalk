.class public Lcom/j256/ormlite/android/AndroidCompiledStatement;
.super Ljava/lang/Object;
.source "AndroidCompiledStatement.java"

# interfaces
.implements Lcom/j256/ormlite/support/CompiledStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/AndroidCompiledStatement$1;
    }
.end annotation


# static fields
.field private static a:Lcom/j256/ormlite/logger/Logger;

.field private static final b:[Ljava/lang/String;

.field private static final c:Lcom/j256/ormlite/android/compat/ApiCompatibility;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/database/sqlite/SQLiteDatabase;

.field private final f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field private final g:Z

.field private final h:Z

.field private i:Landroid/database/Cursor;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Integer;

.field private l:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->a:Lcom/j256/ormlite/logger/Logger;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->b:[Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/j256/ormlite/android/compat/ApiCompatibilityUtils;->a()Lcom/j256/ormlite/android/compat/ApiCompatibility;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->c:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;ZZ)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p4, "cancelQueriesEnabled"    # Z
    .param p5, "cacheStore"    # Z

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iput-object p3, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 52
    iput-boolean p4, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->g:Z

    .line 53
    iput-boolean p5, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->h:Z

    .line 54
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "finalSql"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v2, 0x0

    .line 222
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    const-string/jumbo v3, "SELECT CHANGES()"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    long-to-int v1, v4

    .line 228
    .local v1, "result":I
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 232
    :cond_0
    :goto_0
    sget-object v3, Lcom/j256/ormlite/android/AndroidCompiledStatement;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v4, "executing statement {} changed {} rows: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, p1, v5, p2}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    return v1

    .line 215
    .end local v1    # "result":I
    .end local v2    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/database/SQLException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Problems executing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Android statement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 226
    .end local v0    # "e":Landroid/database/SQLException;
    .restart local v2    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catch_1
    move-exception v3

    const/4 v1, 0x1

    .line 228
    .restart local v1    # "result":I
    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 228
    .end local v1    # "result":I
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v3
.end method

.method private c()Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "finalSql":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->k:Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 186
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d:Ljava/lang/String;

    .line 190
    :goto_0
    iget-boolean v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->g:Z

    if-eqz v2, :cond_0

    .line 191
    sget-object v2, Lcom/j256/ormlite/android/AndroidCompiledStatement;->c:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    invoke-interface {v2}, Lcom/j256/ormlite/android/compat/ApiCompatibility;->a()Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    move-result-object v2

    iput-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->l:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    .line 193
    :cond_0
    sget-object v3, Lcom/j256/ormlite/android/AndroidCompiledStatement;->c:Lcom/j256/ormlite/android/compat/ApiCompatibility;

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 1252
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    if-nez v2, :cond_3

    .line 1253
    sget-object v2, Lcom/j256/ormlite/android/AndroidCompiledStatement;->b:[Ljava/lang/String;

    .line 193
    :goto_1
    iget-object v5, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->l:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/j256/ormlite/android/compat/ApiCompatibility;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    .line 194
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    sget-object v2, Lcom/j256/ormlite/android/AndroidCompiledStatement;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "{}: started rawQuery cursor for: {}"

    invoke-virtual {v2, v3, p0, v1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "finalSql":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    return-object v2

    .line 188
    .restart local v1    # "finalSql":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->k:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1256
    :cond_3
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    iget-object v5, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Problems executing Android query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Query already run. Cannot add argument values."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    return-void
.end method

.method private e()[Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->b:[Ljava/lang/String;

    .line 247
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForUpdate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot call update on a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " statement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->k:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d:Ljava/lang/String;

    .line 86
    .local v0, "finalSql":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "runUpdate"

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->e()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 84
    .end local v0    # "finalSql":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "finalSql":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;
    .locals 3
    .param p1, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot call query on a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    new-instance v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->c()Landroid/database/Cursor;

    move-result-object v1

    iget-boolean v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->h:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d()V

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->k:Ljava/lang/Integer;

    .line 167
    return-void
.end method

.method public final a(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V
    .locals 3
    .param p1, "parameterIndex"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d()V

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    .line 129
    :cond_0
    if-nez p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/j256/ormlite/android/AndroidCompiledStatement$1;->a:[I

    invoke-virtual {p3}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown sql argument type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 156
    :pswitch_2
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid Android type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final b()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForExecute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot call execute on a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->f:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " statement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "runExecute"

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->e()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->i:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidCompiledStatement;->l:Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Problems closing Android cursor"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
