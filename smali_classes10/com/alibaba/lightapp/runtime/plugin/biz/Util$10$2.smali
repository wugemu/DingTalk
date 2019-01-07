.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v1, 0x3

    const-string/jumbo v2, "cancel"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$10;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1748
    return-void
.end method
