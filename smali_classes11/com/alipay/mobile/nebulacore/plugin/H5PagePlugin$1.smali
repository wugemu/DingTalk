.class Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;
.super Ljava/lang/Object;
.source "H5PagePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->loadData(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$historyUrl:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$data:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$encoding:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$historyUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$data:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$encoding:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;->val$historyUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method
