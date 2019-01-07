.class public Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;
.super Ljava/lang/Object;
.source "SendRedPacketFromDetailManager.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectConversationLogic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 59
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    aget-object v2, p2, v3

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 65
    aget-object v0, p2, v3

    check-cast v0, Landroid/os/Bundle;

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/manager/SendRedPacketFromDetailManager$SelectConversationLogic;Landroid/app/Activity;)V

    invoke-interface {v2, v3, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method
