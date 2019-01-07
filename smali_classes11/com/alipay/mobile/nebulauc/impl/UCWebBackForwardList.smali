.class public Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;
.super Ljava/lang/Object;
.source "UCWebBackForwardList.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;


# instance fields
.field private mList:Lcom/uc/webview/export/WebBackForwardList;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebBackForwardList;)V
    .locals 0
    .param p1, "list"    # Lcom/uc/webview/export/WebBackForwardList;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    .line 15
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, -0x1

    .line 21
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentItem()Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebBackForwardList;->getCurrentItem()Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebBackForwardList;->getCurrentItem()Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v1

    invoke-static {v0, v1}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    goto :goto_0
.end method

.method public getItemAtIndex(I)Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;
    .locals 2
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebBackForwardList;->getItemAtIndex(I)Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    invoke-virtual {v1, p1}, Lcom/uc/webview/export/WebBackForwardList;->getItemAtIndex(I)Lcom/uc/webview/export/WebHistoryItem;

    move-result-object v1

    invoke-static {v0, v1}, Lipj;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebHistoryItem;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;->mList:Lcom/uc/webview/export/WebBackForwardList;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebBackForwardList;->getSize()I

    move-result v0

    goto :goto_0
.end method
