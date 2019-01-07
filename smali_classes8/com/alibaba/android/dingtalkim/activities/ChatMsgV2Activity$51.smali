.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 2365
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2366
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2367
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2368
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2370
    .local v0, "heightDifference":I
    const/16 v3, 0x12c

    if-le v0, v3, :cond_2

    .line 2371
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)V

    .line 2372
    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->b:I

    if-nez v3, :cond_1

    .line 2373
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 2374
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 2375
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2377
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2378
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->af(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 2381
    :cond_1
    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->b:I

    .line 2383
    :cond_2
    if-nez v0, :cond_5

    .line 2384
    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->b:I

    if-eqz v3, :cond_4

    .line 2385
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 2386
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    .line 2388
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I

    move-result v3

    if-nez v3, :cond_4

    .line 2389
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 2392
    :cond_4
    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;->b:I

    .line 2394
    :cond_5
    return-void
.end method
