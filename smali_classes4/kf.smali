.class public final Lkf;
.super Ljava/lang/Object;
.source "StrategySerializeHelper.java"


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lkf;->a:Ljava/io/File;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 116
    const-class v1, Lkf;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lkf;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lky;->a(Ljava/io/File;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 27
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "awcn_strategy"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    sput-object v3, Lkf;->a:Ljava/io/File;

    invoke-static {v3}, Lkf;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "create directory failed!!!"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "dir"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lkf;->a:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-static {}, Lic;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 33
    invoke-static {}, Lic;->c()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "process":Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "appendix":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lkf;->a:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    sput-object v3, Lkf;->a:Ljava/io/File;

    invoke-static {v3}, Lkf;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "create directory failed!!!"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "dir"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lkf;->a:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_1
    invoke-static {}, Lkf;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "appendix":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "awcn.StrategySerializeHelper"

    const-string/jumbo v4, "StrategySerializeHelper initialize failed!!!"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v9, v1, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 2
    .param p0, "serializable"    # Ljava/io/Serializable;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v1, Lkf;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lkf;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lky;->a(Ljava/io/Serializable;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v1

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lkf;->a:Ljava/io/File;

    invoke-static {v0}, Lkf;->a(Ljava/io/File;)Z

    .line 56
    new-instance v0, Ljava/io/File;

    sget-object v1, Lkf;->a:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized b()V
    .locals 10

    .prologue
    .line 60
    const-class v6, Lkf;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "awcn.StrategySerializeHelper"

    const-string/jumbo v7, "clear start."

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    sget-object v5, Lkf;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 72
    .local v2, "files":[Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 64
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    :try_start_1
    sget-object v5, Lkf;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 65
    .restart local v2    # "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 68
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 69
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    const-string/jumbo v5, "awcn.StrategySerializeHelper"

    const-string/jumbo v7, "clear end."

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized c()[Ljava/io/File;
    .locals 3

    .prologue
    .line 75
    const-class v2, Lkf;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lkf;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 87
    .local v0, "files":[Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 78
    .end local v0    # "files":[Ljava/io/File;
    :cond_1
    :try_start_1
    sget-object v1, Lkf;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 79
    .restart local v0    # "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lkf$1;

    invoke-direct {v1}, Lkf$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized d()V
    .locals 12

    .prologue
    .line 91
    const-class v6, Lkf;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lkf;->c()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 92
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 109
    :cond_0
    monitor-exit v6

    return-void

    .line 96
    :cond_1
    const/4 v3, 0x0

    .line 97
    .local v3, "numOfTables":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "numOfTables":I
    .local v4, "numOfTables":I
    :goto_0
    :try_start_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 98
    aget-object v0, v1, v2

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x240c8400

    cmp-long v5, v8, v10

    if-ltz v5, :cond_3

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v3, v4

    .line 97
    .end local v4    # "numOfTables":I
    .restart local v3    # "numOfTables":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "numOfTables":I
    .restart local v4    # "numOfTables":I
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "config"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numOfTables":I
    .restart local v3    # "numOfTables":I
    int-to-long v8, v4

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "numOfTables":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v0    # "file":Ljava/io/File;
    .restart local v4    # "numOfTables":I
    :cond_4
    move v3, v4

    .end local v4    # "numOfTables":I
    .restart local v3    # "numOfTables":I
    goto :goto_1
.end method
