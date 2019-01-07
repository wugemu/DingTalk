.class Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->start(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

.field final synthetic val$animInfo:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isPopParent:Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->val$id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->val$isPopParent:Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->val$animInfo:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->access$100(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    .line 139
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->val$id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->val$isPopParent:Z

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;->val$animInfo:Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;->start(Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V

    .line 142
    :cond_0
    return-void
.end method
