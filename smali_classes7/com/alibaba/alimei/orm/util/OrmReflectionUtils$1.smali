.class final Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$1;
.super Ljava/lang/Object;
.source "OrmReflectionUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/orm/util/OrmReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/reflect/Field;",
        "Lcom/alibaba/alimei/orm/annotation/Table$Column;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Table$Column;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Table$Column;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "left":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    .local p2, "right":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Table$Column;>;"
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    .line 24
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    .line 25
    .local v0, "leftColumn":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/alimei/orm/annotation/Table$Column;

    .line 28
    .local v2, "rightColumn":Lcom/alibaba/alimei/orm/annotation/Table$Column;
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->columnOrder()I

    move-result v1

    .line 29
    .local v1, "leftOrder":I
    invoke-interface {v2}, Lcom/alibaba/alimei/orm/annotation/Table$Column;->columnOrder()I

    move-result v3

    .line 30
    .local v3, "rightOrder":I
    if-eq v1, v6, :cond_3

    if-eq v3, v6, :cond_3

    .line 31
    if-le v1, v3, :cond_0

    .line 43
    :goto_0
    return v4

    .line 33
    :cond_0
    if-ge v1, v3, :cond_1

    move v4, v5

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 43
    :cond_2
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 38
    :cond_3
    if-eq v1, v6, :cond_4

    move v4, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_4
    if-eq v3, v6, :cond_2

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$1;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
