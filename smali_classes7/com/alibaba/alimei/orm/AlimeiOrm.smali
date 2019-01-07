.class public Lcom/alibaba/alimei/orm/AlimeiOrm;
.super Ljava/lang/Object;
.source "AlimeiOrm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 126
    .local v0, "databases":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delete error: database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 128
    const/4 v1, -0x1

    .line 130
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static dispose(Ljava/lang/String;)V
    .locals 0
    .param p0, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public static final execRawSQL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 76
    .local v0, "databases":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "execRawSQL error: database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final execRawSQL(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 91
    .local v0, "databases":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "execRawSQL error: database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;
    .locals 1
    .param p0, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->getInstance()Lcom/alibaba/alimei/orm/internal/DatabasePool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/alibaba/alimei/orm/Configuration;

    .prologue
    .line 51
    invoke-static {}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->getInstance()Lcom/alibaba/alimei/orm/internal/DatabasePool;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->initializeDatabase(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)Lcom/alibaba/alimei/orm/IDatabase;

    .line 52
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/orm/Configuration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/Configuration;

    .line 37
    .local v0, "configuration":Lcom/alibaba/alimei/orm/Configuration;
    invoke-static {}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->getInstance()Lcom/alibaba/alimei/orm/internal/DatabasePool;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/alibaba/alimei/orm/internal/DatabasePool;->initializeDatabase(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)Lcom/alibaba/alimei/orm/IDatabase;

    goto :goto_0

    .line 39
    .end local v0    # "configuration":Lcom/alibaba/alimei/orm/Configuration;
    :cond_0
    return-void
.end method

.method public static final loadFromCursor(Ljava/lang/Class;Landroid/database/Cursor;)Lcom/alibaba/alimei/orm/SelectableEntry;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->c(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v0

    .line 142
    .local v0, "tableInfo":Lcom/alibaba/alimei/orm/internal/TableInfo;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/alimei/orm/AlimeiOrm;->newSelectableEntry(Ljava/lang/Class;Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    return-object v1
.end method

.method public static final loadFromCursor(Ljava/lang/Class;Landroid/database/Cursor;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/internal/k;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    .local p2, "performanceCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->c(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v0

    .line 169
    .local v0, "tableInfo":Lcom/alibaba/alimei/orm/internal/TableInfo;
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/alimei/orm/AlimeiOrm;->newSelectableEntry(Ljava/lang/Class;Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    return-object v1
.end method

.method public static final loadViewEntryFromCursor(Ljava/lang/Class;Landroid/database/Cursor;)Lcom/alibaba/alimei/orm/SelectableEntry;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v0

    .line 154
    .local v0, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/alimei/orm/AlimeiOrm;->newSelectableEntry(Ljava/lang/Class;Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    return-object v1
.end method

.method public static final loadViewEntryFromCursor(Ljava/lang/Class;Landroid/database/Cursor;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/internal/k;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    .local p2, "performanceCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v0

    .line 183
    .local v0, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/alimei/orm/AlimeiOrm;->newSelectableEntry(Ljava/lang/Class;Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    return-object v1
.end method

.method private static final newSelectableEntry(Ljava/lang/Class;Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/util/ArrayList;)Lcom/alibaba/alimei/orm/SelectableEntry;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "selectableInfo"    # Lcom/alibaba/alimei/orm/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/SelectableEntry;",
            ">;",
            "Landroid/database/Cursor;",
            "Lcom/alibaba/alimei/orm/internal/i;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/internal/k;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/SelectableEntry;>;"
    .local p3, "performanceCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    const/4 v6, 0x0

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, "instance":Ljava/lang/Object;
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    .end local v1    # "instance":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_0

    .line 197
    const/4 v2, 0x0

    .line 210
    :goto_1
    return-object v2

    .line 192
    .restart local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 193
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "newSelectableEntry error --->>>"

    invoke-static {v4, v3}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v3    # "tr":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/orm/SelectableEntry;

    .line 201
    .local v2, "resultModel":Lcom/alibaba/alimei/orm/SelectableEntry;, "TT;"
    if-nez p3, :cond_1

    .line 202
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "performanceCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .restart local p3    # "performanceCaches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/orm/internal/k;>;"
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 205
    invoke-static {p1, p2, v2}, Lcom/alibaba/alimei/orm/internal/k;->a(Landroid/database/Cursor;Lcom/alibaba/alimei/orm/internal/i;Ljava/lang/Object;)Lcom/alibaba/alimei/orm/internal/k;

    move-result-object v0

    .line 206
    .local v0, "cache":Lcom/alibaba/alimei/orm/internal/k;
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v0    # "cache":Lcom/alibaba/alimei/orm/internal/k;
    :cond_2
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/orm/internal/k;

    invoke-virtual {v4, p1, v2}, Lcom/alibaba/alimei/orm/internal/k;->a(Landroid/database/Cursor;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final rawQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    .line 107
    .local v0, "databases":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rawQuery error: database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/orm/util/OrmLogger;->d(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 110
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public static final save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J
    .locals 16
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/alibaba/alimei/orm/TableEntry;

    .prologue
    .line 221
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/alimei/orm/internal/d;->c(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;

    move-result-object v9

    .line 222
    .local v9, "tableInfo":Lcom/alibaba/alimei/orm/internal/TableInfo;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v4

    .line 223
    .local v4, "db":Lcom/alibaba/alimei/orm/IDatabase;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v11, "values":Landroid/content/ContentValues;
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 226
    .local v8, "fields":[Ljava/lang/reflect/Field;
    array-length v13, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v6, v8, v12

    .line 227
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v6}, Lcom/alibaba/alimei/orm/internal/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "columnName":Ljava/lang/String;
    invoke-virtual {v9, v2}, Lcom/alibaba/alimei/orm/internal/TableInfo;->isAutoIncrementColumn(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 234
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 235
    .local v7, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 239
    .local v10, "value":Ljava/lang/Object;
    if-nez v10, :cond_1

    .line 226
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 243
    .restart local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v7}, Lcom/alibaba/alimei/orm/internal/j;->g(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    move-result-object v3

    .line 245
    .local v3, "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    sget-object v14, Lcom/alibaba/alimei/orm/AlimeiOrm$1;->$SwitchMap$com$alibaba$alimei$sqlite$SQLiteDataType:[I

    invoke-virtual {v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 247
    :pswitch_0
    check-cast v10, Ljava/lang/Boolean;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 280
    .end local v3    # "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    :catch_0
    move-exception v5

    .line 281
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v14, "save error--->>>"

    invoke-static {v14, v5}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 250
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 283
    .end local v3    # "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    :catch_1
    move-exception v5

    .line 284
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v14, "save error--->>>"

    invoke-static {v14, v5}, Lcom/alibaba/alimei/orm/util/OrmLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 253
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    .restart local v3    # "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_2
    :try_start_2
    check-cast v10, Ljava/lang/Byte;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_1

    .line 256
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast v10, Ljava/lang/Short;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 259
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast v10, Ljava/lang/Long;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 262
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast v10, Ljava/lang/Float;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 265
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast v10, Ljava/lang/Double;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 268
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast v10, [B

    .end local v10    # "value":Ljava/lang/Object;
    check-cast v10, [B

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 271
    .restart local v10    # "value":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :pswitch_9
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 288
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v12, v11}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    return-wide v12

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static setTraceLogger(Lcom/alibaba/alimei/orm/util/ITraceLogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/alibaba/alimei/orm/util/ITraceLogger;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/OrmLogger;->setTraceLogger(Lcom/alibaba/alimei/orm/util/ITraceLogger;)V

    .line 43
    return-void
.end method
