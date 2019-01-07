.class public final Lcom/alibaba/dingtalk/share/share/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lgwk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/share/share/ShareManager$a;,
        Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;,
        Lcom/alibaba/dingtalk/share/share/ShareManager$b;,
        Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;
    }
.end annotation


# instance fields
.field a:Lcom/uc/webview/export/WebView;

.field public b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/share/share/ShareManager$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lgwk$a;

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;",
            "Lgvu;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/content/Context;

.field private m:Landroid/os/Bundle;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/uc/webview/export/WebView;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/uc/webview/export/WebView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    .line 68
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 69
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->m:Landroid/os/Bundle;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->c:Ljava/util/Map;

    .line 73
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 74
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->n:Z

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->f:Z

    .line 77
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->g:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->k:Ljava/util/Map;

    .line 113
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    .line 121
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/share/share/ShareConstants;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareConstants;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 125
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    if-nez p0, :cond_0

    .line 469
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object p0

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lgvn$d;->dialog_share_link_default_icon:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)Lcma;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)",
            "Lcma",
            "<",
            "Lgwo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$3;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager;Ljava/util/List;)V

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 757
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/util/List;)V

    .line 759
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->show()V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b()V

    .line 764
    const-string/jumbo v0, "open_share_menu_view"

    .line 4015
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "DingtalkShare"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 766
    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/alibaba/dingtalk/share/share/ShareManager$b;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 131
    .local v0, "info":Lcom/alibaba/dingtalk/share/share/ShareManager$b;
    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .end local v0    # "info":Lcom/alibaba/dingtalk/share/share/ShareManager$b;
    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager;)V

    .line 133
    .restart local v0    # "info":Lcom/alibaba/dingtalk/share/share/ShareManager$b;
    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setLinkUrl(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    return-object v0
.end method

.method private e()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 680
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->m:Landroid/os/Bundle;

    const-string/jumbo v1, "favorite_enter_hide"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const-string/jumbo v0, "true"

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->m:Landroid/os/Bundle;

    const-string/jumbo v2, "favorite_enter_hide"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 813
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "picUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    const-string/jumbo v2, "REQUEST"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/Request;

    .line 817
    .local v1, "request":Lcom/alibaba/doraemon/request/Request;
    const-string/jumbo v2, "User-Agent"

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 818
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 819
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 821
    const-string/jumbo v2, "ShareManager"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 822
    new-instance v2, Lcom/alibaba/dingtalk/share/share/ShareManager$5;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-direct {v2, p0, v3, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$5;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager;Lcom/alibaba/dingtalk/share/share/ShareManager$b;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 852
    invoke-interface {v1}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 854
    .end local v1    # "request":Lcom/alibaba/doraemon/request/Request;
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;
    .locals 4
    .param p1, "component"    # Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 305
    const/4 v1, 0x0

    .line 418
    :cond_0
    :goto_0
    return-object v1

    .line 309
    :cond_1
    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->StickPage:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    if-ne p1, v2, :cond_2

    .line 310
    new-instance v1, Lcom/alibaba/dingtalk/share/share/StickPageUnit;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/StickPageUnit;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgvu;

    .line 315
    .local v1, "unit":Lgvu;
    if-nez v1, :cond_4

    .line 317
    sget-object v2, Lcom/alibaba/dingtalk/share/share/ShareManager$6;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 400
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 401
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->k:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 319
    :pswitch_0
    new-instance v1, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/DingDingFriendShareUnit;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 323
    :pswitch_1
    new-instance v1, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/ConnectionCircleUnit;-><init>(Landroid/content/Context;)V

    .line 324
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 327
    :pswitch_2
    new-instance v1, Lcom/alibaba/dingtalk/share/WorkCircleUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/WorkCircleUnit;-><init>(Landroid/content/Context;)V

    .line 328
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 331
    :pswitch_3
    new-instance v1, Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;-><init>(Landroid/content/Context;)V

    .line 332
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 335
    :pswitch_4
    new-instance v1, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/WeixinFriendShareUnit;-><init>(Landroid/content/Context;)V

    .line 336
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 339
    :pswitch_5
    new-instance v1, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/WeixinGroupShareUnit;-><init>(Landroid/content/Context;)V

    .line 340
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 343
    :pswitch_6
    new-instance v1, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/QQFriendShareUnit;-><init>(Landroid/content/Context;)V

    .line 344
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 347
    :pswitch_7
    new-instance v1, Lgvy;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lgvy;-><init>(Landroid/content/Context;I)V

    .line 348
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 351
    :pswitch_8
    new-instance v1, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;-><init>(Landroid/content/Context;)V

    .line 352
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 355
    :pswitch_9
    new-instance v1, Lcom/alibaba/dingtalk/share/share/OpenInBrowserUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/OpenInBrowserUnit;-><init>(Landroid/content/Context;)V

    .line 356
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 359
    :pswitch_a
    new-instance v1, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;-><init>(Landroid/content/Context;)V

    .line 360
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 363
    :pswitch_b
    new-instance v1, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/CopyLinkUnit;-><init>(Landroid/content/Context;)V

    .line 364
    .restart local v1    # "unit":Lgvu;
    goto :goto_1

    .line 368
    :pswitch_c
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-eqz v2, :cond_3

    .line 369
    new-instance v1, Lgvx;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    invoke-direct {v1, v2, v3}, Lgvx;-><init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V

    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 374
    :pswitch_d
    new-instance v1, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;-><init>(Landroid/content/Context;)V

    .line 375
    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 378
    :pswitch_e
    new-instance v1, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;-><init>(Landroid/content/Context;)V

    .line 379
    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 381
    :pswitch_f
    new-instance v1, Lgvv;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->m:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lgvv;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 382
    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 384
    :pswitch_10
    new-instance v1, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/SmsShareUnit;-><init>(Landroid/content/Context;)V

    .line 385
    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 390
    :pswitch_11
    new-instance v1, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/WhatsAppFriendShareUnit;-><init>(Landroid/content/Context;)V

    .line 391
    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 393
    :pswitch_12
    new-instance v1, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/SystemShareUnit;-><init>(Landroid/content/Context;)V

    .line 394
    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 396
    :pswitch_13
    new-instance v1, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;

    .end local v1    # "unit":Lgvu;
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/share/share/FaceBookShareUnit;-><init>(Landroid/content/Context;)V

    .restart local v1    # "unit":Lgvu;
    goto/16 :goto_1

    .line 406
    :cond_4
    instance-of v2, v1, Lcom/alibaba/dingtalk/share/share/OpenInUCwebUnit;

    if-eqz v2, :cond_0

    .line 407
    sget v0, Lgvn$d;->ic_share_webview_open_in_ucweb:I

    .line 408
    .local v0, "icon":I
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-static {v2}, Lgwe;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 409
    sget v0, Lgvn$d;->ic_share_webview_open_in_ucweb_activity:I

    .line 412
    :cond_5
    invoke-virtual {v1}, Lgvu;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {v1}, Lgvu;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    goto/16 :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 432
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/share/share/ShareManager$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$2;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->e(Ljava/lang/String;)Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1479
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    .line 1480
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1481
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1484
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->showSticky(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    instance-of v0, v0, Lgvj;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1573
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    if-eqz v0, :cond_0

    .line 1575
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->StickPage:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    :cond_0
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Favorite:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Browser:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CopyLink:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Fresh:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v0

    .line 1582
    if-eqz v0, :cond_1

    .line 1583
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1488
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 1489
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1490
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b(Ljava/util/List;)Lcma;

    move-result-object v5

    const-class v6, Lcma;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v5, v6, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1489
    invoke-virtual {v4, v2, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->parseUrl(Ljava/lang/String;Lcma;)V

    .line 1499
    :goto_1
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/util/List;)V

    .line 149
    :cond_2
    return-void

    .line 1484
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1492
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b(Ljava/util/List;)Lcma;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->parseUrl(Ljava/lang/String;Lcma;)V

    goto :goto_1

    .line 1497
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 153
    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->m:Landroid/os/Bundle;

    .line 154
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "image"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->e(Ljava/lang/String;)Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setLinkUrl(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0, p2}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setPictureUrl(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0, p3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setTitle(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0, p4}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setContent(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    const/4 v1, 0x0

    .line 1951
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b:Z

    .line 190
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 769
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    if-nez v1, :cond_1

    .line 773
    new-instance v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 4154
    iput-object v2, v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    .line 773
    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 780
    :goto_1
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->n:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 781
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->e:Ljava/lang/String;

    .line 5561
    iput-object v2, v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    .line 782
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->n:Z

    .line 788
    :goto_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    new-instance v2, Lcom/alibaba/dingtalk/share/share/ShareManager$4;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/share/share/ShareManager$4;-><init>(Lcom/alibaba/dingtalk/share/share/ShareManager;)V

    .line 6566
    iput-object v2, v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;

    goto :goto_0

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 4191
    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Ljava/util/List;)V

    .line 4192
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a()V

    .line 776
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 5159
    iput-object v2, v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    goto :goto_1

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 6552
    iput-object v0, v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b()V

    .line 569
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setPictureUrl(Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 595
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 2919
    iget-object v0, v3, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 596
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->f()V

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    const/4 v4, 0x1

    .line 2951
    iput-boolean v4, v3, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b:Z

    .line 602
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->f:Z

    if-eqz v3, :cond_2

    .line 603
    :cond_1
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->DingTalk:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->h:Z

    if-eqz v3, :cond_4

    .line 607
    :cond_3
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Circle:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_4
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 611
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Favorite:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_5
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WhatsAppFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinGroup:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->showSticky(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    instance-of v3, v3, Lgvj;

    if-eqz v3, :cond_6

    .line 627
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->StickPage:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_6
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-static {v3}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v3

    .line 3051
    iget-object v3, v3, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 630
    invoke-interface {v3}, Lcom/alipay/share/sdk/openapi/IAPApi;->isZFBSupportAPI()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 631
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Alipay:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_7
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->g:Z

    if-eqz v3, :cond_9

    .line 642
    :cond_8
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SmsShare:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_9
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    if-eqz v3, :cond_a

    .line 645
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->QQFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_a
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 651
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    if-eqz v3, :cond_b

    .line 652
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Weibo:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_b
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Browser:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-static {v3}, Lgwe;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 659
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->UCweb:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_c
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CopyLink:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Fresh:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v2

    .line 665
    .local v2, "freshUnit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    if-eqz v2, :cond_d

    .line 666
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_d
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 669
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->AndroidSystem:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_e
    return-object v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "customShareTitle"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->n:Z

    .line 297
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->e:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 694
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    if-eqz v3, :cond_b

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 700
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 3919
    iget-object v0, v3, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->a:Landroid/graphics/Bitmap;

    .line 701
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->f()V

    .line 705
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    const/4 v4, 0x1

    .line 3951
    iput-boolean v4, v3, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b:Z

    .line 707
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->f:Z

    if-eqz v3, :cond_2

    .line 708
    :cond_1
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->DingTalk:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 711
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Favorite:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_3
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WhatsAppFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->WeixinGroup:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->a:Lcom/uc/webview/export/WebView;

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->g:Z

    if-eqz v3, :cond_5

    .line 722
    :cond_4
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->SmsShare:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_5
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    if-eqz v3, :cond_6

    .line 725
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->QQFriend:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 731
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->i:Z

    if-eqz v3, :cond_7

    .line 732
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Weibo:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_7
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Browser:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    invoke-static {v3}, Lgwe;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 739
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->UCweb:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_8
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->CopyLink:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->Fresh:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v2

    .line 745
    .local v2, "freshUnit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    if-eqz v2, :cond_9

    .line 746
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_9
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 749
    sget-object v3, Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;->AndroidSystem:Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Lcom/alibaba/dingtalk/share/share/ShareManager$SharingComponents;)Lgvu;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_a
    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c(Ljava/util/List;)V

    .line 754
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    .end local v2    # "freshUnit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    :cond_b
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .line 2092
    iput-object p1, v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->h:Ljava/lang/String;

    .line 425
    :cond_0
    return-void
.end method
