.class public Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$4;
.super Lipd;
.source "MiniEmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlx;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlx;


# direct methods
.method public constructor <init>(Lhlx;)V
    .locals 0
    .param p1, "this$0"    # Lhlx;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$4;->a:Lhlx;

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
    .line 395
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 396
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5PageBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/component/MiniEmbedWebView$4;->a:Lhlx;

    invoke-static {v1}, Lhlx;->c(Lhlx;)Z

    move-result v1

    .line 399
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 390
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 391
    return-void
.end method
