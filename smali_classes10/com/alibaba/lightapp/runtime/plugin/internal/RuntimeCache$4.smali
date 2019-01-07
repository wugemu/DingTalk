.class Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$4;
.super Landroid/content/BroadcastReceiver;
.source "RuntimeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v1, "runtime_cache_action_face_recognition"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string/jumbo v1, "extData"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "extData":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/RuntimeCache;Ljava/lang/String;)V

    .line 218
    .end local v0    # "extData":Ljava/lang/String;
    :cond_0
    return-void
.end method
