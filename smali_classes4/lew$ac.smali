.class public final Llew$ac;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Llew;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 5
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 564
    .line 1139
    iget-object v0, p2, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 565
    .local v0, "p":Lleh;
    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    if-nez v1, :cond_3

    .line 1492
    iget-object v1, p2, Lleh;->d:Llej;

    if-nez v1, :cond_0

    .line 1493
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-direct {v1, v3}, Lorg/jsoup/select/Elements;-><init>(I)V

    .line 565
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2139
    :cond_0
    iget-object v1, p2, Lleh;->d:Llej;

    check-cast v1, Lleh;

    .line 1495
    invoke-virtual {v1}, Lleh;->h()Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 1496
    new-instance v2, Lorg/jsoup/select/Elements;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v4}, Lorg/jsoup/select/Elements;-><init>(I)V

    .line 1497
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleh;

    .line 1498
    if-eq v1, p2, :cond_1

    .line 1499
    invoke-virtual {v2, v1}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 1500
    goto :goto_0

    :cond_3
    move v1, v3

    .line 565
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    const-string/jumbo v0, ":only-child"

    return-object v0
.end method
