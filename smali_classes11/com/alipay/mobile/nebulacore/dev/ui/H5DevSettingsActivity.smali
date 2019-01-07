.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;
.super Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.source "H5DevSettingsActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DevSettingsActivity"


# instance fields
.field private oldDebugSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->oldDebugSwitch:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_settings:I

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 31
    .local v2, "i":Landroid/content/Intent;
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;-><init>()V

    .line 32
    .local v1, "h5BugMeSettingsFragment":Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v3, "params":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 35
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "h5devType"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "h5devH5App"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 37
    .local v0, "h5AppDev":Z
    :goto_0
    const-string/jumbo v5, "h5_bug_me_debug_switch"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->oldDebugSwitch:Z

    .line 39
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$id;->fragment_content:I

    new-instance v6, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;-><init>()V

    .line 41
    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 43
    const-string/jumbo v4, "h5devType"

    const-string/jumbo v5, "h5devH5App"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$id;->fragment_preference:I

    .line 47
    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    :cond_0
    :goto_1
    return-void

    .end local v0    # "h5AppDev":Z
    :cond_1
    move v0, v4

    .line 35
    goto :goto_0

    .line 51
    .restart local v0    # "h5AppDev":Z
    :cond_2
    const-string/jumbo v4, "h5devType"

    const-string/jumbo v5, "h5devBugMe"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$id;->fragment_content:I

    .line 54
    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 55
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$id;->fragment_preference:I

    new-instance v6, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeExtFragment;-><init>()V

    .line 57
    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 64
    const-string/jumbo v2, "h5_bug_me_debug_switch"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    .local v0, "debugSwitch":Z
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingsActivity;->oldDebugSwitch:Z

    if-eq v0, v2, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 67
    .local v1, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->onBugMeSwitched(Z)V

    .line 73
    .end local v1    # "service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    const-string/jumbo v2, "h5_read_use_dev_db"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 75
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onDestroy()V

    .line 76
    return-void
.end method
