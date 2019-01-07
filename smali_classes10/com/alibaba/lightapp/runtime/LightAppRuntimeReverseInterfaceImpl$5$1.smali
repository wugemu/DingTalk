.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5$1;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Void;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;Ljava/lang/Void;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5$1;->b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5$1;->a:Ljava/lang/Void;

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
    .line 1091
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5$1;->b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5$1;->b:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$5$1;->a:Ljava/lang/Void;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1094
    :cond_0
    return-void
.end method
