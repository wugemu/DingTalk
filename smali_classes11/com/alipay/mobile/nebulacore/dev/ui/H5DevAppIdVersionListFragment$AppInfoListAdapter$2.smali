.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;
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

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$installPath:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$installPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$downloadPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput p5, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->deleteAppFiles()V

    return-void
.end method

.method private deleteAppFiles()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$installPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$downloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$installPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$downloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "dialog":Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setTitle(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0b\u8f7d\u8def\u5f84: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$downloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\u89e3\u538b\u8def\u5f84: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;->val$installPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 182
    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_dev_delete_appinfo:I

    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 207
    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_dev_delete_file:I

    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevAppIdVersionListFragment$AppInfoListAdapter$2;Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 220
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setCanceledOnTouchOutside(Z)Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 221
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->show()V

    .line 222
    return-void
.end method
