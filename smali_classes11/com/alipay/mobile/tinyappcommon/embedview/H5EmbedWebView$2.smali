.class Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$2;
.super Lipd;
.source "H5EmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$2;->this$0:Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 241
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5PageReceivedTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView$2;->this$0:Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;

    invoke-static {v1}, Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;->access$000(Lcom/alipay/mobile/tinyappcommon/embedview/H5EmbedWebView;)V

    .line 244
    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 235
    const-string/jumbo v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 236
    return-void
.end method
