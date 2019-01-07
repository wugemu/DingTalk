.class public Lcom/j256/ormlite/android/AndroidDatabaseResults;
.super Ljava/lang/Object;
.source "AndroidDatabaseResults.java"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseResults;


# static fields
.field private static final f:Lcom/j256/ormlite/db/DatabaseType;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/j256/ormlite/dao/ObjectCache;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->f:Lcom/j256/ormlite/db/DatabaseType;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;Z)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .param p3, "cacheStore"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b:[Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->c:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->c:Ljava/util/Map;

    .line 47
    :cond_1
    iput-object p2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->d:Lcom/j256/ormlite/dao/ObjectCache;

    .line 48
    iput-boolean p3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->e:Z

    .line 49
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 259
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->c:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 260
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 266
    goto :goto_1

    .line 269
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->c:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 270
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_3

    move v0, v2

    .line 271
    goto :goto_1

    .line 273
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "index":I
    if-ltz v1, :cond_0

    move v2, v1

    .line 126
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    return v2

    .line 122
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/j256/ormlite/android/AndroidDatabaseResults;->f:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v4, v3, p1}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->b(Ljava/lang/String;)I

    move-result v1

    .line 125
    if-ltz v1, :cond_1

    move v2, v1

    .line 126
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 128
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "columnNames":[Ljava/lang/String;
    new-instance v4, Ljava/sql/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unknown field \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' from the Android sqlite cursor, not in:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(I)C
    .locals 4
    .param p1, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "string":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 156
    :cond_2
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "More than 1 character stored in database column: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    return-void
.end method

.method public final d(I)B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->f(I)S

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public final d()Ljava/sql/Timestamp;
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
    .line 197
    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Android does not support timestamp.  Use JAVA_DATE_LONG or JAVA_DATE_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/math/BigDecimal;
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
    .line 207
    new-instance v0, Ljava/sql/SQLException;

    const-string/jumbo v1, "Android does not support BigDecimal type.  Use BIG_DECIMAL or BIG_DECIMAL_STRING types"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->d:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
.end method

.method public final f(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final g(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final g()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->e:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->d:Lcom/j256/ormlite/dao/ObjectCache;

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final j(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final k(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseResults;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
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
