.class final Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;
.super Lbyi$a;
.source "LargeLiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Lcom/alibaba/wukong/Callback;

.field final synthetic j:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->j:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->b:I

    iput p4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->c:I

    iput p5, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->d:I

    iput p6, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->e:I

    iput p7, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->f:I

    iput-object p8, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->g:Ljava/lang/String;

    iput p9, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->h:I

    iput-object p10, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->i:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 292
    .line 1295
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->j:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->j:Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->a:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->b:I

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->c:I

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->d:I

    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->f:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->g:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->h:I

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity$2;->i:Lcom/alibaba/wukong/Callback;

    .line 1306
    iget-object v9, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v9, :cond_1

    .line 1307
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 1308
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v5}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1309
    if-eqz v8, :cond_0

    .line 1310
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->h:Z

    .line 1316
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 1317
    const-string/jumbo v0, "url null"

    const-string/jumbo v1, ""

    invoke-interface {v8, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1321
    :cond_3
    invoke-static {v4}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 1322
    if-lez v3, :cond_4

    if-le v3, v0, :cond_5

    .line 1323
    :cond_4
    const/4 v0, -0x1

    move v3, v0

    .line 1325
    :cond_5
    if-gtz v1, :cond_6

    .line 1326
    invoke-static {v4}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    move v1, v0

    .line 1329
    :cond_6
    new-instance v0, Ljos;

    const-string/jumbo v9, "dingtalk_lv"

    const-string/jumbo v10, ""

    invoke-direct {v0, v9, v10}, Ljos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string/jumbo v9, "dingtalk_largeLive"

    iput-object v9, v0, Ljos;->q:Ljava/lang/String;

    .line 1331
    const/4 v9, 0x1

    if-ne v6, v9, :cond_a

    .line 1332
    const/4 v9, 0x2

    iput v9, v0, Ljos;->b:I

    .line 1336
    :goto_2
    const/4 v9, 0x2

    iput v9, v0, Ljos;->c:I

    .line 1337
    const/4 v9, 0x1

    iput v9, v0, Ljos;->a:I

    .line 1338
    packed-switch v7, :pswitch_data_0

    .line 1348
    const/4 v7, 0x0

    iput v7, v0, Ljos;->d:I

    .line 1353
    :goto_3
    new-instance v7, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v7, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 1354
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v7, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 1355
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setLogAdapter(Ljju;)V

    .line 1356
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v5}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1359
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1360
    const-string/jumbo v0, "https:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "https:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1363
    :cond_7
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    .line 1364
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1366
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1367
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1368
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-interface {v0, v7, v2, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1369
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v5}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2279
    :cond_8
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_9

    .line 2282
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 2283
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$b;)V

    .line 2284
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$a;)V

    .line 2285
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 1374
    :cond_9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->d:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1375
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a:Landroid/view/ViewGroup;

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v2, 0x0

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2396
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2397
    sget v1, Lbtp$f;->layout_button_play:I

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2399
    sget v0, Lbtp$e;->largelive_play_button:I

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2400
    sget v0, Lbtp$e;->largelive_progress:I

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->f:Landroid/widget/ProgressBar;

    .line 2401
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2403
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 1379
    new-instance v0, Ljon;

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v0, v4, v1}, Ljon;-><init>(Landroid/content/Context;Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    .line 1380
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    invoke-virtual {v0}, Ljon;->b()V

    .line 1381
    const/4 v0, 0x1

    if-ne v6, v0, :cond_b

    .line 1382
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->a(Landroid/view/View;)V

    .line 1383
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljon;->a(I)V

    .line 1387
    :goto_4
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    .line 3158
    iput-object v4, v0, Ljon;->a:Ljon$b;

    .line 1388
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    invoke-virtual {v0}, Ljon;->d()V

    .line 1390
    if-eqz v8, :cond_0

    .line 1391
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1334
    :cond_a
    const/4 v9, 0x0

    iput v9, v0, Ljos;->b:I

    goto/16 :goto_2

    .line 1340
    :pswitch_0
    const/4 v7, 0x1

    iput v7, v0, Ljos;->d:I

    goto/16 :goto_3

    .line 1343
    :pswitch_1
    const/4 v7, 0x3

    iput v7, v0, Ljos;->d:I

    goto/16 :goto_3

    .line 1385
    :cond_b
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/live/ui/largelive/LargeLiveActivity;->c:Ljon;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljon;->a(I)V

    goto :goto_4

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
