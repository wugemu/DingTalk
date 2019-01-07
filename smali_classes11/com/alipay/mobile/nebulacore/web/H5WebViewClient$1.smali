.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    .line 2108
    iget-wide v2, v1, Lior;->ax:J

    .line 195
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lior;->d(J)V

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerAppearLink(Liop;)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    .line 2315
    iget-wide v2, v1, Lior;->k:J

    .line 201
    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    .line 2324
    iget-wide v2, v1, Lior;->l:J

    .line 201
    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getContentHeight()I

    move-result v0

    .line 203
    .local v0, "height":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$200(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    .line 3315
    iget-wide v2, v1, Lior;->k:J

    .line 203
    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v4

    .line 4306
    iget-wide v4, v4, Lior;->j:J

    .line 204
    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lior;->a(J)V

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPreDraw page appear "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v3

    .line 4315
    iget-wide v4, v3, Lior;->k:J

    .line 205
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$200(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    .line 4324
    iget-wide v2, v1, Lior;->l:J

    .line 207
    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$300(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lior;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lior;->b(J)V

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$302(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Z)Z

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPreDraw page appear native "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v3

    .line 5324
    iget-wide v4, v3, Lior;->l:J

    .line 217
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$202(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;I)I

    .line 222
    .end local v0    # "height":I
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 213
    .restart local v0    # "height":I
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 214
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v4

    .line 5306
    iget-wide v4, v4, Lior;->j:J

    .line 214
    sub-long/2addr v2, v4

    .line 213
    invoke-virtual {v1, v2, v3}, Lior;->b(J)V

    goto :goto_0
.end method
