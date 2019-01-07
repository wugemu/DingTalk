.class public abstract Lcom/alibaba/bee/impl/table/BaseTableEntry;
.super Ljava/lang/Object;
.source "BaseTableEntry.java"

# interfaces
.implements Lcom/alibaba/bee/impl/table/TableEntry;


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
.end annotation


# static fields
.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        id = true
        name = "_id"
        sort = -0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindArgs(Lcom/alibaba/bee/SQLiteStatement;Z)V
    .locals 8
    .param p1, "statement"    # Lcom/alibaba/bee/SQLiteStatement;
    .param p2, "includeId"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v5

    .line 35
    .local v5, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    invoke-virtual {v5}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v1

    .line 36
    .local v1, "columnTypes":[Lcom/alibaba/bee/impl/table/ColumnType;
    array-length v4, v1

    .line 37
    .local v4, "len":I
    const/4 v3, 0x1

    .line 38
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 39
    aget-object v0, v1, v2

    .line 40
    .local v0, "column":Lcom/alibaba/bee/impl/table/ColumnType;
    iget-boolean v7, v0, Lcom/alibaba/bee/impl/table/ColumnType;->id:Z

    if-eqz v7, :cond_0

    if-eqz p2, :cond_1

    .line 41
    :cond_0
    invoke-virtual {v0, p0}, Lcom/alibaba/bee/impl/table/ColumnType;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_2

    iget-boolean v7, v0, Lcom/alibaba/bee/impl/table/ColumnType;->nullable:Z

    if-eqz v7, :cond_2

    .line 43
    invoke-interface {p1, v3}, Lcom/alibaba/bee/SQLiteStatement;->bindNull(I)V

    .line 47
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v7, v0, Lcom/alibaba/bee/impl/table/ColumnType;->fieldConverter:Lcom/alibaba/bee/impl/table/types/FieldConverter;

    invoke-interface {v7, p1, v3, v6}, Lcom/alibaba/bee/impl/table/types/FieldConverter;->bindArg(Lcom/alibaba/bee/SQLiteStatement;ILjava/lang/Object;)V

    goto :goto_1

    .line 49
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public static getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/bee/impl/table/TableEntry;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/bee/impl/table/TableEntry;>;"
    invoke-static {p0}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V
    .locals 1
    .param p1, "statement"    # Lcom/alibaba/bee/SQLiteStatement;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;Z)V

    .line 24
    return-void
.end method

.method public bindArgsWithId(Lcom/alibaba/bee/SQLiteStatement;)V
    .locals 1
    .param p1, "statement"    # Lcom/alibaba/bee/SQLiteStatement;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;Z)V

    .line 31
    return-void
.end method

.method public fillWithCursor(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/bee/DatabaseUtils;->getTableInfo(Ljava/lang/Class;)Lcom/alibaba/bee/impl/table/TableInfo;

    move-result-object v8

    .line 57
    .local v8, "tableInfo":Lcom/alibaba/bee/impl/table/TableInfo;, "Lcom/alibaba/bee/impl/table/TableInfo<*>;"
    invoke-virtual {v8}, Lcom/alibaba/bee/impl/table/TableInfo;->getColumnTypes()[Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v1

    .line 58
    .local v1, "columnTypes":[Lcom/alibaba/bee/impl/table/ColumnType;
    array-length v6, v1

    .line 59
    .local v6, "len":I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    if-ne v9, v6, :cond_1

    .line 60
    .local v3, "fullColumn":Z
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 61
    aget-object v0, v1, v4

    .line 62
    .local v0, "column":Lcom/alibaba/bee/impl/table/ColumnType;
    if-eqz v3, :cond_2

    move v5, v4

    .line 63
    .local v5, "index":I
    :goto_2
    if-ltz v5, :cond_0

    .line 65
    :try_start_0
    iget-object v9, v0, Lcom/alibaba/bee/impl/table/ColumnType;->field:Ljava/lang/reflect/Field;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    iget-object v9, v0, Lcom/alibaba/bee/impl/table/ColumnType;->fieldConverter:Lcom/alibaba/bee/impl/table/types/FieldConverter;

    invoke-interface {v9, p1, v5}, Lcom/alibaba/bee/impl/table/types/FieldConverter;->resultToJava(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 67
    .local v7, "result":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 68
    iget-object v9, v0, Lcom/alibaba/bee/impl/table/ColumnType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v7    # "result":Ljava/lang/Object;
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    .end local v3    # "fullColumn":Z
    .end local v4    # "i":I
    .end local v5    # "index":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 62
    .restart local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    .restart local v3    # "fullColumn":Z
    .restart local v4    # "i":I
    :cond_2
    iget-object v9, v0, Lcom/alibaba/bee/impl/table/ColumnType;->name:Ljava/lang/String;

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 70
    .restart local v5    # "index":I
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 74
    .end local v0    # "column":Lcom/alibaba/bee/impl/table/ColumnType;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "index":I
    :cond_3
    return-void
.end method
