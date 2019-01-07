.class public final Llew$ae;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ae"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Llew;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 3
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 552
    instance-of v1, p1, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_0

    .line 1172
    invoke-virtual {p1}, Lleh;->h()Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleh;

    move-object v0, v1

    .line 553
    .local v0, "r":Lleh;
    :goto_0
    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .end local v0    # "r":Lleh;
    :cond_0
    move-object v0, p1

    .line 552
    goto :goto_0

    .restart local v0    # "r":Lleh;
    :cond_1
    move v1, v2

    .line 553
    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    const-string/jumbo v0, ":root"

    return-object v0
.end method
