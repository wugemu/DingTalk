.class final Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;
.super Ljava/lang/Object;
.source "FloatLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->c(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_3

    .line 107
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->c(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->d(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$1;->a:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
