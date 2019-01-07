.class Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;
.super Lhdq;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerAgentWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Lhdq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 1544
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "hpmAppId"    # Ljava/lang/String;

    .prologue
    .line 1820
    const-string/jumbo v8, "safeTunnel_http"

    .line 1821
    .local v8, "fromType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1822
    .local v14, "res":Lcom/uc/webview/export/WebResourceResponse;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v5, 0x1

    .line 1824
    .local v5, "isMatchHpm":Z
    :goto_0
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v13

    .line 1825
    .local v13, "microAppInfo":Lhqy;
    if-eqz v13, :cond_6

    .line 1829
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1830
    .local v17, "uri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 1832
    .local v15, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1833
    const-string/jumbo v1, "Sandbox"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "BLOB"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 10218
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1834
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "BLOB"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url=:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 10724
    const-string/jumbo v3, "info"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    const/4 v1, 0x0

    .line 1896
    .end local v15    # "scheme":Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v1

    .line 1822
    .end local v5    # "isMatchHpm":Z
    .end local v13    # "microAppInfo":Lhqy;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 1838
    .restart local v5    # "isMatchHpm":Z
    .restart local v13    # "microAppInfo":Lhqy;
    :catch_0
    move-exception v16

    .line 1839
    .local v16, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1842
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v13, v0}, Lhqw;->a(Lhqy;Ljava/lang/String;)Z

    move-result v6

    .line 11058
    .local v6, "isInSafeThirdORCommonPaths":Z
    iget-boolean v10, v13, Lhqy;->j:Z

    .line 1844
    .local v10, "isIntercept":Z
    if-nez v10, :cond_2

    .line 1845
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    const-string/jumbo v2, "safe_tunnel_no_intercept"

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lhqw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    if-nez v6, :cond_2

    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    iget-object v2, v13, Lhqy;->c:Ljava/lang/String;

    const-string/jumbo v3, "safe_tunnel_no_intercept"

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v0, v3}, Lhqw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    :cond_2
    const/4 v7, 0x1

    .line 11066
    .local v7, "isAppSafePath":Z
    iget-boolean v12, v13, Lhqy;->k:Z

    .line 1850
    .local v12, "isOnlyHpm":Z
    sget-boolean v1, Lcic;->c:Z

    if-nez v1, :cond_3

    .line 1851
    if-eqz v5, :cond_3

    .line 1852
    invoke-static {}, Lhhy;->a()Lhhy;

    invoke-static/range {p1 .. p2}, Lhhy;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v14

    .line 1853
    if-eqz v14, :cond_7

    .line 1854
    const-string/jumbo v1, "Sandbox"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "HPM"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 11218
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1855
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "HPM"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url=:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 11724
    const-string/jumbo v3, "info"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1856
    const-string/jumbo v8, "safeTunnel_hpm"

    .line 1857
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    iget-object v2, v13, Lhqy;->c:Ljava/lang/String;

    const-string/jumbo v3, "safeTunnel_hpm"

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v0, v3}, Lhqw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    :cond_3
    :goto_2
    if-nez v14, :cond_5

    if-nez v6, :cond_5

    if-eqz v10, :cond_5

    .line 1870
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v13}, Lhqw;->a(Ljava/lang/String;Lhqy;)Z

    move-result v7

    .line 1871
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    iget-object v2, v13, Lhqy;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v0, v7, v12}, Lhqw;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v11

    .line 1872
    .local v11, "isOnHttpOverLwp":Z
    if-eqz v11, :cond_8

    .line 1873
    const-string/jumbo v1, "Sandbox"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "LWP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 13218
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1874
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Tunnel"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 13724
    const-string/jumbo v3, "info"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    iget-object v1, v13, Lhqy;->c:Ljava/lang/String;

    .line 13808
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13809
    const-string/jumbo v3, "User-Agent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13810
    const-string/jumbo v3, "Referer"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13811
    const-string/jumbo v3, "X-Micro-App-Id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13813
    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v3, "max-age=0"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13815
    :cond_4
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v14

    .line 1876
    const-string/jumbo v8, "safeTunnel_lwp"

    .line 1877
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    iget-object v2, v13, Lhqy;->c:Ljava/lang/String;

    const-string/jumbo v3, "safeTunnel_lwp"

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v0, v3}, Lhqw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    .end local v11    # "isOnHttpOverLwp":Z
    :cond_5
    :goto_3
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v8}, Lhqw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v1, v13, Lhqy;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitSafeTunnelResFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v1, v13, Lhqy;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "safeTunnel_hpm"

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitHpmResFind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 1891
    if-nez v14, :cond_6

    .line 1892
    const-string/jumbo v1, "Sandbox"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "HTTP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 15218
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1893
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "HTTP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a([Ljava/lang/Object;)V

    .end local v6    # "isInSafeThirdORCommonPaths":Z
    .end local v7    # "isAppSafePath":Z
    .end local v10    # "isIntercept":Z
    .end local v12    # "isOnlyHpm":Z
    :cond_6
    move-object v1, v14

    .line 1896
    goto/16 :goto_1

    .line 1860
    .restart local v6    # "isInSafeThirdORCommonPaths":Z
    .restart local v7    # "isAppSafePath":Z
    .restart local v10    # "isIntercept":Z
    .restart local v12    # "isOnlyHpm":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 12218
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1860
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "HPM load but not hit"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 12729
    const-string/jumbo v3, "warn"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1861
    const-string/jumbo v1, "Sandbox"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "HPM load but not hit"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1879
    .restart local v11    # "isOnHttpOverLwp":Z
    :cond_8
    const-string/jumbo v1, "Sandbox"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "FORBID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhrq;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 14218
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    .line 1880
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Forbid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "url:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->c([Ljava/lang/Object;)V

    .line 1881
    const-string/jumbo v8, "safeTunnel_forbid"

    .line 1882
    new-instance v9, Lhpd;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lhpd;-><init>(Ljava/lang/String;)V

    .line 1883
    .local v9, "hydroIs":Lhpd;
    new-instance v1, Lhpc;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lhpc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lhpd;->a(Ljava/io/InputStream;)V

    .line 1884
    new-instance v14, Lcom/uc/webview/export/WebResourceResponse;

    .end local v14    # "res":Lcom/uc/webview/export/WebResourceResponse;
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v1, v2, v3}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .restart local v14    # "res":Lcom/uc/webview/export/WebResourceResponse;
    goto/16 :goto_3
.end method

.method private a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2065
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2066
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    const-string/jumbo v1, "Referer"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2069
    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v2, "max-age=0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2058
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;-><init>()V

    .line 2059
    .local v0, "resourceInfo":Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;
    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setLoadType(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->setResUrl(Ljava/lang/String;)V

    .line 2061
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->updateResInfo(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;)V

    .line 2062
    return-void
.end method


# virtual methods
.method public onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1796
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1797
    .local v1, "host":Ljava/lang/String;
    const-string/jumbo v2, "218.205.48.202"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1805
    .end local v1    # "host":Ljava/lang/String;
    :goto_0
    return-void

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1804
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    invoke-super {p0, p1, p2}, Lhdq;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, -0x1

    .line 1775
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1776
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->enterOnPageFinished(Ljava/lang/String;)V

    .line 1777
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onPageFinished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "webview_pageFinish"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->n(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1782
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->setPageFinishTime(Ljava/lang/String;J)V

    .line 1783
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0, v4, v5}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;J)J

    .line 1785
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->o(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    .line 1789
    :cond_1
    invoke-super {p0, p1, p2}, Lhdq;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 1790
    return-void
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1747
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->enterOnPageStarted(Ljava/lang/String;)V

    .line 1748
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 7535
    iget-boolean v1, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 1748
    invoke-virtual {v0, p2, v2, v3, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;->setPageStartTime(Ljava/lang/String;JZ)V

    .line 1749
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    const-string/jumbo v1, "webview_pageStart"

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 1750
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onPageStarted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1751
    const-string/jumbo v0, "PageLoad"

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1752
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->reset()V

    .line 1753
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setCurrentUrl(Ljava/lang/String;)V

    .line 1754
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 8535
    iget-boolean v1, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g:Z

    .line 1754
    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setCustomized(Z)V

    .line 1755
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;->end()V

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1759
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhqe;->a(Ljava/lang/String;)V

    .line 1761
    :cond_1
    invoke-static {}, Lhli;->a()Lhli;

    .line 9115
    invoke-static {p2}, Lcom/ali/user/enterprise/Login;->isLoginUrl(Ljava/lang/String;)Z

    move-result v0

    .line 1761
    if-nez v0, :cond_2

    .line 10040
    invoke-static {p2}, Lhlh;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1761
    if-nez v0, :cond_2

    .line 1762
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->c(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1764
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1766
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->createH5StatTransaction(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;)Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$H5StatTransaction;

    .line 1767
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;J)J

    .line 1769
    invoke-super {p0, p1, p2, p3}, Lhdq;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1770
    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 2085
    invoke-static {}, Lcom/uc/webview/export/extension/UCSettings;->isEnableCustomErrorPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhfv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2088
    .local v1, "baseUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->t(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, "errorPageContent":Ljava/lang/String;
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    .end local v1    # "baseUrl":Ljava/lang/String;
    .end local v2    # "errorPageContent":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onReceivedError:"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v7, ";desc="

    aput-object v7, v5, v9

    const/4 v7, 0x1

    aput-object p3, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ";errCode="

    aput-object v8, v5, v7

    const/4 v7, 0x3

    .line 2097
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    .line 2095
    invoke-virtual {v0, v3, p4, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2099
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setReceiverErrorCode(I)V

    .line 2100
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setReceiverErrorDescription(Ljava/lang/String;)V

    .line 2101
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lgvi;->openWebViewFailWarn(ILjava/lang/String;Ljava/lang/String;)V

    .line 2103
    new-instance v6, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;

    invoke-direct {v6}, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;-><init>()V

    .line 2104
    .local v6, "receivedError":Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;
    invoke-virtual {v6, p3}, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->setDescription(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v6, p2}, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->setErrorCode(I)V

    .line 2106
    invoke-virtual {v6, p4}, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->setFailingUrl(Ljava/lang/String;)V

    .line 2107
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addReceivedErrors(Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;)V

    .line 2108
    const-string/jumbo v0, "PageLoad"

    invoke-static {v0, p4, v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2109
    return-void

    .line 2092
    .end local v6    # "receivedError":Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lhdq;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "handler"    # Lcom/uc/webview/export/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 2113
    if-eqz p1, :cond_0

    .line 2114
    new-instance v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$5;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/uc/webview/export/WebView;Landroid/net/http/SslError;Lcom/uc/webview/export/SslErrorHandler;)V

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/WebView;->post(Ljava/lang/Runnable;)Z

    .line 2173
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 6
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p2, "webResourceRequest"    # Lcom/uc/webview/export/WebResourceRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2077
    const-string/jumbo v0, "Resource"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "shouldInterceptRequest:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "pageUrl="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .line 2079
    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2077
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2080
    invoke-super {p0, p1, p2}, Lhdq;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 32
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1905
    const-string/jumbo v7, ""

    .line 1907
    .local v7, "fromType":Ljava/lang/String;
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v28

    .line 15526
    move-object/from16 v0, v28

    iget-object v0, v0, Lhhy;->d:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 15527
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 15528
    move-object/from16 v0, v28

    iget-object v0, v0, Lhhy;->d:Ljava/util/Map;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v11, v27

    .line 1908
    .local v11, "hpmAppId":Ljava/lang/String;
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_5

    const/4 v13, 0x1

    .line 1909
    .local v13, "isMatchHpm":Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v19

    .line 1910
    .local v19, "res":Lcom/uc/webview/export/WebResourceResponse;
    if-nez v19, :cond_2

    .line 1913
    const/4 v12, 0x0

    .line 1915
    .local v12, "isHpmDisabled":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1917
    .local v16, "pageUri":Landroid/net/Uri;
    const-string/jumbo v27, "dd_hpm_disable"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1918
    .local v17, "paramDisableHpm":Ljava/lang/String;
    const-string/jumbo v27, "true"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    if-eqz v27, :cond_1

    .line 1919
    const/4 v12, 0x1

    .line 1926
    .end local v16    # "pageUri":Landroid/net/Uri;
    .end local v17    # "paramDisableHpm":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static/range {p2 .. p2}, Lhpe;->a(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 1927
    invoke-static {}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 1928
    move-object/from16 v24, p2

    .line 1929
    .local v24, "urlViaLwp":Ljava/lang/String;
    const-string/jumbo v27, "EVENTBUTLER"

    invoke-static/range {v27 .. v27}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 1930
    .local v6, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v28, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$4;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Ljava/lang/String;Ljava/lang/String;)V

    const-class v29, Lhpj;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    .line 1951
    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getContext()Landroid/content/Context;

    move-result-object v27

    check-cast v27, Landroid/app/Activity;

    .line 1930
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lhpj;

    .line 1952
    .local v15, "netCallback":Lhpj;
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a()Ljava/util/Map;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3, v15}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;ZLhpj;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v19

    .line 2044
    .end local v6    # "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    .end local v12    # "isHpmDisabled":Z
    .end local v15    # "netCallback":Lhpj;
    .end local v24    # "urlViaLwp":Ljava/lang/String;
    :cond_2
    :goto_3
    if-nez v19, :cond_3

    .line 2045
    invoke-super/range {p0 .. p2}, Lhdq;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v19

    .line 2046
    const-string/jumbo v7, "System"

    .line 2047
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :cond_3
    const-string/jumbo v27, "Resource"

    const-string/jumbo v28, "shouldInterceptRequest:"

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string/jumbo v31, "fromType="

    aput-object v31, v29, v30

    const/16 v30, 0x1

    aput-object v7, v29, v30

    const/16 v30, 0x2

    const-string/jumbo v31, "pageUrl="

    aput-object v31, v29, v30

    const/16 v30, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v31, v0

    .line 2052
    invoke-static/range {v31 .. v31}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 2049
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2054
    return-object v19

    .line 15532
    .end local v11    # "hpmAppId":Ljava/lang/String;
    .end local v13    # "isMatchHpm":Z
    .end local v19    # "res":Lcom/uc/webview/export/WebResourceResponse;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1908
    .restart local v11    # "hpmAppId":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1923
    .restart local v12    # "isHpmDisabled":Z
    .restart local v13    # "isMatchHpm":Z
    .restart local v19    # "res":Lcom/uc/webview/export/WebResourceResponse;
    :catch_0
    move-exception v22

    .line 1924
    .local v22, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 1955
    .end local v22    # "t":Ljava/lang/Throwable;
    :cond_6
    if-nez v12, :cond_8

    if-eqz v13, :cond_8

    sget-boolean v27, Lcic;->c:Z

    if-nez v27, :cond_8

    .line 1956
    invoke-static {}, Lhhy;->a()Lhhy;

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lhhy;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v19

    .line 1957
    if-eqz v19, :cond_7

    .line 1958
    const-string/jumbo v7, "HPM"

    .line 1960
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    :cond_8
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v27

    const-class v28, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual/range {v27 .. v28}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual/range {v27 .. v27}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v27

    sget v28, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    .line 1963
    invoke-static/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->r(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 1964
    if-nez v19, :cond_2

    .line 1969
    const/16 v26, 0x1

    .line 1972
    .local v26, "viaHydro":Z
    const/4 v10, 0x0

    .line 1973
    .local v10, "host":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1974
    .local v20, "scheme":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1976
    .local v21, "ssp":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 1977
    .local v23, "uri":Landroid/net/Uri;
    if-eqz v23, :cond_9

    .line 1978
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 1979
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .line 1980
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1985
    .end local v23    # "uri":Landroid/net/Uri;
    :cond_9
    :goto_4
    const-string/jumbo v27, "ddres"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 1987
    .local v25, "viaDDRes":Z
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->s(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 1988
    invoke-static {}, Lhpe;->c()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1989
    const-string/jumbo v27, "dd_cache=true"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 1995
    :cond_a
    const/16 v26, 0x0

    .line 1999
    :cond_b
    :goto_5
    if-eqz v26, :cond_f

    .line 2000
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a()Ljava/util/Map;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v19

    .line 2001
    if-eqz v19, :cond_2

    .line 2002
    const-string/jumbo v7, "HYDRO"

    .line 2003
    invoke-static/range {p2 .. p2}, Lhsa;->a(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 2004
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2005
    .local v8, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/uc/webview/export/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v4

    .line 2006
    .local v4, "currentHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_c

    .line 2007
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2010
    :cond_c
    const-string/jumbo v27, "Access-Control-Allow-Origin"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 2011
    const-string/jumbo v27, "Access-Control-Allow-Origin"

    const-string/jumbo v28, "*"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    goto/16 :goto_3

    .line 1982
    .end local v4    # "currentHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "viaDDRes":Z
    :catch_1
    move-exception v22

    .line 1983
    .restart local v22    # "t":Ljava/lang/Throwable;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 1992
    .end local v22    # "t":Ljava/lang/Throwable;
    .restart local v25    # "viaDDRes":Z
    :cond_e
    const-string/jumbo v27, "doc_webview"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getTag()Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-static/range {p2 .. p2}, Lhsa;->a(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1993
    const/16 v26, 0x1

    goto :goto_5

    .line 2016
    :cond_f
    if-eqz v25, :cond_2

    .line 2017
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    const-string/jumbo v27, "//"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 2018
    const/16 v27, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 2020
    .local v14, "mediaId":Ljava/lang/String;
    const-string/jumbo v18, ""

    .line 2022
    .local v18, "realUrl":Ljava/lang/String;
    :try_start_2
    invoke-static {v14}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v18

    .line 2026
    :goto_6
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 2027
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2028
    .local v9, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v27, "User-Agent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->p(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->q(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 2030
    const-string/jumbo v27, "Cache-Control"

    const-string/jumbo v28, "max-age=0"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    :cond_10
    invoke-static {}, Lhpe;->a()Lhpe;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v28

    invoke-virtual {v0, v1, v9, v2}, Lhpe;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v19

    .line 2033
    if-eqz v19, :cond_2

    .line 2034
    const-string/jumbo v7, "HYDRO"

    goto/16 :goto_3

    .line 2023
    .end local v9    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v5

    .line 2024
    .local v5, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v5}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_6
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 27
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1547
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/BlankPageDetector;->enterShouldOverrideUrlLoading(Ljava/lang/String;)V

    .line 1548
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v21

    const-string/jumbo v22, "webview_override"

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addRuntimeLifeCycle(Ljava/lang/String;)V

    .line 1549
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->addUrlForward(Ljava/lang/String;)V

    .line 1552
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v21

    .line 3107
    move-object/from16 v0, v21

    iget-object v0, v0, Lhli;->a:Lhlj;

    move-object/from16 v21, v0

    .line 4056
    const-string/jumbo v21, "android_uic_disable_intercept_url"

    invoke-static/range {v21 .. v21}, Lhlj;->a(Ljava/lang/String;)Z

    move-result v21

    .line 3107
    if-eqz v21, :cond_0

    .line 3108
    invoke-static/range {p2 .. p2}, Lcom/ali/user/enterprise/Login;->isLoginUrl(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v21, 0x1

    .line 3110
    :goto_0
    const-string/jumbo v22, "isLoginUrl"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "url="

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object p2, v23, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "intercept="

    aput-object v25, v23, v24

    const/16 v24, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1552
    if-eqz v21, :cond_1

    .line 1553
    invoke-static {}, Lhli;->a()Lhli;

    move-result-object v21

    new-instance v22, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Lhli;->a(Lhli$a;)V

    .line 1568
    const/16 v16, 0x1

    .line 1742
    :goto_1
    return v16

    .line 3108
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 1571
    :cond_1
    invoke-static/range {p2 .. p2}, Lhlh;->a(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1572
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v22

    new-instance v23, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$2;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Lcma;)V

    .line 1589
    const/16 v16, 0x1

    goto :goto_1

    .line 1599
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string/jumbo v21, "http"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-static {}, Lhfv;->a()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1600
    invoke-super/range {p0 .. p2}, Lhdq;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v16

    goto :goto_1

    .line 1603
    :cond_3
    const/16 v16, 0x0

    .line 1604
    .local v16, "result":Z
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 1606
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v20

    .line 1607
    .local v20, "urlLength":I
    const/16 v15, 0x32

    .line 1608
    .local v15, "oauthLength":I
    move/from16 v0, v20

    if-lt v0, v15, :cond_4

    .line 1609
    const/16 v21, 0x19

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1610
    .local v8, "endStr":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x19

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1611
    .local v12, "lowerCaseDomainUrl":Ljava/lang/String;
    const-string/jumbo v21, "https://oapi.dingtalk.com/connect/oauth2/authorize"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1612
    const-string/jumbo v21, "STATISTICS"

    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 5047
    .local v18, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    sget-object v21, Lhqf$b;->a:Lhqf;

    .line 1613
    new-instance v22, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient$3;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;Lcom/alibaba/doraemon/statistics/Statistics;Ljava/lang/String;)V

    .line 5095
    new-instance v23, Lhqt;

    invoke-direct/range {v23 .. v23}, Lhqt;-><init>()V

    .line 5096
    new-instance v24, Lhqf$3;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lhqf$3;-><init>(Lhqf;Lhqf$d;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lhqs;->a(Ljava/lang/String;Lcma;)V

    .line 1628
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldOverrideUrlLoading:"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, ";result="

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "true"

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1635
    .end local v8    # "endStr":Ljava/lang/String;
    .end local v12    # "lowerCaseDomainUrl":Ljava/lang/String;
    .end local v18    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_4
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lhqw;->a(Ljava/lang/String;)Lhqy;

    move-result-object v17

    .line 1636
    .local v17, "safeTunnelMicroAppInfo":Lhqy;
    if-eqz v17, :cond_5

    .line 1637
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lhqw;->a(Ljava/lang/String;Lhqy;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    .line 5218
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/NuvaWebView;->e:Lcom/alibaba/lightapp/runtime/NuvaWebView$a;

    move-object/from16 v21, v0

    .line 1638
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "insecure link"

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/NuvaWebView$a;->b([Ljava/lang/Object;)V

    .line 1639
    const-string/jumbo v21, "insecure link"

    invoke-static/range {v21 .. v21}, Lcms;->a(Ljava/lang/String;)V

    .line 1640
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1647
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->j(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    move-result-object v21

    .line 5487
    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->a:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->a:I

    .line 5488
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5489
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v22

    const-wide/16 v24, 0x3e8

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    move-result-object v21

    .line 5505
    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->a:I

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v21, 0x1

    .line 1653
    :goto_2
    if-eqz v21, :cond_a

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    move-result-object v21

    .line 5512
    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->b:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    const/16 v21, 0x1

    .line 1656
    :goto_3
    if-nez v21, :cond_6

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->k(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;

    move-result-object v21

    .line 6496
    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->b:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$a;->b:I

    .line 6497
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6498
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v22

    const-wide/16 v24, 0x3e8

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->loadUrl(Ljava/lang/String;)V

    .line 1659
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldOverrideUrlLoading:"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "loadUrlImpl=======>0"

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    :cond_6
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldOverrideUrlLoading:"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, ";result="

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "true"

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 5505
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 5512
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1666
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1670
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 1671
    .local v19, "uri":Landroid/net/Uri;
    if-eqz v19, :cond_e

    .line 1673
    const/4 v13, 0x0

    .line 1675
    .local v13, "needFinish":Z
    :try_start_0
    const-string/jumbo v21, "needFinish"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1676
    .local v14, "needFinishStr":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 1680
    .end local v14    # "needFinishStr":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lhsb;->a()Lhsb;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lhsb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 1681
    .local v9, "isHandleBusinessUrlSuccess":Z
    const/4 v10, 0x0

    .line 1685
    .local v10, "isHandleWeexUrlSuccess":Z
    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->l(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 7214
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhgy;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v10

    .line 1690
    :cond_b
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldoverrideurlloading:"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, ";isHandleBusinessUrlSuccess="

    aput-object v26, v24, v25

    const/16 v25, 0x1

    .line 1691
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, ";isHandleWeexUrlSuccess="

    aput-object v26, v24, v25

    const/16 v25, 0x3

    .line 1692
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    .line 1690
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1695
    if-eqz v13, :cond_c

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->finish()V

    .line 1700
    :cond_c
    if-nez v9, :cond_d

    if-eqz v10, :cond_e

    .line 1701
    :cond_d
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1677
    .end local v9    # "isHandleBusinessUrlSuccess":Z
    .end local v10    # "isHandleWeexUrlSuccess":Z
    :catch_0
    move-exception v7

    .line 1678
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1707
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "needFinish":Z
    :cond_e
    invoke-super/range {p0 .. p2}, Lhdq;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v16

    .line 1708
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldOverrideUrlLoading:"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "super.shouldOverrideUrlLoading=======>1 "

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1712
    invoke-static/range {p2 .. p2}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1713
    .local v6, "domain":Ljava/lang/String;
    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Ljava/lang/String;)Z

    move-result v11

    .line 1716
    .local v11, "isSafe":Z
    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->g(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1719
    :cond_f
    if-eqz v11, :cond_10

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->m(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    .line 1722
    :cond_10
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldOverrideUrlLoading:"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "loadUrlImpl=======>1"

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->e(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 1724
    const/16 v16, 0x1

    .line 1740
    .end local v6    # "domain":Ljava/lang/String;
    .end local v11    # "isSafe":Z
    .end local v15    # "oauthLength":I
    .end local v17    # "safeTunnelMicroAppInfo":Lhqy;
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v20    # "urlLength":I
    :cond_11
    :goto_5
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "shouldOverrideUrlLoading:"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, ";result="

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1726
    .restart local v6    # "domain":Ljava/lang/String;
    .restart local v11    # "isSafe":Z
    .restart local v15    # "oauthLength":I
    .restart local v17    # "safeTunnelMicroAppInfo":Lhqy;
    .restart local v19    # "uri":Landroid/net/Uri;
    .restart local v20    # "urlLength":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->f(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1727
    :cond_13
    const/16 v16, 0x1

    goto :goto_5

    .line 1729
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$InnerAgentWebViewClient;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;)V

    .line 1730
    const/16 v16, 0x1

    goto :goto_5
.end method
