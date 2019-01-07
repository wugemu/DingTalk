.class public Llew$ab;
.super Llew$n;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Llew$n;-><init>(II)V

    .line 488
    return-void
.end method


# virtual methods
.method protected final a(Lleh;)I
    .locals 5
    .param p1, "element"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 491
    const/4 v2, 0x0

    .line 1139
    .local v2, "pos":I
    iget-object v3, p1, Lleh;->d:Llej;

    check-cast v3, Lleh;

    .line 492
    invoke-virtual {v3}, Lleh;->h()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 493
    .local v0, "family":Lorg/jsoup/select/Elements;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 494
    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lleh;

    .line 2087
    iget-object v3, v3, Lleh;->c:Lleq;

    .line 3087
    iget-object v4, p1, Lleh;->c:Lleq;

    .line 494
    invoke-virtual {v3, v4}, Lleq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 495
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    :cond_1
    return v2
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    const-string/jumbo v0, "nth-of-type"

    return-object v0
.end method
