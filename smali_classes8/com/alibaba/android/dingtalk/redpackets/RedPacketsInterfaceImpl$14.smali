.class final Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;
.super Ljava/lang/Object;
.source "RedPacketsInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

.field final synthetic c:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->c:Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->a:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

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
    .line 436
    const-string/jumbo v2, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 437
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;-><init>()V

    .line 438
    .local v1, "redEnvelopClusterPickingStatusModel":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->pickStatus:I

    .line 439
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;-><init>()V

    .line 440
    .local v0, "clusterObject":Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->receivers:[Ljava/lang/Long;

    .line 441
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->size:I

    iput v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->size:I

    .line 442
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-wide v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->sid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    .line 443
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->clusterid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    .line 444
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->congrats:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->congratulations:Ljava/lang/String;

    .line 445
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;->b:Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->amount:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->amount:Ljava/lang/String;

    .line 446
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;->redEnvelopCluster:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 447
    const-string/jumbo v2, "pick_status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    return-object p1
.end method
