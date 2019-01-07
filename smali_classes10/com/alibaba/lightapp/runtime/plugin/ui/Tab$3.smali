.class Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->select(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->val$id:Ljava/lang/String;

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
    .line 167
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$200(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    .line 168
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->val$groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->select(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$300(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$400(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method
