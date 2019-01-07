.class Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$1;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->resetHearShakeTag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

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
    .line 102
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;->access$002(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;Z)Z

    .line 103
    return-void
.end method
