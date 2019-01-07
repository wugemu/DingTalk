.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "H5DevAppIdVersionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;>;"
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    .line 112
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 113
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;Landroid/content/Context;ILjava/util/List;Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$1;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    if-nez p2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_dev_appversion_item:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;

    .line 123
    .local v7, "holder":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;
    if-nez v7, :cond_1

    .line 124
    new-instance v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;

    .end local v7    # "holder":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;
    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$1;)V

    .line 125
    .restart local v7    # "holder":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;
    sget v0, Lcom/alipay/mobile/nebula/R$id;->app_version_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->container:Landroid/view/View;

    .line 126
    sget v0, Lcom/alipay/mobile/nebula/R$id;->version:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->version:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/alipay/mobile/nebula/R$id;->install_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->installStatus:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/alipay/mobile/nebula/R$id;->delete_app:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->deleteBtn:Landroid/widget/Button;

    .line 129
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 133
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->version:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->container:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;

    invoke-direct {v1, p0, v4}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 146
    .local v6, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v6, :cond_2

    .line 147
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v1, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 148
    .local v9, "isInstalled":Z
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v1, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "installPath":Ljava/lang/String;
    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v1, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "downloadPath":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 152
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->installStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    iget-object v10, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->deleteBtn:Landroid/widget/Button;

    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;I)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .end local v2    # "installPath":Ljava/lang/String;
    .end local v3    # "downloadPath":Ljava/lang/String;
    .end local v9    # "isInstalled":Z
    :cond_2
    return-object p2

    .line 154
    .restart local v2    # "installPath":Ljava/lang/String;
    .restart local v3    # "downloadPath":Ljava/lang/String;
    .restart local v9    # "isInstalled":Z
    :cond_3
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v8

    .line 155
    .local v8, "isDownloaded":Z
    if-eqz v8, :cond_4

    .line 156
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->installStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u4e0b\u8f7d\uff0c\u672a\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$ViewHolder;->installStatus:Landroid/widget/TextView;

    const-string/jumbo v1, "\u672a\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
