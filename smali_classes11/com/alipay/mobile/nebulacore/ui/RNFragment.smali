.class public Lcom/alipay/mobile/nebulacore/ui/RNFragment;
.super Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
.source "RNFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;-><init>()V

    return-void
.end method

.method public static resetToH5FragmentBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const-string/jumbo v2, "bizType"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "bizType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "rn_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_0
    const-string/jumbo v2, "bizType"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v2, "url"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v2, "bundle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    const-string/jumbo v2, "rnpages"

    const-string/jumbo v3, "pages"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string/jumbo v2, "bundle"

    const-string/jumbo v3, "html"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_1
    const-string/jumbo v2, "url"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v2

    .line 35
    .local v2, "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    if-nez v2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 37
    .local v3, "startParams":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->resetToH5FragmentBundle(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    .end local v3    # "startParams":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "h5View":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 43
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->getChildFragmentManager()Lcn;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/h5container/service/RnService;->addRnView(Liop;Lcn;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RNFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onCreateView exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onDestroyView()V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getRnService()Lcom/alipay/mobile/h5container/service/RnService;

    move-result-object v1

    .line 57
    .local v1, "rnService":Lcom/alipay/mobile/h5container/service/RnService;
    if-eqz v1, :cond_0

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->rootViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/RNFragment;->getChildFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/h5container/service/RnService;->removeRnView(Liop;Lcn;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RNFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDestroyView exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
