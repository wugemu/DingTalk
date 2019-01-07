.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;
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
    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;->val$dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

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
    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->access$200(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;)V

    .line 211
    const-string/jumbo v0, "\u5220\u9664\u4e0b\u8f7d&\u89e3\u538b\u8def\u5f84\u6210\u529f"

    .line 212
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "!!!from dev DB  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;->val$dialog:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->dismiss()V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method
