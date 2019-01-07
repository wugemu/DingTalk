.class public final Ljso;
.super Ljava/lang/Object;
.source "WXAppRenderer.java"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;
.implements Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;
.implements Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;
.implements Ljry;


# instance fields
.field public a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

.field public b:Landroid/content/Context;

.field public c:Lcom/taobao/weex/RenderContainer;

.field public d:Ljry$b;

.field public e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljrl;

.field public i:Ljse;

.field private j:Z

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "pageId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljso;->j:Z

    .line 43
    iput-object v1, p0, Ljso;->k:Landroid/view/View;

    .line 44
    iput-object v1, p0, Ljso;->f:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Ljso;->g:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Ljso;->g:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Ljso;->f:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Ljso;->h:Ljrl;

    invoke-interface {v0, p1, p2}, Ljrl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v0, p0, Ljso;->i:Ljse;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Ljso;->i:Ljse;

    iget-object v1, p0, Ljso;->b:Landroid/content/Context;

    iget-object v2, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    const-string/jumbo v3, "SUCCESS"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Ljse;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLPageObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->onActivityDestroy()V

    .line 89
    :cond_1
    iget-object v0, p0, Ljso;->h:Ljrl;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Ljso;->h:Ljrl;

    invoke-interface {v0}, Ljrl;->f()V

    .line 93
    :cond_2
    iput-object v5, p0, Ljso;->b:Landroid/content/Context;

    .line 94
    iput-object v5, p0, Ljso;->i:Ljse;

    .line 95
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 1050
    iget-object v1, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->c:Ljry$a;

    if-eqz v1, :cond_0

    .line 1051
    iget-object v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->c:Ljry$a;

    invoke-interface {v0, p1}, Ljry$a;->onMessage(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v1, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1054
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    .line 1056
    :cond_1
    iget-object v0, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const-string/jumbo v0, "WMLSDKInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "message receiver is null, drop message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Ljso;->d:Ljry$b;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Ljso;->d:Ljry$b;

    invoke-interface {v0, p1, p2}, Ljry$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljrl;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljso;->h:Ljrl;

    return-object v0
.end method

.method public final onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "container"    # Lcom/taobao/weex/ui/component/NestedContainer;

    .prologue
    .line 217
    return-void
.end method

.method public final onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Ljso;->d:Ljry$b;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Ljso;->d:Ljry$b;

    invoke-interface {v0, p2, p3}, Ljry$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public final onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 198
    return-void
.end method

.method public final onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 7
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    iget-object v2, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v2, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v2, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    const-string/jumbo v3, "domLoaded"

    invoke-virtual {v2, v3}, Ljpm;->a(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v2, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    const-string/jumbo v3, "createViewEnd"

    invoke-virtual {v2, v3}, Ljpm;->a(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 179
    invoke-virtual {v2}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v0, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    .line 181
    .local v0, "mPerfLog":Ljpm;
    iget-object v2, p0, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v1

    .line 182
    .local v1, "wxPerformance":Lcom/taobao/weex/common/WXPerformance;
    iget-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    .line 1196
    iget-object v4, v0, Ljpm;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "pageLoaded"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->avgFPS:J

    .line 1211
    iget-object v4, v0, Ljpm;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "avgFPS"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget v2, v1, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    int-to-long v2, v2

    .line 1219
    iget-object v4, v0, Ljpm;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "maxDOMDeep"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-wide v2, v1, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    double-to-long v2, v2

    .line 2215
    iget-object v4, v0, Ljpm;->a:Ljava/util/HashMap;

    const-string/jumbo v5, "oversizeImg"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v0    # "mPerfLog":Ljpm;
    .end local v1    # "wxPerformance":Lcom/taobao/weex/common/WXPerformance;
    :cond_0
    iget-object v2, p0, Ljso;->d:Ljry$b;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Ljso;->d:Ljry$b;

    iget-object v3, p0, Ljso;->f:Ljava/lang/String;

    iget-object v4, p0, Ljso;->k:Landroid/view/View;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Ljry$b;->a(Ljava/lang/String;Landroid/view/View;[Ljava/lang/Object;)V

    .line 191
    :cond_1
    return-void
.end method

.method public final onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v0, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v0, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    const-string/jumbo v1, "domLoading"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    iget-object v0, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    const-string/jumbo v1, "createViewEnd"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 170
    :cond_0
    iput-object p2, p0, Ljso;->k:Landroid/view/View;

    .line 171
    return-void
.end method
