.class Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;
.super Ljava/lang/Object;
.source "DingCard.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isRightPwd"    # Ljava/lang/Boolean;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;->onDataReceived(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/DingCard$2;->val$callback:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 190
    return-void
.end method
