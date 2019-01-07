.class public Lcom/alibaba/alimei/orm/internal/ModelConvertor;
.super Ljava/lang/Object;
.source "ModelConvertor.java"


# static fields
.field private static final INDEX_SPERATOR:Ljava/lang/String; = "_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs getIndexName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 54
    :goto_0
    return-object v2

    .line 48
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    .line 51
    .local v0, "column":Ljava/lang/String;
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v0    # "column":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toSQLiteColumn(Lcom/alibaba/alimei/orm/annotation/Table$Column;Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .locals 2
    .param p0, "column"    # Lcom/alibaba/alimei/orm/annotation/Table$Column;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnType"    # Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .prologue
    .line 165
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)V

    .line 166
    .local v0, "sqliteColumn":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    invoke-interface {p0}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->nullable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setNullable(Z)V

    .line 167
    invoke-interface {p0}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->isAutoincrement()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setAutoIncrement(Z)V

    .line 168
    invoke-interface {p0}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setDefaultValue(Ljava/lang/Object;)V

    .line 169
    invoke-interface {p0}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->isPrimaryKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sqlite/SQLiteColumn;->setPrimaryKey(Z)V

    .line 171
    return-object v0
.end method

.method public static toSQLiteTable(Ljava/lang/String;Lcom/alibaba/alimei/orm/internal/TableInfo;)Landroid/util/Pair;
    .locals 30
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "tableInfo"    # Lcom/alibaba/alimei/orm/internal/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/orm/internal/TableInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteTable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sqlite/SQLiteIndex;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v25

    if-nez v25, :cond_1

    .line 66
    :cond_0
    const/16 v21, 0x0

    .line 154
    :goto_0
    return-object v21

    .line 70
    :cond_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v15, "indexGroupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v16, "indexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 76
    .local v11, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v11

    move/from16 v22, v0

    .line 77
    .local v22, "size":I
    new-instance v9, Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v9, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteColumn;>;"
    array-length v0, v11

    move/from16 v27, v0

    const/16 v25, 0x0

    move/from16 v26, v25

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    aget-object v10, v11, v26

    .line 79
    .local v10, "field":Ljava/lang/reflect/Field;
    const-class v25, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    .line 80
    .local v3, "annotationColumn":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    if-nez v3, :cond_2

    .line 81
    const/16 v21, 0x0

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    .line 85
    .local v24, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "columnName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/alibaba/alimei/orm/internal/j;->g(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    move-result-object v8

    .line 89
    .local v8, "columnType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    invoke-static {v3, v7, v8}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->toSQLiteColumn(Lcom/alibaba/alimei/orm/annotation/Table$Column;Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteDataType;)Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    move-result-object v6

    .line 90
    .local v6, "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    if-eqz v6, :cond_3

    .line 91
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->index()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 96
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->indexName()Ljava/lang/String;

    move-result-object v17

    .line 97
    .local v17, "indexName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 98
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    aput-object v7, v25, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/alibaba/alimei/orm/internal/ModelConvertor;->getIndexName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v17    # "indexName":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->indexGroups()[Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "groups":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v28, v0

    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    aget-object v12, v13, v25

    .line 107
    .local v12, "group":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 110
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 111
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v20, :cond_5

    .line 112
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    move-object/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 100
    .end local v12    # "group":Ljava/lang/String;
    .end local v13    # "groups":[Ljava/lang/String;
    .restart local v17    # "indexName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 78
    .end local v17    # "indexName":Ljava/lang/String;
    .restart local v13    # "groups":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto/16 :goto_1

    .line 119
    .end local v3    # "annotationColumn":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    .end local v6    # "column":Lcom/alibaba/alimei/sqlite/SQLiteColumn;
    .end local v7    # "columnName":Ljava/lang/String;
    .end local v8    # "columnType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "groups":[Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-gtz v25, :cond_a

    .line 120
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 123
    :cond_a
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v18, "indexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v25

    if-lez v25, :cond_c

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 127
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 128
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 129
    .restart local v17    # "indexName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "col":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 133
    new-instance v14, Lcom/alibaba/alimei/sqlite/SQLiteIndex;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    .local v14, "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 139
    .end local v4    # "col":Ljava/lang/String;
    .end local v14    # "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    .end local v17    # "indexName":Ljava/lang/String;
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v25

    if-lez v25, :cond_e

    .line 140
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 141
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 142
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 143
    .restart local v17    # "indexName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 144
    .local v5, "cols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_d

    .line 147
    new-instance v14, Lcom/alibaba/alimei/sqlite/SQLiteIndex;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteIndex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    .restart local v14    # "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 152
    .end local v5    # "cols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "index":Lcom/alibaba/alimei/sqlite/SQLiteIndex;
    .end local v17    # "indexName":Ljava/lang/String;
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    new-instance v23, Lcom/alibaba/alimei/sqlite/SQLiteTable;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Lcom/alibaba/alimei/sqlite/SQLiteColumn;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sqlite/SQLiteTable;-><init>(Ljava/lang/String;[Lcom/alibaba/alimei/sqlite/SQLiteColumn;)V

    .line 153
    .local v23, "table":Lcom/alibaba/alimei/sqlite/SQLiteTable;
    new-instance v21, Landroid/util/Pair;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .local v21, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/alibaba/alimei/sqlite/SQLiteTable;Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteIndex;>;>;"
    goto/16 :goto_0
.end method

.method public static toSQLiteTrigger(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TriggerEntry;",
            ">;)",
            "Lcom/alibaba/alimei/sqlite/SQLiteTrigger;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TriggerEntry;>;"
    const-class v14, Lcom/alibaba/alimei/orm/annotation/Trigger;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/orm/annotation/Trigger;

    .line 181
    .local v11, "triggerAnnotation":Lcom/alibaba/alimei/orm/annotation/Trigger;
    if-eqz v11, :cond_2

    .line 182
    invoke-interface {v11}, Lcom/alibaba/alimei/orm/annotation/Trigger;->name()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "triggerName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/alibaba/alimei/orm/annotation/Trigger;->triggerType()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;

    move-result-object v4

    .line 184
    .local v4, "triggerType":Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    invoke-interface {v11}, Lcom/alibaba/alimei/orm/annotation/Trigger;->triggerOperation()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;

    move-result-object v5

    .line 185
    .local v5, "triggerOperation":Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    invoke-interface {v11}, Lcom/alibaba/alimei/orm/annotation/Trigger;->onTableName()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "onTableName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/alibaba/alimei/orm/annotation/Trigger;->ofColumnName()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "ofColumnName":Ljava/lang/String;
    invoke-interface {v11}, Lcom/alibaba/alimei/orm/annotation/Trigger;->whenExpression()Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "whenExpression":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v7, "statements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getOrderDeclaredTriggerStatementFields(Ljava/lang/Class;)[Landroid/util/Pair;

    move-result-object v9

    .line 193
    .local v9, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    array-length v15, v9

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_1

    aget-object v8, v9, v14

    .line 194
    .local v8, "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;

    .line 195
    .local v12, "triggerStatement":Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
    invoke-interface {v12}, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;->statement()Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "statement":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 197
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 200
    .end local v8    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    .end local v10    # "statement":Ljava/lang/String;
    .end local v12    # "triggerStatement":Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 202
    .local v1, "trigger":Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
    invoke-virtual {v1, v13}, Lcom/alibaba/alimei/sqlite/SQLiteTrigger;->setWhenExpression(Ljava/lang/String;)V

    .line 205
    .end local v1    # "trigger":Lcom/alibaba/alimei/sqlite/SQLiteTrigger;
    .end local v2    # "triggerName":Ljava/lang/String;
    .end local v3    # "onTableName":Ljava/lang/String;
    .end local v4    # "triggerType":Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
    .end local v5    # "triggerOperation":Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
    .end local v6    # "ofColumnName":Ljava/lang/String;
    .end local v7    # "statements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    .end local v13    # "whenExpression":Ljava/lang/String;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static toSQLiteView(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteView;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;)",
            "Lcom/alibaba/alimei/sqlite/SQLiteView;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    const-class v18, Lcom/alibaba/alimei/orm/annotation/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/orm/annotation/View;

    .line 215
    .local v14, "viewAnnotation":Lcom/alibaba/alimei/orm/annotation/View;
    if-eqz v14, :cond_1

    .line 216
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->name()Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, "viewName":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->viewType()Ljava/lang/String;

    move-result-object v16

    .line 218
    .local v16, "viewType":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->isDistinct()Z

    move-result v10

    .line 219
    .local v10, "isDistinct":Z
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->from()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "fromSegment":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->where()Ljava/lang/String;

    move-result-object v17

    .line 221
    .local v17, "where":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->groupBy()Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "groupBy":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->having()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "having":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->orderBy()Ljava/lang/String;

    move-result-object v12

    .line 224
    .local v12, "orderBy":Ljava/lang/String;
    invoke-interface {v14}, Lcom/alibaba/alimei/orm/annotation/View;->limit()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "limit":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v4, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getOrderDeclareViewColumnFields(Ljava/lang/Class;)[Landroid/util/Pair;

    move-result-object v6

    .line 227
    .local v6, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    array-length v0, v6

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v5, v6, v18

    .line 228
    .local v5, "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;

    .line 229
    .local v2, "ca":Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
    new-instance v3, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;

    invoke-interface {v2}, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;->name()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, "column":Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;
    invoke-interface {v2}, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;->alias()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->setColumnAlias(Ljava/lang/String;)V

    .line 231
    invoke-interface {v2}, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;->tableName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;->setTableName(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "ca":Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
    .end local v3    # "column":Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;
    .end local v5    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    :cond_0
    new-instance v13, Lcom/alibaba/alimei/sqlite/SQLiteView;

    invoke-direct {v13, v15, v4, v7}, Lcom/alibaba/alimei/sqlite/SQLiteView;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 235
    .local v13, "sqliteView":Lcom/alibaba/alimei/sqlite/SQLiteView;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setViewType(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v13, v10}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setDistinct(Z)V

    .line 237
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setWhere(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v13, v8}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setGroupBy(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v13, v9}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setHaving(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v13, v12}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setOrderBy(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v13, v11}, Lcom/alibaba/alimei/sqlite/SQLiteView;->setLimit(Ljava/lang/String;)V

    .line 244
    .end local v4    # "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sqlite/SQLiteViewColumn;>;"
    .end local v6    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    .end local v7    # "fromSegment":Ljava/lang/String;
    .end local v8    # "groupBy":Ljava/lang/String;
    .end local v9    # "having":Ljava/lang/String;
    .end local v10    # "isDistinct":Z
    .end local v11    # "limit":Ljava/lang/String;
    .end local v12    # "orderBy":Ljava/lang/String;
    .end local v13    # "sqliteView":Lcom/alibaba/alimei/sqlite/SQLiteView;
    .end local v15    # "viewName":Ljava/lang/String;
    .end local v16    # "viewType":Ljava/lang/String;
    .end local v17    # "where":Ljava/lang/String;
    :goto_1
    return-object v13

    :cond_1
    const/4 v13, 0x0

    goto :goto_1
.end method
