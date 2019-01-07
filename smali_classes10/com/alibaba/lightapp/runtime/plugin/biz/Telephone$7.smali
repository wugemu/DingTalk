.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->quickCall(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->val$number:Ljava/lang/String;

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
    .line 448
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;->val$number:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$7;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Ljava/lang/String;Lcma;)V

    .line 468
    return-void
.end method
