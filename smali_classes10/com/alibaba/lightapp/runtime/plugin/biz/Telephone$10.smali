.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->checkBizCall(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$corpId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;->val$corpId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 669
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfDataProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfDataProxy;

    .line 670
    .local v0, "teleConfDataProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfDataProxy;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;->val$corpId:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$10;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfDataProxy;->isOpenBizCall(Ljava/lang/String;Lcma;)V

    .line 695
    return-void
.end method
