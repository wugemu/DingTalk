.class final Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;
.super Ljava/lang/Object;
.source "DoorGuardImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;->b:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 436
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    const-string/jumbo v0, "params_device_bind"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v0, "params_conn_type"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->connType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$4$1;->a:Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceBindParams;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    return-object p1
.end method
