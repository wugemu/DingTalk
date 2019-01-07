.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;
.super Ljava/lang/Object;
.source "SplashActivityContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const v8, 0x7f050028

    const/4 v7, 0x0

    .line 495
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$400(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$1200(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "preferenceKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v3, :cond_2

    .line 506
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v5, v5, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v5, v5, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 528
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v8, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 529
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 507
    :cond_2
    invoke-static {}, Lcms;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 508
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->j()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    .line 509
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v7}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 510
    invoke-static {v3, v4}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$1300(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 513
    :cond_3
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getTempToken()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "token":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getKickOutMsg()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 516
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v4, v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v7}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    .line 521
    :goto_2
    const-string/jumbo v3, "user_lg"

    const-string/jumbo v4, "SplashActivityContext"

    const-string/jumbo v5, "start app activity"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sput v7, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    goto :goto_1

    .line 519
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v0}, Leme;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 524
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v3, v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5$1;->b:Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;

    iget-object v5, v5, Lcom/alibaba/android/rimet/biz/SplashActivityContext$5;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v5, v5, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/alibaba/android/rimet/biz/SlideActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 525
    sput v7, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    goto/16 :goto_1
.end method
