.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Lhmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->isOpenApp4MiniApp(Ljava/lang/String;Ljava/lang/String;Lgvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgvk;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Lgvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->d:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->a:Lgvk;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;)V
    .locals 6
    .param p1, "miniAppOpenTypeModel"    # Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1245
    const-string/jumbo v1, "LightAppRuntime"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "isOpenApp4MiniApp"

    aput-object v0, v2, v5

    const-string/jumbo v0, "miniAppOpenTypeModel="

    aput-object v0, v2, v4

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    .line 1246
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    .line 2071
    const-string/jumbo v0, "mini_app"

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v0, v0, Lhoh;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/model/MiniAppOpenTypeModel;->orgAgentModel:Lhoh;

    iget-object v0, v0, Lhoh;->c:Ljava/lang/Integer;

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->a:Lgvk;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->a:Lgvk;

    invoke-interface {v0, v4}, Lgvk;->a(Z)V

    .line 1261
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateMicroAppOpenType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void

    .line 1246
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1258
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$8;->a:Lgvk;

    invoke-interface {v0, v5}, Lgvk;->a(Z)V

    goto :goto_1
.end method
