.class final Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;
.super Ljava/lang/Object;
.source "SplashActivityContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/SplashActivityContext;->applicationRunMethodDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/SplashActivityContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 608
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v0

    sget-object v1, Lcod;->c:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcof;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->access$1400(Lcom/alibaba/android/rimet/biz/SplashActivityContext;Landroid/content/Context;)V

    .line 614
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 616
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    invoke-virtual {v0}, Lekg;->a()V

    .line 617
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v4, v2}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 620
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    .line 621
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 624
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    .line 625
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 624
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(J)V

    .line 627
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/SplashActivityContext$7;->a:Lcom/alibaba/android/rimet/biz/SplashActivityContext;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Intent;)V

    .line 629
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->j()V

    .line 630
    invoke-static {}, Leih;->a()V

    .line 635
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    .line 636
    invoke-static {}, Lekb;->a()Lekb;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext$a;

    invoke-direct {v2, v4}, Lcom/alibaba/android/rimet/biz/SplashActivityContext$a;-><init>(B)V

    .line 1040
    const-class v0, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;

    .line 1041
    if-eqz v0, :cond_2

    .line 1042
    new-instance v3, Lekb$1;

    invoke-direct {v3, v1, v2}, Lekb$1;-><init>(Lekb;Lcma;)V

    invoke-interface {v0, v3}, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;->getWhiteDomains(Liyv;)V

    .line 637
    :cond_2
    return-void

    .line 633
    :cond_3
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v0

    invoke-virtual {v0}, Lejv;->b()V

    goto :goto_0
.end method
