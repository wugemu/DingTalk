.class Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;
.super Ljava/lang/Object;
.source "Nav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->recycle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

.field final synthetic val$idList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;->val$idList:Ljava/util/List;

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
    .line 127
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$100(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 128
    .local v1, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-eqz v1, :cond_0

    .line 129
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$2;->val$idList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->recyclePage(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method
