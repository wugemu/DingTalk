.class public final Llew$ad;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ad"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Llew;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 8
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 576
    .line 1139
    iget-object v2, p2, Lleh;->d:Llej;

    check-cast v2, Lleh;

    .line 577
    .local v2, "p":Lleh;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lorg/jsoup/nodes/Document;

    if-eqz v4, :cond_1

    :cond_0
    move v4, v6

    .line 584
    :goto_0
    return v4

    .line 579
    :cond_1
    const/4 v3, 0x0

    .line 580
    .local v3, "pos":I
    invoke-virtual {v2}, Lleh;->h()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 581
    .local v0, "family":Lorg/jsoup/select/Elements;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 582
    invoke-virtual {v0, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lleh;

    .line 2087
    iget-object v4, v4, Lleh;->c:Lleq;

    .line 3087
    iget-object v7, p2, Lleh;->c:Lleq;

    .line 582
    invoke-virtual {v4, v7}, Lleq;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 581
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 584
    :cond_3
    if-ne v3, v5, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string/jumbo v0, ":only-of-type"

    return-object v0
.end method
