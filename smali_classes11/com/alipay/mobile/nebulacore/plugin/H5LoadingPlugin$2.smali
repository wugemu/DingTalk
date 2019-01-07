.class Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;
.super Ljava/lang/Object;
.source "H5LoadingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->showLoadingView(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

.field final synthetic val$loadingView:Lcom/alipay/mobile/nebula/view/H5LoadingView;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Lcom/alipay/mobile/nebula/view/H5LoadingView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->val$loadingView:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->val$loadingView:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    if-eqz v1, :cond_0

    .line 183
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Liog;->c:Z

    .line 184
    const-string/jumbo v1, "H5LoadingPlugin"

    const-string/jumbo v2, "showLoadingView "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->val$loadingView:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5LoadingView;->setText(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;->val$loadingView:Lcom/alipay/mobile/nebula/view/H5LoadingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/view/H5LoadingView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/RuntimeException;
    sput-boolean v3, Liog;->c:Z

    .line 189
    const-string/jumbo v1, "H5LoadingPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
