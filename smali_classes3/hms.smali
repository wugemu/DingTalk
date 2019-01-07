.class public final Lhms;
.super Ljava/lang/Object;
.source "MiniAppToolbarManager.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sput-object v0, Lhms;->a:Ljava/util/List;

    const-string/jumbo v1, "2018031902409216"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lhms;->a:Ljava/util/List;

    const-string/jumbo v1, "2018092561515364"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    const-string/jumbo v0, ""

    .line 44
    .local v0, "ddMode":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 45
    .local v1, "ddNavbarMode":Ljava/lang/String;
    if-eqz p0, :cond_0

    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 46
    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 47
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 48
    const-string/jumbo v4, "ddMode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string/jumbo v4, "ddNavbarMode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v4, "present"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    invoke-static {p0}, Lhms;->b(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    .line 59
    :cond_1
    :goto_0
    const-string/jumbo v4, "noRight"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    invoke-static {p0}, Lhms;->b(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    move-object v4, v2

    .line 61
    check-cast v4, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .line 1381
    iget-object v7, v4, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_2

    .line 1382
    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    move-object v4, v2

    .line 62
    check-cast v4, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .line 1387
    iput-boolean v5, v4, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->b:Z

    .line 65
    :cond_3
    if-nez v2, :cond_4

    .line 2110
    if-eqz p0, :cond_6

    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_6

    move-object v4, p0

    .line 2111
    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2112
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2113
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v7, "appId"

    invoke-static {v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2114
    sget-object v7, Lhms;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    .line 2074
    :goto_1
    if-eqz v4, :cond_7

    .line 2075
    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .end local v2    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v2    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    :cond_4
    :goto_2
    return-object v2

    .line 55
    :cond_5
    const-string/jumbo v4, "push"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .end local v2    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;-><init>(Landroid/content/Context;)V

    .restart local v2    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    goto :goto_0

    :cond_6
    move v4, v6

    .line 2120
    goto :goto_1

    .line 2078
    :cond_7
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v4, "hybrid_new_anim_full_active"

    invoke-static {v4, v5}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 2081
    const-string/jumbo v5, "e_app_launch_animation_mode"

    invoke-static {v5, v6}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_9

    .line 2083
    :cond_8
    invoke-static {p0}, Lhms;->b(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    goto :goto_2

    .line 2085
    :cond_9
    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .end local v2    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    :try_start_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    .local v2, "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    move-object v1, v2

    .line 100
    .end local v2    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    .restart local v1    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const-string/jumbo v3, "MiniAppToolbarManager"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "createToolBar exception: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3071
    const-string/jumbo v5, "mini_app"

    invoke-static {v5, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
