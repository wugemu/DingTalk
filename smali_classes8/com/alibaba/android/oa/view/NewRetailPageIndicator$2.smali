.class final Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;
.super Ljava/lang/Object;
.source "NewRetailPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/NewRetailPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->b:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    iput-object p2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 92
    iget-object v1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->b:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-virtual {v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 93
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->b:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->smoothScrollTo(II)V

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;->b:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 95
    return-void
.end method
