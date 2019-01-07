.class final Lcom/alibaba/lightapp/runtime/NuvaWebView$3;
.super Ljava/lang/Object;
.source "NuvaWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/NuvaWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$3;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getJS(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 626
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$3;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    const-string/jumbo v1, "lightapp/js/nuva.js"

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Lcom/alibaba/lightapp/runtime/NuvaWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
