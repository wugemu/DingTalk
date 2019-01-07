.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->d:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 467
    const-string/jumbo v2, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 468
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;-><init>()V

    .line 469
    .local v1, "redEnvelopClusterPickingStatusModel":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    .line 470
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;-><init>()V

    .line 471
    .local v0, "clusterObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    .line 472
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    iput v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    .line 473
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    .line 474
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    .line 475
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    .line 476
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    .line 477
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 478
    const-string/jumbo v2, "intent_key_is_festival_redpackets"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    const-string/jumbo v2, "pick_status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 480
    const-string/jumbo v2, "intent_key_festival_redpacket_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageMediaId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string/jumbo v2, "intent_key_festival_theme_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->themeId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 485
    :cond_0
    return-object p1
.end method
