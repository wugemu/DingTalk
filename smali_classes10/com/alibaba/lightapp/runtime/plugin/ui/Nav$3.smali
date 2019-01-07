.class Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$3;
.super Ljava/lang/Object;
.source "Nav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->close(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$200(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 150
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->closePage()V

    .line 153
    :cond_0
    return-void
.end method
