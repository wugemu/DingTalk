.class public Lcom/j256/ormlite/android/AndroidDatabaseConnection;
.super Ljava/lang/Object;
.source "AndroidDatabaseConnection.java"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/AndroidDatabaseConnection$1;,
        Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;
    }
.end annotation


# static fields
.field private static b:Lcom/j256/ormlite/logger/Logger;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->c:[Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "VERSION__5.0__"

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->a(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "readWrite"    # Z
    .param p3, "cancelQueriesEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iput-boolean v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->e:Z

    .line 52
    iput-boolean p3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->f:Z

    .line 53
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "{}: db {} opened, read-write = {}"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I
    .locals 6
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 310
    invoke-static {v2, p2, p3}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V

    .line 311
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-static {v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 316
    const/4 v2, 0x0

    .line 320
    :try_start_1
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "SELECT CHANGES()"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    long-to-int v1, v4

    .line 326
    .local v1, "result":I
    invoke-static {v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 328
    :goto_0
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v4, "{} statement is compiled and executed, changed {}: {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, p4, v5, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    return v1

    .line 312
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updating database failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 316
    throw v3

    .line 324
    :catch_1
    move-exception v3

    const/4 v1, 0x1

    .line 326
    .restart local v1    # "result":I
    invoke-static {v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    goto :goto_0

    .end local v1    # "result":I
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    throw v3
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 404
    if-eqz p0, :cond_0

    .line 405
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .param p0, "statement"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 413
    if-eqz p0, :cond_0

    .line 414
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 416
    :cond_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 6
    .param p0, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 333
    if-nez p1, :cond_1

    .line 376
    :cond_0
    return-void

    .line 336
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 337
    aget-object v0, p1, v1

    .line 338
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 339
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 336
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_2
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v2

    .line 342
    .local v2, "sqlType":Lcom/j256/ormlite/field/SqlType;
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection$1;->a:[I

    invoke-virtual {v2}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 372
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown sql argument type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 353
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 357
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_2
    add-int/lit8 v3, v1, 0x1

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    .line 361
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    check-cast v0, [B

    .end local v0    # "arg":Ljava/lang/Object;
    check-cast v0, [B

    invoke-virtual {p0, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    .line 369
    .restart local v0    # "arg":Ljava/lang/Object;
    :pswitch_4
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Invalid Android type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 379
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 392
    :cond_1
    return-object v2

    .line 382
    :cond_2
    array-length v4, p0

    new-array v2, v4, [Ljava/lang/String;

    .line 383
    .local v2, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 384
    aget-object v0, p0, v1

    .line 385
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 386
    aput-object v3, v2, v1

    .line 383
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 188
    const-string/jumbo v0, "updated"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
    .locals 8
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "keyHolder"    # Lcom/j256/ormlite/support/GeneratedKeyHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 167
    invoke-static {v1, p2, p3}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V

    .line 168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 169
    .local v2, "rowId":J
    if-eqz p4, :cond_0

    .line 170
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/j256/ormlite/support/GeneratedKeyHolder;->a(Ljava/lang/Number;)V

    .line 177
    :cond_0
    sget-object v4, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v5, "{}: insert statement is compiled and executed, changed {}: {}"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, p0, v6, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-static {v1}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    return v7

    .line 179
    .end local v2    # "rowId":J
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "inserting to database failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/sqlite/SQLiteStatement;)V

    throw v4
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 9
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 244
    .local v4, "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :try_start_0
    iget-object v6, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 245
    new-instance v5, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v0, v6, v7}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .local v5, "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :try_start_1
    invoke-virtual {v5}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->h(I)J

    move-result-wide v2

    .line 252
    .local v2, "result":J
    :goto_0
    sget-object v6, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v7, "{}: query for long raw query returned {}: {}"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, p0, v8, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    invoke-static {v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/Cursor;)V

    .line 258
    invoke-static {v5}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    return-wide v2

    .line 250
    .end local v2    # "result":J
    :cond_0
    const-wide/16 v2, 0x0

    .restart local v2    # "result":J
    goto :goto_0

    .line 254
    .end local v2    # "result":J
    .end local v5    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Landroid/database/SQLException;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "queryForLong from database failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/Cursor;)V

    .line 258
    invoke-static {v4}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    throw v6

    .line 257
    .end local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v5    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    goto :goto_2

    .line 254
    .end local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v5    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 6
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p3, "cacheStore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    new-instance v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v4, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->f:Z

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/AndroidCompiledStatement;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;ZZ)V

    .line 157
    .local v0, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: compiled statement got {}: {}"

    invoke-virtual {v1, v2, p0, v0, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    return-object v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 7
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    .local p3, "rowMapper":Lcom/j256/ormlite/stmt/GenericRowMapper;, "Lcom/j256/ormlite/stmt/GenericRowMapper<TT;>;"
    const/4 v0, 0x0

    .line 201
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 203
    .local v3, "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :try_start_0
    iget-object v5, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    new-instance v4, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    const/4 v5, 0x1

    invoke-direct {v4, v0, p4, v5}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v3    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .local v4, "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :try_start_1
    sget-object v5, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v6, "{}: queried for one result: {}"

    invoke-virtual {v5, v6, p0, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_0

    .line 219
    invoke-static {v4}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 209
    :cond_0
    :try_start_2
    invoke-interface {p3, v4}, Lcom/j256/ormlite/stmt/GenericRowMapper;->a(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "first":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a:Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    .end local v2    # "first":Ljava/lang/Object;, "TT;"
    invoke-static {v4}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 219
    .restart local v2    # "first":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-static {v4}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 216
    .end local v2    # "first":Ljava/lang/Object;, "TT;"
    .end local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v3    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/database/SQLException;
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryForOne from database failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v3}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 220
    invoke-static {v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Landroid/database/Cursor;)V

    throw v5

    .line 219
    .end local v3    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v3    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    goto :goto_2

    .line 216
    .end local v3    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    .restart local v3    # "results":Lcom/j256/ormlite/android/AndroidDatabaseResults;
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 95
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: save-point set with name {}"

    invoke-virtual {v1, v2, p0, p1}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "problems beginning transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public final a(Ljava/sql/Savepoint;)V
    .locals 4
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 113
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: transaction is successfuly ended"

    invoke-virtual {v1, v2, p0}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: transaction {} is successfuly ended"

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/database/SQLException;
    if-nez p1, :cond_1

    .line 121
    const-string/jumbo v1, "problems commiting transaction"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "problems commiting transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "autoCommit"    # Z

    .prologue
    .line 79
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 82
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 194
    const-string/jumbo v0, "deleted"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->a(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/sql/Savepoint;)V
    .locals 4
    .param p1, "savepoint"    # Ljava/sql/Savepoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    if-nez p1, :cond_0

    .line 134
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: transaction is ended, unsuccessfuly"

    invoke-virtual {v1, v2, p0}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: transaction {} is ended, unsuccessfuly"

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/database/SQLException;
    if-nez p1, :cond_1

    .line 140
    const-string/jumbo v1, "problems rolling back transaction"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "problems rolling back transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public final b()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    .line 65
    .local v1, "inTransaction":Z
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "{}: in transaction is {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, p0, v4}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    .end local v1    # "inTransaction":Z
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v2, "problems getting auto-commit from database"

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 266
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: db {} closed"

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p0, v3}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "problems closing the database connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 397
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
