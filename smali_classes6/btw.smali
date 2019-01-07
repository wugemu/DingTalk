.class public final Lbtw;
.super Lbtu;
.source "ViewerFloatWindowController.java"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Z

.field private c:Llgf;

.field private g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lbxc;

.field private j:Lbwf;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lbtu;-><init>()V

    .line 57
    new-instance v0, Lbtw$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbtw$1;-><init>(Lbtw;Landroid/os/Looper;)V

    iput-object v0, p0, Lbtw;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbtw;)V
    .locals 4
    .param p0, "x0"    # Lbtw;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    .line 3311
    iget-object v0, p0, Lbtw;->k:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3312
    iget-object v0, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getTvStatus()Landroid/widget/TextView;

    move-result-object v0

    .line 3313
    sget v1, Lbtp$g;->dt_lv_live_ended:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3314
    sget v1, Lbtp$d;->live_live_over_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3316
    iget-object v0, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getIvStatus()Landroid/widget/ImageView;

    move-result-object v0

    .line 3317
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3319
    iput-boolean v3, p0, Lbtw;->b:Z

    .line 3320
    iget-object v0, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setKeepScreenOn(Z)V

    .line 3321
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbws;->b(Z)V

    .line 44
    return-void
.end method

.method static synthetic a(Lbtw;Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V
    .locals 2
    .param p0, "x0"    # Lbtw;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    .prologue
    .line 44
    .line 4246
    if-eqz p1, :cond_0

    .line 4249
    iget-boolean v0, p0, Lbtw;->b:Z

    if-nez v0, :cond_0

    .line 4253
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    .line 4254
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 4255
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->parseLiveSystemMessageType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4256
    const-string/jumbo v1, "liveVideoStreamBreak"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4267
    iget-object v0, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getTvStatus()Landroid/widget/TextView;

    move-result-object v0

    .line 4268
    sget v1, Lbtp$g;->dt_lv_live_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4269
    sget v1, Lbtp$d;->live_live_over_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4271
    iget-object v0, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getIvStatus()Landroid/widget/ImageView;

    move-result-object v0

    .line 4272
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4274
    iget-object v0, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setKeepScreenOn(Z)V

    .line 4275
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->d()V

    .line 4258
    :cond_0
    :goto_0
    return-void

    .line 4259
    :cond_1
    const-string/jumbo v1, "liveVideoStreamRestore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4261
    invoke-direct {p0}, Lbtw;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 279
    iget-object v3, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getTvStatus()Landroid/widget/TextView;

    move-result-object v2

    .line 280
    .local v2, "tvStatus":Landroid/widget/TextView;
    sget v3, Lbtp$g;->dt_lv_live_status_living:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 281
    sget v3, Lbtp$d;->live_living_corner_background:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 283
    iget-object v3, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getIvStatus()Landroid/widget/ImageView;

    move-result-object v0

    .line 285
    .local v0, "ivStatus":Landroid/widget/ImageView;
    :try_start_0
    new-instance v3, Llgf;

    iget-object v4, p0, Lbtw;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbtp$d;->live_status:I

    invoke-direct {v3, v4, v5}, Llgf;-><init>(Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lbtw;->c:Llgf;

    .line 286
    iget-object v3, p0, Lbtw;->c:Llgf;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v3, p0, Lbtw;->c:Llgf;

    invoke-virtual {v3}, Llgf;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getTvClose()Landroid/widget/TextView;

    move-result-object v1

    .line 293
    .local v1, "tvClose":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    new-instance v3, Lbtw$5;

    invoke-direct {v3, p0}, Lbtw$5;-><init>(Lbtw;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v3, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setKeepScreenOn(Z)V

    .line 307
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->c()V

    .line 308
    return-void

    .end local v1    # "tvClose":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lbyg;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 97
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 98
    .local v3, "width":I
    const/4 v0, 0x0

    .line 99
    .local v0, "height":I
    iget-object v4, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getVideoWidth()I

    move-result v3

    .line 101
    iget-object v4, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getVideoHeight()I

    move-result v0

    .line 104
    :cond_0
    iget-object v4, p0, Lbtw;->f:Landroid/content/Context;

    invoke-static {v4}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lbtw;->f:Landroid/content/Context;

    .line 105
    invoke-static {v5}, Lcms;->a(Landroid/content/Context;)I

    move-result v5

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 106
    .local v2, "screenWidth":I
    if-lez v3, :cond_2

    if-lez v0, :cond_2

    .line 107
    if-ge v3, v0, :cond_1

    .line 108
    mul-int/lit8 v4, v2, 0x2

    div-int/lit8 v4, v4, 0x5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/2addr v4, v3

    div-int/2addr v4, v0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 118
    :goto_0
    return-object v1

    .line 111
    :cond_1
    mul-int/lit8 v4, v2, 0x2

    div-int/lit8 v4, v4, 0x5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/2addr v4, v0

    div-int/2addr v4, v3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 115
    :cond_2
    div-int/lit8 v4, v2, 0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 116
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 133
    sget-object v0, Lbtw$6;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 137
    :pswitch_0
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->e()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 3
    .param p1, "videoView"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    iput-object p1, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 69
    iget-object v1, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 70
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lbtw;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lbtw;->g:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 123
    iget-object v2, p0, Lbtw;->k:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const-wide v2, 0x409f400000000000L    # 2000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v0, v2

    .line 127
    .local v0, "delayMillis":J
    iget-object v2, p0, Lbtw;->k:Landroid/os/Handler;

    invoke-virtual {v2, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    .end local v0    # "delayMillis":J
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lbtu;->b()V

    .line 84
    invoke-direct {p0}, Lbtw;->d()V

    .line 85
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lbtu;->c()V

    .line 1325
    iget-object v0, p0, Lbtw;->c:Llgf;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lbtw;->c:Llgf;

    invoke-virtual {v0}, Llgf;->stop()V

    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Lbtw;->c:Llgf;

    .line 92
    :cond_0
    return-void
.end method

.method protected final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 144
    invoke-super {p0}, Lbtu;->h()V

    .line 2159
    iget-object v0, p0, Lbtw;->j:Lbwf;

    if-nez v0, :cond_0

    .line 2162
    new-instance v0, Lbtw$2;

    invoke-direct {v0, p0}, Lbtw$2;-><init>(Lbtw;)V

    iput-object v0, p0, Lbtw;->j:Lbwf;

    .line 2185
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v1, p0, Lbtw;->j:Lbwf;

    invoke-virtual {v0, v1}, Lbwg;->a(Lbwf;)V

    .line 2196
    :cond_0
    iget-object v0, p0, Lbtw;->h:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 2199
    new-instance v0, Lbtw$3;

    invoke-direct {v0, p0}, Lbtw$3;-><init>(Lbtw;)V

    iput-object v0, p0, Lbtw;->h:Landroid/content/BroadcastReceiver;

    .line 2205
    iget-object v0, p0, Lbtw;->f:Landroid/content/Context;

    iget-object v1, p0, Lbtw;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.user.logout"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2219
    :cond_1
    iget-object v0, p0, Lbtw;->i:Lbxc;

    if-nez v0, :cond_2

    .line 2222
    new-instance v0, Lbtw$4;

    invoke-direct {v0, p0}, Lbtw$4;-><init>(Lbtw;)V

    iput-object v0, p0, Lbtw;->i:Lbxc;

    .line 2235
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    iget-object v1, p0, Lbtw;->i:Lbxc;

    invoke-virtual {v0, v1}, Lbws;->a(Lbwz;)V

    .line 148
    :cond_2
    return-void
.end method

.method protected final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-super {p0}, Lbtu;->i()V

    .line 3189
    iget-object v0, p0, Lbtw;->j:Lbwf;

    if-eqz v0, :cond_0

    .line 3190
    invoke-static {}, Lbwg;->a()Lbwg;

    move-result-object v0

    iget-object v1, p0, Lbtw;->j:Lbwf;

    invoke-virtual {v0, v1}, Lbwg;->b(Lbwf;)V

    .line 3191
    iput-object v2, p0, Lbtw;->j:Lbwf;

    .line 3209
    :cond_0
    iget-object v0, p0, Lbtw;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3211
    :try_start_0
    iget-object v0, p0, Lbtw;->f:Landroid/content/Context;

    iget-object v1, p0, Lbtw;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3214
    :goto_0
    iput-object v2, p0, Lbtw;->h:Landroid/content/BroadcastReceiver;

    .line 3239
    :cond_1
    iget-object v0, p0, Lbtw;->i:Lbxc;

    if-eqz v0, :cond_2

    .line 3240
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    iget-object v1, p0, Lbtw;->i:Lbxc;

    invoke-virtual {v0, v1}, Lbws;->b(Lbwz;)V

    .line 3241
    iput-object v2, p0, Lbtw;->i:Lbxc;

    .line 156
    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
