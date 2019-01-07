.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;
.super Ljava/lang/Object;
.source "RimetWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->b:Landroid/app/Activity;

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
    .line 1298
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->h(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->a:Ljava/lang/String;

    invoke-static {v1}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$7;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1302
    :cond_0
    return-void
.end method
