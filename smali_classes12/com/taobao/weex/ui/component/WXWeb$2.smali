.class Lcom/taobao/weex/ui/component/WXWeb$2;
.super Ljava/lang/Object;
.source "WXWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXWeb;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXWeb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXWeb;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinish(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canGoBack"    # Z
    .param p3, "canGoForward"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "pagefinish"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "canGoBack"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v1, "canGoForward"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    const-string/jumbo v2, "pagefinish"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "pagestart"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    const-string/jumbo v2, "pagestart"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "receivedtitle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    const-string/jumbo v2, "receivedtitle"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
