.class Lcom/alipay/mobile/nebulacore/web/H5WebView$1;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Liop;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$h5Page:Liop;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/app/Activity;Liop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmbedView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient getEmbedView"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1, v7}, Liop;->setContainsEmbedView(Z)V

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 168
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 169
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->getEmbedView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v6

    .line 170
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 171
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "H5EmbedMapView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1, v7}, Liop;->setContainsEmbedSurfaceView(Z)V

    .line 178
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient getSnapshot"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 253
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 254
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "H5Activity"

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    .line 153
    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "createPageSence"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow in createPageSence"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v0}, Liop;->exitPage()Z

    .line 159
    :cond_1
    return-void
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient onEmbedViewAttachedToWebView"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 187
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 189
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient onEmbedViewDestory"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 213
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 215
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 197
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient onEmbedViewDetachedFromWebView"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 200
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 202
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient onEmbedViewParamChanged"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 227
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 229
    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "H5WebViewClient onEmbedViewVisibilityChanged"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 240
    .local v0, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 242
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 245
    .end local v0    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public overScrollBy(IIII)Z
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "overScrollBy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;->onOverScrolled(IIII)V

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
