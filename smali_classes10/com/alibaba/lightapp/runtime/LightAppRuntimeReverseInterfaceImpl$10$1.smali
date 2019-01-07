.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;->b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;->b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lhou;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1568
    return-void
.end method
