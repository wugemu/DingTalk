.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3217
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$corpId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$angentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$data:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;->val$callbackId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    return-void
.end method
