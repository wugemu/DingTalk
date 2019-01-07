.class final Lcqm$4;
.super Ljava/lang/Object;
.source "SJLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcqm;->a(Ljava/util/ArrayList;)V
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
        "Lcqh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 668
    check-cast p1, Lcqh;

    check-cast p2, Lcqh;

    .line 1670
    iget v2, p1, Lcqh;->b:I

    iget v3, p2, Lcqh;->b:I

    if-ge v2, v3, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return v0

    .line 1674
    :cond_1
    iget v2, p1, Lcqh;->b:I

    iget v3, p2, Lcqh;->b:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 1675
    goto :goto_0

    .line 1678
    :cond_2
    iget v2, p1, Lcqh;->c:I

    iget v3, p2, Lcqh;->c:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 1679
    goto :goto_0

    .line 1682
    :cond_3
    iget v1, p1, Lcqh;->c:I

    iget v2, p2, Lcqh;->c:I

    if-gt v1, v2, :cond_0

    .line 1686
    const/4 v0, 0x0

    .line 668
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method
