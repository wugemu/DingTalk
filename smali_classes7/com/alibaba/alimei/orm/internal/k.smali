.class public Lcom/alibaba/alimei/orm/internal/k;
.super Ljava/lang/Object;
.source "OrmCursorIndexCache.java"


# instance fields
.field private A:[Ljava/lang/String;

.field private B:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field private C:[Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/k;->A:[Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/k;->B:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 23
    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/k;->C:[Ljava/lang/reflect/Field;

    .line 19
    return-void
.end method

.method public static a(Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/lang/Object;)Lcom/alibaba/alimei/orm/internal/k;
    .locals 15
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "selectableInfo"    # Lcom/alibaba/alimei/orm/internal/i;
    .param p2, "resultModel"    # Ljava/lang/Object;

    .prologue
    .line 26
    new-instance v1, Lcom/alibaba/alimei/orm/internal/k;

    invoke-direct {v1}, Lcom/alibaba/alimei/orm/internal/k;-><init>()V

    .line 27
    .local v1, "cache":Lcom/alibaba/alimei/orm/internal/k;
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v12

    invoke-direct {v4, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 28
    .local v4, "columnsOrderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/alibaba/alimei/orm/internal/k;->A:[Ljava/lang/String;

    .line 29
    iget-object v12, v1, Lcom/alibaba/alimei/orm/internal/k;->A:[Ljava/lang/String;

    array-length v2, v12

    .line 31
    .local v2, "colsLength":I
    const/4 v11, 0x0

    .local v11, "pos":I
    :goto_0
    if-ge v11, v2, :cond_0

    .line 32
    iget-object v12, v1, Lcom/alibaba/alimei/orm/internal/k;->A:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 34
    :cond_0
    new-array v12, v2, [Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    iput-object v12, v1, Lcom/alibaba/alimei/orm/internal/k;->B:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 35
    new-array v12, v2, [Ljava/lang/reflect/Field;

    iput-object v12, v1, Lcom/alibaba/alimei/orm/internal/k;->C:[Ljava/lang/reflect/Field;

    .line 37
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/alimei/orm/internal/i;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 38
    .local v9, "fields":[Ljava/lang/reflect/Field;
    array-length v13, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v6, v9, v12

    .line 39
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/alibaba/alimei/orm/internal/i;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 41
    .local v10, "index":Ljava/lang/Integer;
    if-nez v10, :cond_2

    const/4 v3, -0x1

    .line 42
    .local v3, "columnIndex":I
    :goto_2
    if-ltz v3, :cond_1

    .line 45
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 46
    .local v8, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-static {v8}, Lcom/alibaba/alimei/orm/internal/j;->g(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    move-result-object v5

    .line 48
    .local v5, "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    iget-object v14, v1, Lcom/alibaba/alimei/orm/internal/k;->B:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v5, v14, v3

    .line 49
    iget-object v14, v1, Lcom/alibaba/alimei/orm/internal/k;->C:[Ljava/lang/reflect/Field;

    aput-object v6, v14, v3

    .line 51
    if-eqz p2, :cond_1

    .line 52
    move-object/from16 v0, p2

    invoke-direct {v1, v3, p0, v0}, Lcom/alibaba/alimei/orm/internal/k;->a(ILandroid/database/Cursor;Ljava/lang/Object;)V

    .line 38
    .end local v5    # "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .end local v8    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 41
    .end local v3    # "columnIndex":I
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 55
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v10    # "index":Ljava/lang/Integer;
    :cond_3
    return-object v1
.end method

.method private a(ILandroid/database/Cursor;Ljava/lang/Object;)V
    .locals 12
    .param p1, "columnIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "resultModel"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 65
    if-ltz p1, :cond_0

    iget-object v10, p0, Lcom/alibaba/alimei/orm/internal/k;->B:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    array-length v10, v10

    if-ge p1, v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/alimei/orm/internal/k;->C:[Ljava/lang/reflect/Field;

    array-length v10, v10

    if-ge p1, v10, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v10, p0, Lcom/alibaba/alimei/orm/internal/k;->B:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aget-object v3, v10, p1

    .line 71
    .local v3, "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    iget-object v10, p0, Lcom/alibaba/alimei/orm/internal/k;->C:[Ljava/lang/reflect/Field;

    aget-object v5, v10, p1

    .line 72
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 75
    sget-object v10, Lcom/alibaba/alimei/orm/internal/k$1;->$SwitchMap$com$alibaba$alimei$sqlite$SQLiteDataType:[I

    invoke-virtual {v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 116
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 120
    :goto_1
    if-eqz v8, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {v5, p3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 123
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "loadFromCursor error--->>>"

    invoke-static {v9, v4}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "value":Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v8    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 82
    .local v8, "value":Ljava/lang/Integer;
    goto :goto_1

    .line 84
    .end local v8    # "value":Ljava/lang/Integer;
    :pswitch_2
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 85
    .local v8, "value":Ljava/lang/Long;
    goto :goto_1

    .line 87
    .end local v8    # "value":Ljava/lang/Long;
    :pswitch_3
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 88
    .local v8, "value":Ljava/lang/Boolean;
    goto :goto_1

    .line 90
    .end local v8    # "value":Ljava/lang/Boolean;
    :pswitch_4
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 92
    .local v8, "value":Ljava/lang/Integer;
    :try_start_1
    move-object v0, v8

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    .line 93
    .local v2, "bvalue":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .local v8, "value":Ljava/lang/Byte;
    goto :goto_1

    .line 94
    .end local v2    # "bvalue":B
    .local v8, "value":Ljava/lang/Integer;
    :catch_1
    move-exception v7

    .line 95
    .local v7, "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v7    # "tr":Ljava/lang/Throwable;
    .end local v8    # "value":Ljava/lang/Integer;
    :pswitch_5
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 100
    .local v8, "value":Ljava/lang/Float;
    goto :goto_1

    .line 102
    .end local v8    # "value":Ljava/lang/Float;
    :pswitch_6
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 103
    .local v8, "value":Ljava/lang/Double;
    goto :goto_1

    .line 105
    .end local v8    # "value":Ljava/lang/Double;
    :pswitch_7
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 106
    .local v8, "value":[B
    goto :goto_1

    .line 108
    .end local v8    # "value":[B
    :pswitch_8
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 110
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    .local v8, "value":Ljava/lang/Character;
    goto/16 :goto_1

    .line 112
    .end local v8    # "value":Ljava/lang/Character;
    :cond_3
    const/4 v8, 0x0

    .line 114
    .local v8, "value":Ljava/lang/Object;
    goto/16 :goto_1

    .line 125
    .end local v6    # "temp":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_2
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v9, "loadFromCursor error--->>>"

    invoke-static {v9, v4}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "resultModel"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/k;->A:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/orm/internal/k;->a(ILandroid/database/Cursor;Ljava/lang/Object;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method
