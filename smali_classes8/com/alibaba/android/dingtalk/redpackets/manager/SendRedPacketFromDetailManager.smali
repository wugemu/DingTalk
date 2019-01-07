.class public final Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;
.super Ljava/lang/Object;
.source "SendRedPacketFromDetailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$OnSendRedPacketCompleteLogic;,
        Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$OnCreateConversationLogic;,
        Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$CreateConversationLogic;,
        Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;->a:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 35
    .line 1166
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/send.html"

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$1;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$1;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 35
    return-void
.end method
