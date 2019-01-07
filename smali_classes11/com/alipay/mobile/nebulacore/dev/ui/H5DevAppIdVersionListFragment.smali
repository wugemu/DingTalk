.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;
.super Landroid/app/Fragment;
.source "H5DevAppIdVersionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_APPID:Ljava/lang/String; = "appid"


# instance fields
.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;-><init>()V

    .line 48
    .local v1, "fragment":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "appid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 59
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string/jumbo v5, "appid"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v3

    .line 61
    .local v3, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v3, :cond_0

    .line 63
    const-string/jumbo v5, "h5_use_preset_pkg_info"

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 65
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v1, :cond_0

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    .line 67
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v3    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v3    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllApp()Ljava/util/Map;

    move-result-object v4

    .line 71
    .local v4, "installedApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "get appInfo is null"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 75
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, -0x1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    new-instance v6, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v6, "listView":Landroid/widget/ListView;
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_appversion_item:I

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->mAppInfos:Ljava/util/List;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;Landroid/content/Context;ILjava/util/List;Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$1;)V

    .line 88
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    move-object v8, v6

    .line 97
    .end local v6    # "listView":Landroid/widget/ListView;
    .local v8, "targetView":Landroid/view/View;
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v7, "myContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-object v7

    .line 92
    .end local v7    # "myContainer":Landroid/widget/FrameLayout;
    .end local v8    # "targetView":Landroid/view/View;
    :cond_0
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v9, "tv":Landroid/widget/TextView;
    const-string/jumbo v0, "\u65e0\u6b64\u5b89\u88c5\u5305\u4fe1\u606f"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    move-object v8, v9

    .restart local v8    # "targetView":Landroid/view/View;
    goto :goto_0
.end method
