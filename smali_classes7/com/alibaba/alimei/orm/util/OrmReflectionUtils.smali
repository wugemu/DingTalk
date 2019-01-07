.class public final Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;
.super Ljava/lang/Object;
.source "OrmReflectionUtils.java"


# static fields
.field private static final sFieldComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Table$Column;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTriggerStatementComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sViewFieldComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->sFieldComparator:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$2;

    invoke-direct {v0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$2;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->sTriggerStatementComparator:Ljava/util/Comparator;

    .line 197
    new-instance v0, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$3;

    invoke-direct {v0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$3;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->sViewFieldComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeclareViewColumnFields(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "declaredColumnFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;>;"
    const-class v5, Lcom/alibaba/alimei/orm/ViewEntry;

    invoke-static {p0, v5}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/alibaba/alimei/orm/ViewEntry;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 163
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 164
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 165
    new-instance v3, Landroid/util/Pair;

    const-class v7, Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 174
    .local v4, "parentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_3

    .line 175
    invoke-static {v4}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getDeclareViewColumnFields(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "parentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v0
.end method

.method private static getDeclaredColumnFields(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Table$Column;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "declaredColumnFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;>;"
    const-class v5, Lcom/alibaba/alimei/orm/TableEntry;

    invoke-static {p0, v5}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/alibaba/alimei/orm/TableEntry;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 71
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 72
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    new-instance v3, Landroid/util/Pair;

    const-class v7, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 82
    .local v4, "parentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_3

    .line 83
    invoke-static {v4}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getDeclaredColumnFields(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "parentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v0
.end method

.method private static getDeclaredTriggerStatementFields(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "declaredColumnFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;>;"
    const-class v5, Lcom/alibaba/alimei/orm/TriggerEntry;

    invoke-static {p0, v5}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/alibaba/alimei/orm/TriggerEntry;

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 134
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 135
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v7, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    new-instance v3, Landroid/util/Pair;

    const-class v7, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 145
    .local v4, "parentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_3

    .line 146
    invoke-static {v4}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getDeclaredTriggerStatementFields(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "parentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v0
.end method

.method public static getOrderDeclareColumnFields(Ljava/lang/Class;)[Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Table$Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getDeclaredColumnFields(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;>;"
    const-class v2, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    move-object v0, v2

    check-cast v0, [Landroid/util/Pair;

    .line 56
    .local v0, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    check-cast v0, [Landroid/util/Pair;

    .line 57
    .restart local v0    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    sget-object v2, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->sFieldComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 58
    return-object v0
.end method

.method public static getOrderDeclareViewColumnFields(Ljava/lang/Class;)[Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getDeclareViewColumnFields(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 190
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;>;"
    const-class v2, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    move-object v0, v2

    check-cast v0, [Landroid/util/Pair;

    .line 191
    .local v0, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    check-cast v0, [Landroid/util/Pair;

    .line 192
    .restart local v0    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;>;"
    sget-object v2, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->sViewFieldComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 193
    return-object v0
.end method

.method public static getOrderDeclaredTriggerStatementFields(Ljava/lang/Class;)[Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->getDeclaredTriggerStatementFields(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;>;"
    const-class v2, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Pair;

    move-object v0, v2

    check-cast v0, [Landroid/util/Pair;

    .line 120
    .local v0, "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    check-cast v0, [Landroid/util/Pair;

    .line 121
    .restart local v0    # "fields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    sget-object v2, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;->sTriggerStatementComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 122
    return-object v0
.end method

.method public static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 231
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    array-length v4, v1

    if-gtz v4, :cond_2

    :cond_0
    move v2, v3

    .line 248
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return v2

    .line 234
    .restart local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    array-length v5, v1

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v0, v1, v4

    .line 235
    .local v0, "iclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 241
    .end local v0    # "iclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 242
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 245
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_4
    move v2, v3

    .line 248
    goto :goto_1
.end method
