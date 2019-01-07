.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$3;
.super Landroid/content/BroadcastReceiver;
.source "FCLifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->registerReturnFromCameraActivity2Receiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$3;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager$3;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;->access$002(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCLifeCycleManager;Z)Z

    .line 153
    const-string/jumbo v0, "FCLifeCycleManager"

    const-string/jumbo v1, "return from CameraActivity2!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method
