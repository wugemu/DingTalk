.class public final Lhdg;
.super Ljava/lang/Object;
.source "JsToNativeBridge.java"


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/NuvaWebView;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 0
    .param p1, "appView"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lhdg;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 14
    return-void
.end method


# virtual methods
.method public final exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "argsJson"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;
    .param p5, "async"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 22
    :try_start_0
    iget-object v0, p0, Lhdg;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v6

    .line 25
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
