.class public Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5BaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected replaceResources(Landroid/content/Context;)V
    .locals 8
    .param p1, "base"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const-string/jumbo v2, "H5BaseActivity"

    const-string/jumbo v3, "replaceResources"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "name":Ljava/lang/String;
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;

    .line 35
    .local v0, "h5ReplaceResourceProvider":Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;->getReplaceResourcesBundleName()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android-phone-wallet-nebulauc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "android-phone-wallet-nebula"

    aput-object v3, v2, v6

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android-phone-wallet-nebulabiz"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android-phone-wallet-nebulauc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "android-phone-wallet-nebula"

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    goto :goto_0
.end method
