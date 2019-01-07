.class final Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$g;
.super Ljava/lang/Object;
.source "PhotoViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2933
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 3936
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 3937
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;

    .line 3938
    iget-boolean v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    iget-boolean v3, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    if-eq v2, v3, :cond_1

    .line 3939
    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 3941
    :cond_1
    iget v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->e:I

    iget v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$LayoutParams;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
