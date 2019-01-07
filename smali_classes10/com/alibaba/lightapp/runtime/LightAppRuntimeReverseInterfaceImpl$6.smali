.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->updateAllMicroAppsOpenType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;->a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1124
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;->a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->access$100(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;)Ljava/util/List;

    move-result-object v0

    .line 1125
    .local v0, "reqOrgAgentModels":Ljava/util/List;, "Ljava/util/List<Lhoh;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;

    .line 1130
    .local v1, "service":Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;
    const-string/jumbo v2, "updateAllMicroAppsOpenType"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "OrgMicroAPPIService.getDefaultOpenType"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "reqOrgAgentModels="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 2071
    const-string/jumbo v4, "mini_app"

    invoke-static {v4, v2, v3}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    new-instance v2, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6$1;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6$1;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OrgMicroAPPIService;->getDefaultOpenType(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
