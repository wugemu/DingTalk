.class public Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;
.super Ljava/lang/Object;
.source "DatabaseFieldConfigLoader.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/DataPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->a:Lcom/j256/ormlite/field/DataPersister;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/BufferedReader;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 8
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 32
    .local v1, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    const/4 v0, 0x0

    .line 36
    .local v0, "anything":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 40
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 44
    const-string/jumbo v5, "# --field-end--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "# --field-start--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    const-string/jumbo v5, "="

    const/4 v6, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 53
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "DatabaseFieldConfig reading from stream cannot parse line: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 37
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Could not read DatabaseFieldConfig from stream"

    invoke-static {v5, v2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v5

    throw v5

    .line 55
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "parts":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v1, v5, v6}, Lcom/j256/ormlite/field/DatabaseFieldConfigLoader;->a(Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 59
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 63
    .end local v1    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :goto_1
    return-object v1

    .restart local v1    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "config"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 309
    const-string/jumbo v10, "fieldName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1130
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string/jumbo v10, "columnName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1141
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_2
    const-string/jumbo v10, "dataPersister"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 314
    invoke-static {p2}, Lcom/j256/ormlite/field/DataType;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/field/DataType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v10

    .line 1170
    iput-object v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->f:Lcom/j256/ormlite/field/DataPersister;

    goto :goto_0

    .line 315
    :cond_3
    const-string/jumbo v10, "defaultValue"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1181
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->g:Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_4
    const-string/jumbo v10, "width"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 318
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1192
    iput v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->h:I

    goto :goto_0

    .line 319
    :cond_5
    const-string/jumbo v10, "canBeNull"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 320
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1203
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->i:Z

    goto :goto_0

    .line 321
    :cond_6
    const-string/jumbo v10, "id"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 322
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1214
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->j:Z

    goto :goto_0

    .line 323
    :cond_7
    const-string/jumbo v10, "generatedId"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 324
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1225
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->k:Z

    goto :goto_0

    .line 325
    :cond_8
    const-string/jumbo v10, "generatedIdSequence"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1236
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 327
    :cond_9
    const-string/jumbo v10, "foreign"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 328
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1247
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    goto/16 :goto_0

    .line 329
    :cond_a
    const-string/jumbo v10, "useGetSet"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 330
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1270
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->n:Z

    goto/16 :goto_0

    .line 331
    :cond_b
    const-string/jumbo v10, "unknownEnumValue"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 332
    const-string/jumbo v10, "#"

    const/4 v11, -0x2

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, "parts":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_c

    .line 334
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Invalid value for unknownEnumValue which should be in class#name format: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 339
    :cond_c
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 343
    .local v3, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    .line 344
    .local v2, "consts":[Ljava/lang/Object;
    if-nez v2, :cond_d

    .line 345
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Invalid class is not an Enum for unknownEnumValue: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 341
    .end local v2    # "consts":[Ljava/lang/Object;
    .end local v3    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unknown class specified for unknownEnumValue: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 348
    .restart local v2    # "consts":[Ljava/lang/Object;
    .restart local v3    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    check-cast v2, [Ljava/lang/Enum;

    .end local v2    # "consts":[Ljava/lang/Object;
    move-object v4, v2

    check-cast v4, [Ljava/lang/Enum;

    .line 349
    .local v4, "enumConstants":[Ljava/lang/Enum;
    const/4 v6, 0x0

    .line 350
    .local v6, "found":Z
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_f

    aget-object v5, v0, v7

    .line 351
    .local v5, "enumInstance":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v9, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1278
    iput-object v5, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->o:Ljava/lang/Enum;

    .line 353
    const/4 v6, 0x1

    .line 350
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 356
    .end local v5    # "enumInstance":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_f
    if-nez v6, :cond_0

    .line 357
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Invalid enum value name for unknownEnumvalue: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 359
    .end local v0    # "arr$":[Ljava/lang/Enum;
    .end local v3    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "enumConstants":[Ljava/lang/Enum;
    .end local v6    # "found":Z
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "parts":[Ljava/lang/String;
    :cond_10
    const-string/jumbo v10, "throwIfNull"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 360
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1286
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->p:Z

    goto/16 :goto_0

    .line 361
    :cond_11
    const-string/jumbo v10, "format"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1302
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 363
    :cond_12
    const-string/jumbo v10, "unique"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 364
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1310
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->s:Z

    goto/16 :goto_0

    .line 365
    :cond_13
    const-string/jumbo v10, "uniqueCombo"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 366
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1318
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->t:Z

    goto/16 :goto_0

    .line 367
    :cond_14
    const-string/jumbo v10, "index"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 368
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1326
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->u:Z

    goto/16 :goto_0

    .line 369
    :cond_15
    const-string/jumbo v10, "indexName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2326
    iput-boolean v12, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->u:Z

    .line 2337
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 372
    :cond_16
    const-string/jumbo v10, "uniqueIndex"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 373
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 2345
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->w:Z

    goto/16 :goto_0

    .line 374
    :cond_17
    const-string/jumbo v10, "uniqueIndexName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 3345
    iput-boolean v12, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->w:Z

    .line 3356
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->x:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    :cond_18
    const-string/jumbo v10, "foreignAutoRefresh"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 378
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3360
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    goto/16 :goto_0

    .line 379
    :cond_19
    const-string/jumbo v10, "maxForeignAutoRefreshLevel"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 380
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3380
    iput v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    goto/16 :goto_0

    .line 381
    :cond_1a
    const-string/jumbo v10, "persisterClass"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 384
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3448
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    iput-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->A:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 387
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    :catch_1
    move-exception v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Could not find persisterClass: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 389
    :cond_1b
    const-string/jumbo v10, "allowGeneratedIdInsert"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 390
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3456
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->B:Z

    goto/16 :goto_0

    .line 391
    :cond_1c
    const-string/jumbo v10, "columnDefinition"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 3464
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->C:Ljava/lang/String;

    goto/16 :goto_0

    .line 393
    :cond_1d
    const-string/jumbo v10, "foreignAutoCreate"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 394
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3472
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->D:Z

    goto/16 :goto_0

    .line 395
    :cond_1e
    const-string/jumbo v10, "version"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 396
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3480
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->E:Z

    goto/16 :goto_0

    .line 397
    :cond_1f
    const-string/jumbo v10, "foreignColumnName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 3488
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    goto/16 :goto_0

    .line 399
    :cond_20
    const-string/jumbo v10, "readOnly"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 400
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3496
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->G:Z

    goto/16 :goto_0

    .line 405
    :cond_21
    const-string/jumbo v10, "foreignCollection"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 406
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 4392
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    goto/16 :goto_0

    .line 407
    :cond_22
    const-string/jumbo v10, "foreignCollectionEager"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 408
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 4400
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->I:Z

    goto/16 :goto_0

    .line 409
    :cond_23
    const-string/jumbo v10, "maxEagerForeignCollectionLevel"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 410
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 4408
    iput v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    goto/16 :goto_0

    .line 411
    :cond_24
    const-string/jumbo v10, "foreignCollectionMaxEagerLevel"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 412
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 5408
    iput v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    goto/16 :goto_0

    .line 413
    :cond_25
    const-string/jumbo v10, "foreignCollectionColumnName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 5416
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->K:Ljava/lang/String;

    goto/16 :goto_0

    .line 415
    :cond_26
    const-string/jumbo v10, "foreignCollectionOrderColumn"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 5424
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    goto/16 :goto_0

    .line 417
    :cond_27
    const-string/jumbo v10, "foreignCollectionOrderColumnName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 6424
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    goto/16 :goto_0

    .line 419
    :cond_28
    const-string/jumbo v10, "foreignCollectionOrderAscending"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 420
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 6432
    iput-boolean v10, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    goto/16 :goto_0

    .line 421
    :cond_29
    const-string/jumbo v10, "foreignCollectionForeignColumnName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 6440
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->N:Ljava/lang/String;

    goto/16 :goto_0

    .line 423
    :cond_2a
    const-string/jumbo v10, "foreignCollectionForeignFieldName"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7440
    iput-object p2, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->N:Ljava/lang/String;

    goto/16 :goto_0
.end method
