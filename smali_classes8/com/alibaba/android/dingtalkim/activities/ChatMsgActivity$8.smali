.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 6200
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 6206
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6207
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6208
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 6209
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 6210
    .local v3, "screenHeight":I
    const/4 v4, 0x0

    .line 6211
    .local v4, "stableInsetBottom":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 6212
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6213
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 6216
    :cond_0
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    sub-int v0, v5, v4

    .line 6219
    .local v0, "heightDifference":I
    const/16 v5, 0x12c

    if-le v0, v5, :cond_3

    .line 6220
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V

    .line 6221
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6222
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j()V

    .line 6225
    :cond_1
    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->b:I

    if-gtz v5, :cond_2

    .line 6226
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6227
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b(Z)V

    .line 6239
    :cond_2
    :goto_0
    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->b:I

    .line 6241
    :cond_3
    if-gtz v0, :cond_5

    .line 6242
    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->b:I

    if-lez v5, :cond_4

    .line 6243
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6244
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b(Z)V

    .line 6258
    :cond_4
    :goto_1
    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->b:I

    .line 6260
    :cond_5
    return-void

    .line 6229
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 6230
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 6231
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6233
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 6234
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto :goto_0

    .line 6246
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldle;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 6247
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldle;

    move-result-object v5

    invoke-virtual {v5}, Ldle;->b()V

    .line 6249
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v5

    if-ne v5, v7, :cond_a

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v5

    if-nez v5, :cond_a

    .line 6250
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 6252
    :cond_a
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v5

    if-nez v5, :cond_4

    .line 6253
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto :goto_1
.end method
