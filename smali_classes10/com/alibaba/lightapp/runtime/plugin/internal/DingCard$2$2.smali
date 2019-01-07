.class Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;
.super Ljava/lang/Object;
.source "DingCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->val$editText:Landroid/widget/EditText;

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
    .line 174
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "inputPwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v3

    const-string/jumbo v1, "EVENTBUTLER"

    .line 178
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;)V

    const-class v5, Lcma;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;

    .line 198
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 178
    invoke-interface {v1, v4, v5, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 177
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Ljava/lang/String;Lcma;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    const-string/jumbo v2, "-2"

    const-string/jumbo v3, "Pwd is empty"

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
