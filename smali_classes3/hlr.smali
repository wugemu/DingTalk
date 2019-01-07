.class public final Lhlr;
.super Ljava/lang/Object;
.source "MiniPageInstance.java"

# interfaces
.implements Lhlp;


# instance fields
.field a:Liop;

.field b:Landroid/widget/RelativeLayout;

.field c:Lcom/alipay/mobile/nebula/webview/APWebView;

.field d:Landroid/content/Context;

.field e:I

.field private f:Z

.field private g:Z

.field private h:Lhls;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lhls;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "miniappInstance"    # Lhls;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lhlr;->f:Z

    .line 39
    iput-boolean v0, p0, Lhlr;->g:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lhlr;->e:I

    .line 52
    iput-object p1, p0, Lhlr;->d:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lhlr;->i:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lhlr;->h:Lhls;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lhlr;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lhlr;->a:Liop;

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "MiniPageInstance"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "launchPage success"

    aput-object v2, v1, v3

    .line 1071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lhlr;->a:Liop;

    invoke-interface {v0}, Liop;->applyParamsIfNeed()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "MiniPageInstance"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "launchPage fail : main page is null"

    aput-object v2, v1, v3

    .line 2071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    const-string/jumbo v1, "MiniPageInstance"

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "instance onStart"

    aput-object v3, v2, v5

    .line 3071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iput-boolean v4, p0, Lhlr;->g:Z

    .line 85
    iget-object v1, p0, Lhlr;->c:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lhlr;->c:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lhlr;->f:Z

    if-nez v1, :cond_2

    .line 94
    iput-boolean v4, p0, Lhlr;->f:Z

    .line 106
    :cond_1
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MiniPageInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "webview onResume exception."

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    .line 4071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lhlr;->h:Lhls;

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lhlr;->h:Lhls;

    .line 4894
    iput-object p0, v1, Lhls;->e:Lhlp;

    .line 98
    iget-object v1, p0, Lhlr;->h:Lhls;

    const-string/jumbo v2, "appStart"

    invoke-virtual {v1, p0, v2}, Lhls;->a(Lhlp;Ljava/lang/String;)V

    .line 101
    :cond_3
    iget-object v1, p0, Lhlr;->a:Liop;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lhlr;->a:Liop;

    const-string/jumbo v2, "h5PageResume"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    const-string/jumbo v1, "MiniPageInstance"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "instance onResume"

    aput-object v3, v2, v4

    .line 5071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Liph;

    move-result-object v1

    invoke-interface {v1}, Liph;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v1, p0, Lhlr;->a:Liop;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lhlr;->h:Lhls;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lhlr;->h:Lhls;

    .line 6894
    iput-object p0, v1, Lhls;->e:Lhlp;

    .line 119
    iget-object v1, p0, Lhlr;->h:Lhls;

    const-string/jumbo v2, "appResume"

    invoke-virtual {v1, p0, v2}, Lhls;->a(Lhlp;Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lhlr;->a:Liop;

    .line 123
    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "fullscreen"

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    .local v0, "fullScreen":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lhlr;->g:Z

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lhlr;->a:Liop;

    const-string/jumbo v2, "h5PageResume"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 129
    .end local v0    # "fullScreen":Z
    :cond_1
    return-void

    .line 114
    :catch_0
    move-exception v1

    const-string/jumbo v1, "MiniPageInstance"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "exception: notify web view created"

    aput-object v3, v2, v4

    .line 6071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 133
    const-string/jumbo v0, "MiniPageInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "instance onPause"

    aput-object v2, v1, v3

    .line 7071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iput-boolean v3, p0, Lhlr;->g:Z

    .line 135
    iget-object v0, p0, Lhlr;->h:Lhls;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lhlr;->h:Lhls;

    const-string/jumbo v1, "appPause"

    invoke-virtual {v0, p0, v1}, Lhls;->a(Lhlp;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    const-string/jumbo v1, "MiniPageInstance"

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "instance onStop"

    aput-object v3, v2, v4

    .line 8071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lhlr;->c:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Lhlr;->c:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    iget-object v1, p0, Lhlr;->h:Lhls;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lhlr;->h:Lhls;

    const-string/jumbo v2, "appStop"

    invoke-virtual {v1, p0, v2}, Lhls;->a(Lhlp;Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v1, p0, Lhlr;->a:Liop;

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lhlr;->a:Liop;

    const-string/jumbo v2, "h5PagePause"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 159
    :cond_2
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MiniPageInstance"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "webview onPause exception."

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    .line 9071
    const-string/jumbo v3, "mini_app"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string/jumbo v0, "MiniPageInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "instance onDestroy"

    aput-object v2, v1, v3

    .line 10071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-boolean v0, p0, Lhlr;->f:Z

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iput-boolean v3, p0, Lhlr;->f:Z

    .line 169
    iget-object v0, p0, Lhlr;->a:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhlr;->a:Liop;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lhlr;->a:Liop;

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 171
    iget-object v0, p0, Lhlr;->h:Lhls;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lhlr;->h:Lhls;

    iget v1, p0, Lhlr;->e:I

    invoke-virtual {v0, v1}, Lhls;->a(I)V

    goto :goto_0
.end method
