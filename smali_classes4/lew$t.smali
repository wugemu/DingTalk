.class public final Llew$t;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Llew;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 4
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 595
    .line 1220
    iget-object v3, p2, Llej;->e:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 596
    .local v0, "family":Ljava/util/List;, "Ljava/util/List<Llej;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 597
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llej;

    .line 598
    .local v2, "n":Llej;
    instance-of v3, v2, Llee;

    if-nez v3, :cond_0

    instance-of v3, v2, Llel;

    if-nez v3, :cond_0

    instance-of v3, v2, Lleg;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 600
    .end local v2    # "n":Llej;
    :goto_1
    return v3

    .line 596
    .restart local v2    # "n":Llej;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v2    # "n":Llej;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    const-string/jumbo v0, ":empty"

    return-object v0
.end method
