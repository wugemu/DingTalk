.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$3;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    .prologue
    .line 3229
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    const/4 v1, -0x1

    const-string/jumbo v2, "user cancel"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$3;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$5500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3233
    return-void
.end method
