.class final Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;
.super Ljava/lang/Object;
.source "ViewfinderHuoyanView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/ViewfinderHuoyanView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/ma/ui/ViewfinderHuoyanView;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ViewfinderHuoyanView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/ViewfinderHuoyanView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;->b:Lcom/taobao/ma/ui/ViewfinderHuoyanView;

    iput-object p2, p0, Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v1, p0, Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;->b:Lcom/taobao/ma/ui/ViewfinderHuoyanView;

    invoke-static {v1}, Lcom/taobao/ma/ui/ViewfinderHuoyanView;->a(Lcom/taobao/ma/ui/ViewfinderHuoyanView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;->b:Lcom/taobao/ma/ui/ViewfinderHuoyanView;

    invoke-static {v2}, Lcom/taobao/ma/ui/ViewfinderHuoyanView;->a(Lcom/taobao/ma/ui/ViewfinderHuoyanView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 37
    iget-object v1, p0, Lcom/taobao/ma/ui/ViewfinderHuoyanView$1;->b:Lcom/taobao/ma/ui/ViewfinderHuoyanView;

    invoke-static {v1}, Lcom/taobao/ma/ui/ViewfinderHuoyanView;->a(Lcom/taobao/ma/ui/ViewfinderHuoyanView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    :cond_0
    return-void
.end method
