.class Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->config(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

.field final synthetic val$tabConfiguration:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;->val$tabConfiguration:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

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
    .line 222
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$500(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    .line 223
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;->val$tabConfiguration:Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->config(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    .line 225
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$600(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$700(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method
