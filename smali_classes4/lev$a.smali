.class final Llev$a;
.super Llev;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Llew;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "evaluators":Ljava/util/Collection;, "Ljava/util/Collection<Llew;>;"
    invoke-direct {p0, p1}, Llev;-><init>(Ljava/util/Collection;)V

    .line 44
    return-void
.end method

.method varargs constructor <init>([Llew;)V
    .locals 1
    .param p1, "evaluators"    # [Llew;

    .prologue
    .line 47
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Llev$a;-><init>(Ljava/util/Collection;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 3
    .param p1, "root"    # Lleh;
    .param p2, "node"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Llev$a;->b:I

    if-ge v0, v2, :cond_1

    .line 53
    iget-object v2, p0, Llev$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llew;

    .line 54
    .local v1, "s":Llew;
    invoke-virtual {v1, p1, p2}, Llew;->a(Lleh;Lleh;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 57
    .end local v1    # "s":Llew;
    :goto_1
    return v2

    .line 52
    .restart local v1    # "s":Llew;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "s":Llew;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Llev$a;->a:Ljava/util/ArrayList;

    const-string/jumbo v1, " "

    invoke-static {v0, v1}, Llea;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
