.class final Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$1;
.super Ljava/lang/Object;
.source "SendRedPacketFromDetailManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$1;->a:Lcom/alibaba/wukong/im/Conversation;

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
    .line 169
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v0, "redpacket_on_send_complete"

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$OnSendRedPacketCompleteLogic;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$OnSendRedPacketCompleteLogic;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 171
    return-object p1
.end method
