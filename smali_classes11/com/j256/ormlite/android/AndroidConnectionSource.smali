.class public Lcom/j256/ormlite/android/AndroidConnectionSource;
.super Lcom/j256/ormlite/support/BaseConnectionSource;
.source "AndroidConnectionSource.java"

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# static fields
.field private static final b:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private final c:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Lcom/j256/ormlite/support/DatabaseConnection;

.field private volatile f:Z

.field private final g:Lcom/j256/ormlite/db/DatabaseType;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->f:Z

    .line 33
    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->g:Lcom/j256/ormlite/db/DatabaseType;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->h:Z

    .line 38
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 39
    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    .line 1030
    iget-object v3, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 1031
    if-nez v3, :cond_0

    .line 1032
    const/4 v0, 0x0

    .line 61
    .local v0, "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    .end local v0    # "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    :goto_1
    return-object v0

    .line 1034
    :cond_0
    iget-object v0, v3, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_0

    .line 64
    .restart local v0    # "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    :cond_1
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    if-nez v3, :cond_2

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    iput-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 79
    sget-object v3, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v4, "created connection {} for db {}, helper {}"

    iget-object v5, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    iget-object v6, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Landroid/database/SQLException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Getting a writable database from helper "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 81
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_2
    sget-object v3, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v4, "{}: returning read-write connection {}, helper {}"

    iget-object v5, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    iget-object v6, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->a()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 4
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    .line 1060
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 1061
    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;-><init>(Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1063
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1065
    :cond_0
    iget-object v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    if-eq v1, p1, :cond_1

    .line 1066
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trying to save connection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but already have saved connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1133
    :cond_1
    iget v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->b:I

    .line 1071
    const/4 v0, 0x0

    .line 93
    goto :goto_0
.end method

.method public final b()Lcom/j256/ormlite/db/DatabaseType;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->g:Lcom/j256/ormlite/db/DatabaseType;

    return-object v0
.end method

.method public final b(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 8
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 98
    sget-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Lcom/j256/ormlite/logger/Logger;

    .line 2081
    iget-object v1, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    .line 2083
    if-eqz p1, :cond_0

    .line 2085
    if-nez v1, :cond_1

    .line 2086
    const-string/jumbo v3, "no connection has been saved when clear() called"

    .line 2334
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 2087
    :cond_1
    iget-object v3, v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v3, p1, :cond_2

    .line 3137
    iget v0, v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->b:I

    .line 3138
    iget v0, v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->b:I

    .line 2088
    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 2094
    :cond_2
    const-string/jumbo v3, "connection saved {} is not the one being cleared {}"

    iget-object v4, v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->a:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 3348
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->f:Z

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
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
