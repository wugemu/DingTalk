.class final Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;
.super Ljava/lang/Object;
.source "SendRedPacketFromDetailManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;->b:Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 68
    return-void
.end method
