.class public final Lhqa;
.super Ljava/lang/Object;
.source "PerfUtilImpl.java"


# static fields
.field private static a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lhqa;->a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    .line 16
    const-string/jumbo v0, "WEB_PERF_VIEW"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    sput-object v0, Lhqa;->a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lhqa;->a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    invoke-interface {v0}, Lcom/alibaba/doraemon/health/WebPerformanceFloatView;->showFloatView()V

    .line 41
    return-void
.end method

.method public static a(Lcom/uc/webview/export/WebView;)V
    .locals 1
    .param p0, "wv"    # Lcom/uc/webview/export/WebView;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 31
    const-string/jumbo v0, "javascript:document.addEventListener(\'runtimeready\', function() {try { var perf = window.nuva.require(\'internal.performance\');perf.showPanel();perf.setData({data: performance.timing}); } catch(e) { alert(\'perf err: \' + e); }});"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Lhqa;->a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/health/WebPerformanceFloatView;->setPageName(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lhqa;->a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    invoke-interface {v0}, Lcom/alibaba/doraemon/health/WebPerformanceFloatView;->hideFloatView()V

    .line 45
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lhqa;->a:Lcom/alibaba/doraemon/health/WebPerformanceFloatView;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/health/WebPerformanceFloatView;->setPerfData(Ljava/lang/String;)V

    .line 65
    return-void
.end method
