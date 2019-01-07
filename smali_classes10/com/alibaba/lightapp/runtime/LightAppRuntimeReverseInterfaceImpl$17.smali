.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$17;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->initSecurityGuard(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$17;->b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$17;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 896
    invoke-static {}, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a()Lcom/alibaba/lightapp/runtime/SecurityGuard;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$17;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/SecurityGuard;->a(Landroid/content/Context;Lcma;)V

    .line 897
    return-void
.end method
