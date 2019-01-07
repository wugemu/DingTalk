.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->b:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

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
    .line 527
    const-string/jumbo v0, "intent_key_is_festival_redpackets"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->b:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v0, "pick_status"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->b:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;->f:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v0, :cond_0

    .line 531
    const-string/jumbo v0, "intent_key_festival_redpacket_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->b:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;->f:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string/jumbo v0, "intent_key_festival_theme_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16$2;->b:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;->f:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->themeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    :cond_0
    return-object p1
.end method
