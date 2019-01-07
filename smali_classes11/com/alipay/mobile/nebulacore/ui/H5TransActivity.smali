.class public Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;
.super Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.source "H5TransActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity5;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity4;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity3;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity2;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TransActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;-><init>()V

    return-void
.end method

.method private initStatusBar()V
    .locals 5

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    :try_start_0
    const-string/jumbo v3, "transAnimate"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    .line 32
    .local v2, "showLoadProgress":Z
    if-eqz v2, :cond_0

    .line 34
    const/high16 v3, 0x33000000

    invoke-static {p0, v3}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    .end local v2    # "showLoadProgress":Z
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5TransActivity"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string/jumbo v0, "H5TransActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->initStatusBar()V

    .line 22
    return-void
.end method
