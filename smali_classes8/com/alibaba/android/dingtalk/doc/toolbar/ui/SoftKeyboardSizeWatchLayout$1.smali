.class final Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;
.super Ljava/lang/Object;
.source "SoftKeyboardSizeWatchLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->h:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->h:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->h:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget v1, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->i:I

    if-nez v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->i:I

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget v2, v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->i:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;I)I

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 56
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I

    move-result v1

    if-lez v1, :cond_4

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->j:Z

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;->a(I)V

    .line 68
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;I)I

    goto :goto_0

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->j:Z

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;->a()V

    goto :goto_1
.end method
