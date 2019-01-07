.class final Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$2;
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
        "Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
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
            "Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "left":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    .local p2, "right":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/reflect/Field;Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;>;"
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, -0x80000000

    .line 94
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;

    .line 95
    .local v1, "leftSatement":Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;

    .line 98
    .local v3, "rightStatement":Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
    invoke-interface {v1}, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;->statementOrder()I

    move-result v0

    .line 99
    .local v0, "leftOrder":I
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;->statementOrder()I

    move-result v2

    .line 100
    .local v2, "rightOrder":I
    if-eq v0, v6, :cond_3

    if-eq v2, v6, :cond_3

    .line 101
    if-le v0, v2, :cond_0

    .line 113
    :goto_0
    return v4

    .line 103
    :cond_0
    if-ge v0, v2, :cond_1

    move v4, v5

    .line 104
    goto :goto_0

    .line 106
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

    .line 113
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

    .line 108
    :cond_3
    if-eq v0, v6, :cond_4

    move v4, v5

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    if-eq v2, v6, :cond_2

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/orm/util/OrmReflectionUtils$2;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
