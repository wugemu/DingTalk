.class public final Ldpk;
.super Ljava/lang/Object;
.source "MenuSetThemeHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isShow"    # Z

    .prologue
    .line 67
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    .line 70
    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 71
    .local v0, "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->showLoadingDialog()V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "menuSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 31
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    instance-of v2, p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_0

    move-object v0, p3

    .line 35
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 36
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_0

    .line 37
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 38
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ldpk;->a(Landroid/content/Context;Z)V

    .line 39
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ldpk$1;

    invoke-direct {v4, p0, p1}, Ldpk$1;-><init>(Ldpk;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLgqr;)V

    goto :goto_0
.end method
