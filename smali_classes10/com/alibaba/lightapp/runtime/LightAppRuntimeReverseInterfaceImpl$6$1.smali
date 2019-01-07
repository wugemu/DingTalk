.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6$1;
.super Lcmi;
.source "LightAppRuntimeReverseInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lhoh;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6$1;->a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1142
    const-string/jumbo v0, "updateAllMicroAppsOpenType"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "code="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "reasone="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    .line 2071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1133
    check-cast p1, Ljava/util/List;

    .line 2136
    const-string/jumbo v0, "updateAllMicroAppsOpenType"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onLoadSuccess"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "resOrgAgentModels="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 3071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6$1;->a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$6;->a:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->access$200(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Ljava/util/List;)V

    .line 1133
    return-void
.end method
