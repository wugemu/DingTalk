.class final Ldle$3;
.super Ljava/lang/Object;
.source "FastSendEmotionManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldle;


# direct methods
.method constructor <init>(Ldle;)V
    .locals 0
    .param p1, "this$0"    # Ldle;

    .prologue
    .line 343
    iput-object p1, p0, Ldle$3;->a:Ldle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x2

    const/4 v8, 0x0

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 348
    :pswitch_0
    iget-object v0, p0, Ldle$3;->a:Ldle;

    .line 1035
    invoke-virtual {v0}, Ldle;->a()V

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 352
    iget-object v3, p0, Ldle$3;->a:Ldle;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2262
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2265
    iget-object v1, v3, Ldle;->i:Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;

    .line 3052
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3053
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3054
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3056
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->notifyDataSetChanged()V

    .line 2266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    move v1, v2

    .line 2271
    :cond_2
    iget-object v4, v3, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$d;->im_fast_send_padding_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 2272
    iget-object v5, v3, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$d;->im_fast_send_padding_right:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 2273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_5

    .line 2275
    int-to-double v0, v1

    add-double/2addr v0, v10

    iget-object v6, v3, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$d;->chat_fast_send_emotion_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v0, v6

    add-double/2addr v0, v10

    double-to-int v0, v0

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 2281
    :goto_1
    iget-object v1, v3, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2282
    if-nez v1, :cond_6

    .line 2283
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2287
    :goto_2
    iget-object v1, v3, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2288
    new-array v0, v2, [I

    .line 2289
    iget-object v1, v3, Ldle;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2291
    aget v0, v0, v8

    iget-object v1, v3, Ldle;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 2293
    iget-object v0, v3, Ldle;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_7

    .line 2294
    iget-object v0, v3, Ldle;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2295
    iget-object v0, v3, Ldle;->k:Landroid/view/View;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2296
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2295
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    .line 2298
    :cond_3
    iget-object v0, v3, Ldle;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2302
    :goto_3
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 2303
    if-lez v1, :cond_4

    .line 2304
    iget-object v0, v3, Ldle;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2305
    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    .line 2306
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2307
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2308
    iget-object v1, v3, Ldle;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2311
    :cond_4
    iget-object v0, v3, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->b(I)V

    .line 2312
    iget-object v0, v3, Ldle;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2313
    iget-object v0, v3, Ldle;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2278
    :cond_5
    iget-object v0, v3, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lctk$d;->chat_fast_send_emotion_width:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v1, v3, Ldle;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 2279
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lctk$d;->chat_fast_send_emotion_first_padding:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    goto/16 :goto_1

    .line 2285
    :cond_6
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, v1

    goto/16 :goto_2

    .line 2300
    :cond_7
    iget-object v0, v3, Ldle;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_3

    .line 356
    :pswitch_2
    iget-object v0, p0, Ldle$3;->a:Ldle;

    invoke-virtual {v0}, Ldle;->b()V

    goto/16 :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
