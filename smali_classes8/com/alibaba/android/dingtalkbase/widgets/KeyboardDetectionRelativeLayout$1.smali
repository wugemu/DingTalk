.class final Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;
.super Ljava/lang/Object;
.source "KeyboardDetectionRelativeLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;

    .line 93
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->c(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v6

    invoke-static {v5, v6}, Lcoq;->b(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 96
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 98
    .local v3, "screenHeight":I
    const/4 v4, 0x0

    .line 99
    .local v4, "stableInsetBottom":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 100
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 104
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    sub-int v0, v5, v4

    .line 105
    .local v0, "heightDifference":I
    const/16 v5, 0x12c

    if-le v0, v5, :cond_3

    .line 106
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;I)V

    .line 107
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->b:I

    if-nez v5, :cond_3

    .line 109
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 110
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    .line 112
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;I)I

    .line 116
    :cond_3
    if-nez v0, :cond_5

    .line 117
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->b:I

    if-eqz v5, :cond_5

    .line 118
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 119
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    .line 122
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;I)I

    .line 125
    :cond_5
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->b:I

    .line 126
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->c(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v6

    invoke-static {v5, v6}, Lcoq;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 127
    return-void
.end method
