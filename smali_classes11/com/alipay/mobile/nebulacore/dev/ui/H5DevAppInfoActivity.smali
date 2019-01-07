.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;
.super Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.source "H5DevAppInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "appId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "appId":Ljava/lang/String;
    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_appinfo_activity:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;->setContentView(I)V

    .line 37
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_dev_start_app:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "startAppBtn":Landroid/view/View;
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_dev_fragment:I

    .line 63
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->newInstance(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    return-void
.end method
