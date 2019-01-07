.class public Lcom/j256/ormlite/table/DatabaseTableConfigLoader;
.super Ljava/lang/Object;
.source "DatabaseTableConfigLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 2
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/table/DatabaseTableConfig<*>;>;"
    :goto_0
    invoke-static {p0}, Lcom/j256/ormlite/table/DatabaseTableConfigLoader;->b(Ljava/io/BufferedReader;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v0

    .line 33
    .local v0, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<*>;"
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/io/BufferedReader;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 9
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>()V

    .line 48
    .local v1, "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    const/4 v0, 0x0

    .line 52
    .local v0, "anything":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 60
    const-string/jumbo v5, "# --table-end--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 64
    const-string/jumbo v5, "# --table-fields-start--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1160
    if-eqz v6, :cond_1

    const-string/jumbo v7, "# --table-fields-end--"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1163
    invoke-static {p0}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->a(Ljava/io/BufferedReader;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v6

    .line 1164
    if-eqz v6, :cond_1

    .line 1167
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Could not read DatabaseTableConfig from stream"

    invoke-static {v5, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 1157
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1158
    const-string/jumbo v6, "Could not read next field from config file"

    invoke-static {v6, v5}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 2105
    :cond_1
    iput-object v5, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->c:Ljava/util/List;

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "# --table-start--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    const-string/jumbo v5, "="

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 74
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "DatabaseTableConfig reading from stream cannot parse line: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 2135
    const-string/jumbo v7, "dataClass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2138
    :try_start_2
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3090
    iput-object v5, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 78
    goto/16 :goto_0

    .line 2141
    :catch_2
    move-exception v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unknown class specified for dataClass: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2143
    :cond_5
    const-string/jumbo v7, "tableName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3101
    iput-object v6, v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->b:Ljava/lang/String;

    goto :goto_2

    .line 80
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 84
    .end local v1    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :goto_3
    return-object v1

    .restart local v1    # "config":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    :cond_7
    const/4 v1, 0x0

    goto :goto_3
.end method
