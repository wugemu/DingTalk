.class final Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;
.super Ljava/lang/Object;
.source "NuvaWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/NuvaWebView$2;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/JsPromptResult;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/NuvaWebView$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView$2;Lcom/uc/webview/export/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/NuvaWebView$2;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;->c:Lcom/alibaba/lightapp/runtime/NuvaWebView$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;->a:Lcom/uc/webview/export/JsPromptResult;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;->a:Lcom/uc/webview/export/JsPromptResult;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/webview/export/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 580
    return-void
.end method
