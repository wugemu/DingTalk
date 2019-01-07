.class final Lbmh$2$1;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmh$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmh$2;


# direct methods
.method constructor <init>(Lbmh$2;)V
    .locals 0
    .param p1, "this$1"    # Lbmh$2;

    .prologue
    .line 180
    iput-object p1, p0, Lbmh$2$1;->a:Lbmh$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 183
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    const-string/jumbo v0, "params_conn_type"

    const-string/jumbo v1, "lan"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v0, "params_mesh_type"

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    const-string/jumbo v0, "params_can_start_config"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "params_dev_servid"

    iget-object v0, p0, Lbmh$2$1;->a:Lbmh$2;

    iget-object v0, v0, Lbmh$2;->a:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmh$2$1;->a:Lbmh$2;

    iget-object v0, v0, Lbmh$2;->a:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    return-object p1

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
