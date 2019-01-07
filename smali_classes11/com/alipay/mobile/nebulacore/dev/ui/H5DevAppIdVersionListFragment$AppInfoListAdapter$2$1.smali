.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;
.super Ljava/lang/Object;
.source "H5DevAppIdVersionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

.field final synthetic val$dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->val$dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 186
    .local v0, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v0, :cond_1

    .line 187
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->access$200(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;)V

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "delete appInfo success"

    .line 191
    .local v1, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v3, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "form dev DB  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->access$300(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget v3, v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->val$dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->dismiss()V

    .line 199
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->notifyDataSetChanged()V

    .line 202
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->access$300(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 205
    :cond_2
    return-void
.end method
