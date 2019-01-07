.class final Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 180
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->smoothScrollTo(II)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator$2;->b:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->a(Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 182
    return-void
.end method
