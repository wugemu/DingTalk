.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;
.super Ljava/lang/Object;
.source "H5DevAppIdVersionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;->newInstance(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;

    move-result-object v0

    .line 138
    .local v0, "fragment":Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppInfoFragment;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_dev_fragment:I

    .line 139
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "h5dev"

    .line 140
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 142
    return-void
.end method
