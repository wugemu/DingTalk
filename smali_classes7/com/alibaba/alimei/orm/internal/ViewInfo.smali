.class public Lcom/alibaba/alimei/orm/internal/ViewInfo;
.super Ljava/lang/Object;
.source "ViewInfo.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/internal/i;


# instance fields
.field private final allColumnFieldArray:[Ljava/lang/reflect/Field;

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

.field private final mDatabaseName:Ljava/lang/String;

.field private final mViewName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/alibaba/alimei/orm/annotation/View;Ljava/lang/String;)V
    .locals 10
    .param p2, "annotation"    # Lcom/alibaba/alimei/orm/annotation/View;
    .param p3, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Lcom/alibaba/alimei/orm/annotation/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mDatabaseName:Ljava/lang/String;

    .line 35
    invoke-interface {p2}, Lcom/alibaba/alimei/orm/annotation/View;->name()Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mViewName:Ljava/lang/String;

    .line 41
    :goto_0
    invoke-static {p1}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getOrderDeclareViewColumnFields(Ljava/lang/Class;)[Landroid/util/Pair;

    move-result-object v3

    .line 42
    .local v3, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v3

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mColumnNames:Landroid/util/SparseArray;

    .line 43
    array-length v6, v3

    new-array v6, v6, [Ljava/lang/reflect/Field;

    iput-object v6, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->allColumnFieldArray:[Ljava/lang/reflect/Field;

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "i":I
    array-length v8, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v2, v3, v7

    .line 47
    .local v2, "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;

    .line 48
    .local v0, "columnAnnotation":Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
    if-eqz v0, :cond_3

    .line 51
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;->alias()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "columnName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 53
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;->name()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_2
    iget-object v9, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mColumnNames:Landroid/util/SparseArray;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v6

    invoke-virtual {v9, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object v9, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->allColumnFieldArray:[Ljava/lang/reflect/Field;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/reflect/Field;

    aput-object v6, v9, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 46
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 39
    .end local v0    # "columnAnnotation":Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
    .end local v2    # "field":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    .end local v3    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    .end local v4    # "i":I
    :cond_4
    iput-object v5, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mViewName:Ljava/lang/String;

    goto :goto_0

    .line 59
    .restart local v3    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    .restart local v4    # "i":I
    :cond_5
    return-void
.end method

.method public static newViewInfo(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/alimei/orm/internal/ViewInfo;
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/alimei/orm/internal/ViewInfo;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    const-class v1, Lcom/alibaba/alimei/orm/annotation/View;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/annotation/View;

    .line 27
    .local v0, "annotation":Lcom/alibaba/alimei/orm/annotation/View;
    if-nez v0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/alibaba/alimei/orm/internal/ViewInfo;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/alimei/orm/internal/ViewInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/alimei/orm/annotation/View;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mColumnNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->allColumnFieldArray:[Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getViewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/ViewInfo;->mViewName:Ljava/lang/String;

    return-object v0
.end method
