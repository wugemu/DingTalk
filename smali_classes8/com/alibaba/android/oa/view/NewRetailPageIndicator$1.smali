.class final Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;
.super Ljava/lang/Object;
.source "NewRetailPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/NewRetailPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;->a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    move-object v2, p1

    check-cast v2, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;

    .line 48
    .local v2, "tabView":Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;
    iget-object v3, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;->a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v3}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)I

    move-result v1

    .line 1221
    .local v1, "oldSelected":I
    iget v0, v2, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a:I

    .line 50
    .local v0, "newSelected":I
    iget-object v3, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;->a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setCurrentItem(I)V

    .line 51
    iget-object v3, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;->a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v3, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;I)I

    .line 52
    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;->a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v3}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;->a:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v3}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;->a(I)V

    .line 55
    :cond_0
    return-void
.end method
