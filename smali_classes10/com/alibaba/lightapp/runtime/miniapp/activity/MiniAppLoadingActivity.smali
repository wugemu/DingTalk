.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MiniAppLoadingActivity.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

.field private b:Ljava/util/Timer;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/animation/ObjectAnimator;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    .line 210
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 215
    :cond_0
    return-void

    .line 209
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 222
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->h:J

    .line 69
    new-instance v13, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    const/4 v14, 0x1

    iput v14, v13, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 1056
    sput-object p0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 2026
    sput-object p0, Lhok;->d:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 74
    .local v6, "intent":Landroid/content/Intent;
    if-nez v6, :cond_1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->finish()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 78
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v13, "appName"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "appName":Ljava/lang/String;
    const-string/jumbo v13, "appIcon"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "appIcon":Ljava/lang/String;
    const-string/jumbo v13, "appId"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "appId":Ljava/lang/String;
    const-string/jumbo v13, "loading_timeout"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v7

    .line 82
    .local v7, "loadingTimeout":I
    const-string/jumbo v13, "loading_type"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "loadingType":Ljava/lang/String;
    const-string/jumbo v13, "MiniAppLoadingActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "appName "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " logo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " mTimeout:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " mType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :try_start_0
    sget v13, Lhdn$i;->activity_miniapp_loading:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->setContentView(I)V

    .line 87
    sget v13, Lhdn$h;->iv_ding_logo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->c:Landroid/widget/ImageView;

    .line 88
    sget v13, Lhdn$h;->iv_four_ball:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    .line 89
    sget v13, Lhdn$h;->loading_net_error:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->d:Landroid/widget/ImageView;

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    sget v14, Lhdn$g;->four_ball:I

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    sget v13, Lhdn$h;->tv_tips:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->e:Landroid/widget/TextView;

    .line 92
    invoke-static/range {p0 .. p0}, Lhms;->a(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v9

    .line 93
    .local v9, "navBar":Lcom/alipay/mobile/nebula/view/H5TitleView;
    invoke-interface {v9, v4}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitle(Ljava/lang/String;)V

    .line 94
    sget v13, Lhdn$h;->nav_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 95
    .local v12, "vg":Landroid/view/ViewGroup;
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/view/H5TitleView;->getContentView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setRotation(F)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->f:Landroid/widget/ImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->c:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->c:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleY(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 110
    new-instance v13, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)V

    invoke-static {v2, v13}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 122
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b()V

    .line 123
    if-lez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    if-nez v13, :cond_3

    .line 125
    :try_start_1
    new-instance v13, Ljava/util/Timer;

    invoke-direct {v13}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    new-instance v14, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v3, v7}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    mul-int/lit16 v15, v7, 0x3e8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_3
    :goto_1
    const-string/jumbo v13, "miniapp_show_loading_tips_new"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2138
    const-string/jumbo v13, "MiniAppLoadingActivity"

    invoke-static {v13}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v13

    new-instance v14, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;)V

    invoke-interface {v13, v14}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 103
    .end local v9    # "navBar":Lcom/alipay/mobile/nebula/view/H5TitleView;
    .end local v12    # "vg":Landroid/view/ViewGroup;
    :catch_0
    move-exception v11

    .line 104
    .local v11, "var11":Ljava/lang/Throwable;
    const-string/jumbo v13, "MiniAppLoadingActivity"

    invoke-static {v13, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->finish()V

    goto/16 :goto_0

    .line 127
    .end local v11    # "var11":Ljava/lang/Throwable;
    .restart local v9    # "navBar":Lcom/alipay/mobile/nebula/view/H5TitleView;
    .restart local v12    # "vg":Landroid/view/ViewGroup;
    :catch_1
    move-exception v10

    .line 128
    .local v10, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v13, "MiniAppLoadingActivity"

    invoke-static {v13, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 3056
    sput-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 4042
    sput-object v0, Lhok;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 5034
    sput-object v0, Lhok;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 6026
    sput-object v0, Lhok;->d:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;

    .line 255
    return-void
.end method

.method public onGetType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    const-string/jumbo v1, "MiniAppLoadingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onGetType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mTimeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    if-eqz v1, :cond_0

    if-lez p2, :cond_0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 262
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    .line 263
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b:Ljava/util/Timer;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MiniAppLoadingActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->g:Landroid/animation/ObjectAnimator;

    .line 2180
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2181
    if-eqz v0, :cond_1

    .line 2184
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2185
    if-eqz v0, :cond_1

    .line 2189
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->h:J

    sub-long/2addr v2, v4

    .line 2192
    invoke-static {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitLoadingActivityTime(Ljava/lang/String;J)V

    .line 2194
    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 2196
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2197
    const-string/jumbo v4, "appId"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    const-string/jumbo v0, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    const-string/jumbo v0, "longLoading"

    invoke-static {v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    :cond_1
    :goto_0
    return-void

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->b()V

    .line 167
    :cond_0
    return-void
.end method
