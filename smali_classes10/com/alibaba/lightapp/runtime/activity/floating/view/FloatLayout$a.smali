.class final Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;
.super Ljava/util/TimerTask;
.source "FloatLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 230
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v0

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->b:I

    .line 231
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->b(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)I

    move-result v0

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->a:I

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->b:I

    .line 234
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v0, v0, 0xa

    neg-int v0, v0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->b:I

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->a:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->b:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 247
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 258
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->b:I

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->e(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->cancel()Z

    .line 260
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->f(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 262
    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->c:Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;->a(Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/floating/view/FloatLayout$a;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
