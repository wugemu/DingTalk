.class final Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;
.super Ljava/lang/Object;
.source "RuntimeEntry.java"

# interfaces
.implements Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;->a()Lcom/alibaba/lightapp/runtime/webview/RimetWebViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;->a:Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2$1;-><init>(Lcom/alibaba/lightapp/runtime/entry/RuntimeEntry$2;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 225
    const-string/jumbo v0, ""

    return-object v0
.end method
