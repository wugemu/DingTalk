.class final Lcqt$7;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;

.field private b:I


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 210
    iput-object p1, p0, Lcqt$7;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 216
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 1039
    iget-object v5, v5, Lcqt;->l:Landroid/view/View;

    .line 217
    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 2039
    iget-object v5, v5, Lcqt;->l:Landroid/view/View;

    .line 218
    invoke-virtual {v5, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 220
    :cond_0
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 3039
    iget-object v5, v5, Lcqt;->b:Landroid/content/Context;

    .line 220
    invoke-static {v5}, Lcms;->b(Landroid/content/Context;)I

    move-result v3

    .line 221
    .local v3, "screenHeight":I
    const/4 v4, 0x0

    .line 222
    .local v4, "stableInsetBottom":I
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 4039
    iget-object v5, v5, Lcqt;->l:Landroid/view/View;

    .line 222
    if-eqz v5, :cond_1

    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 5039
    iget-object v5, v5, Lcqt;->l:Landroid/view/View;

    .line 222
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 223
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 6039
    iget-object v5, v5, Lcqt;->l:Landroid/view/View;

    .line 223
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 224
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 225
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    .line 226
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 231
    .end local v2    # "rootView":Landroid/view/View;
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    sub-int v0, v5, v4

    .line 233
    .local v0, "heightDifference":I
    const/16 v5, 0x12c

    if-le v0, v5, :cond_4

    .line 234
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 7039
    invoke-virtual {v5, v0}, Lcqt;->a(I)V

    .line 235
    iget v5, p0, Lcqt$7;->b:I

    if-gtz v5, :cond_3

    .line 236
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 8039
    iget v5, v5, Lcqt;->a:I

    .line 236
    if-ne v5, v7, :cond_3

    .line 237
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 9039
    iget-object v5, v5, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 237
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 238
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 10039
    iget-object v5, v5, Lcqt;->b:Landroid/content/Context;

    .line 238
    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 239
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 11039
    iget-object v5, v5, Lcqt;->b:Landroid/content/Context;

    .line 239
    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 241
    :cond_2
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 12039
    iget-object v5, v5, Lcqt;->f:Lcqt$c;

    .line 241
    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 13039
    iget-object v5, v5, Lcqt;->f:Lcqt$c;

    .line 242
    invoke-interface {v5}, Lcqt$c;->b()V

    .line 246
    :cond_3
    iput v0, p0, Lcqt$7;->b:I

    .line 248
    :cond_4
    if-gtz v0, :cond_6

    .line 249
    iget v5, p0, Lcqt$7;->b:I

    if-lez v5, :cond_5

    .line 250
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 14039
    iget v5, v5, Lcqt;->a:I

    .line 250
    if-ne v5, v7, :cond_5

    .line 251
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    invoke-virtual {v5}, Lcqt;->b()V

    .line 252
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 15039
    iget-object v5, v5, Lcqt;->f:Lcqt$c;

    .line 252
    if-eqz v5, :cond_5

    .line 253
    iget-object v5, p0, Lcqt$7;->a:Lcqt;

    .line 16039
    iget-object v5, v5, Lcqt;->f:Lcqt$c;

    .line 253
    invoke-interface {v5}, Lcqt$c;->a()V

    .line 257
    :cond_5
    iput v0, p0, Lcqt$7;->b:I

    .line 259
    :cond_6
    return-void
.end method
