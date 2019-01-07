.class public final Lcom/alibaba/alimei/orm/internal/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/internal/i;


# instance fields
.field private final allColumnFieldArray:[Ljava/lang/reflect/Field;

.field private final mAutoIncrementCols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumnNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultTableName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mAutoIncrementCols:Ljava/util/ArrayList;

    .line 35
    const-class v7, Lcom/alibaba/alimei/orm/annotation/Table;

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/orm/annotation/Table;

    .line 36
    .local v6, "tableAnnotation":Lcom/alibaba/alimei/orm/annotation/Table;
    if-eqz v6, :cond_2

    .line 37
    invoke-interface {v6}, Lcom/alibaba/alimei/orm/annotation/Table;->name()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mDefaultTableName:Ljava/lang/String;

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getOrderDeclareColumnFields(Ljava/lang/Class;)[Landroid/util/Pair;

    move-result-object v4

    .line 45
    .local v4, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    new-instance v7, Landroid/util/SparseArray;

    array-length v8, v4

    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mColumnNames:Landroid/util/SparseArray;

    .line 46
    array-length v7, v4

    new-array v7, v7, [Ljava/lang/reflect/Field;

    iput-object v7, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->allColumnFieldArray:[Ljava/lang/reflect/Field;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    array-length v7, v4

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 50
    .local v0, "allColumnsNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 51
    .local v5, "i":I
    array-length v9, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v3, v4, v8

    .line 52
    .local v3, "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    .line 53
    .local v1, "columnAnnotation":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    invoke-interface {v1}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->name()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "columnName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 57
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->isAutoincrement()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    iget-object v7, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mAutoIncrementCols:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    new-instance v7, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " configurate the same name column ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "], please check it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 39
    .end local v0    # "allColumnsNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v1    # "columnAnnotation":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    .end local v4    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mDefaultTableName:Ljava/lang/String;

    goto :goto_0

    .line 65
    .restart local v0    # "allColumnsNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v1    # "columnAnnotation":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    .restart local v2    # "columnName":Ljava/lang/String;
    .restart local v3    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    .restart local v4    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    .restart local v5    # "i":I
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v10, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mColumnNames:Landroid/util/SparseArray;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v7

    invoke-virtual {v10, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object v10, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->allColumnFieldArray:[Ljava/lang/reflect/Field;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/reflect/Field;

    aput-object v7, v10, v5

    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 51
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 72
    .end local v1    # "columnAnnotation":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    :cond_4
    return-void
.end method

.method public static newTableInfo(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)",
            "Lcom/alibaba/alimei/orm/internal/TableInfo;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    new-instance v0, Lcom/alibaba/alimei/orm/internal/TableInfo;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/orm/internal/TableInfo;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mColumnNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mDefaultTableName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFields()[Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->allColumnFieldArray:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final isAutoIncrementColumn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/TableInfo;->mAutoIncrementCols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
