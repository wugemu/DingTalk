.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1162
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h:Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/InputModel;->callbackResult(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->a:Lcom/alibaba/lightapp/runtime/view/LoseFocusEditText;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Landroid/view/View;)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$2;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;I)V

    .line 1166
    return-void
.end method
