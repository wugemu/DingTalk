.class public Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;
.super Ljava/lang/Object;
.source "H5SearchInputListen.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/search/H5InputListen;


# instance fields
.field private h5Page:Liop;


# direct methods
.method public constructor <init>(Liop;)V
    .locals 0
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    .line 17
    return-void
.end method


# virtual methods
.method public back()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    const-string/jumbo v1, "h5ToolbarBack"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 89
    :cond_0
    return-void
.end method

.method public entranceClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const-string/jumbo v1, "h5SearchBar_didEntranceClick"

    .line 79
    invoke-interface {v0, v1, v2, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onBlur()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const-string/jumbo v1, "h5SearchBar_didBlur"

    invoke-interface {v0, v1, v2, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const-string/jumbo v1, "h5SearchBar_didCancel"

    invoke-interface {v0, v1, v2, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 21
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 22
    .local v1, "value":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 24
    .local v0, "packet":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v2

    const-string/jumbo v3, "h5SearchBar_didTextChange"

    const/4 v4, 0x0

    .line 26
    invoke-interface {v2, v3, v0, v4}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 28
    .end local v0    # "packet":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "value":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method public onFocus()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const-string/jumbo v1, "h5SearchBar_didFocus"

    .line 34
    invoke-interface {v0, v1, v2, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onSubmit(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 50
    .local v1, "value":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 52
    .local v0, "packet":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v2

    const-string/jumbo v3, "h5SearchBar_didSubmit"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 57
    .end local v0    # "packet":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "value":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method public onVoiceBtnClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const-string/jumbo v1, "h5SearchBar_didVoiceBtnClick"

    .line 71
    invoke-interface {v0, v1, v2, v2}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 73
    :cond_0
    return-void
.end method
