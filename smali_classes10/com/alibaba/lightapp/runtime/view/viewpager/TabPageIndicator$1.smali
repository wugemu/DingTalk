.class final Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    move-object v2, p1

    check-cast v2, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;

    .line 87
    .local v2, "tabView":Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1425
    .local v1, "oldSelected":I
    iget v0, v2, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$b;->a:I

    .line 89
    .local v0, "newSelected":I
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v3, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;I)V

    .line 90
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 91
    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$1;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->b(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;)Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$a;

    .line 94
    :cond_0
    return-void
.end method
