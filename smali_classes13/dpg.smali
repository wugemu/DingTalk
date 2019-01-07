.class public final Ldpg;
.super Ljava/lang/Object;
.source "MenuRemindCreateHandler.java"

# interfaces
.implements Ldon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "atSeed"    # J
    .param p6, "chatMsgMenuContext"    # Leav;

    .prologue
    .line 28
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v0, v1, :cond_2

    .line 33
    sget v0, Lctk$i;->chat_menu_create_remind_forbidden:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 37
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move-object v1, p1

    .line 40
    check-cast v1, Landroid/app/Activity;

    .line 1046
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 1050
    instance-of v0, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const-wide/16 v2, 0x0

    .line 1058
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v4

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    const-string/jumbo v0, "schedule_remind_time"

    invoke-interface {p3, v0}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1059
    const-string/jumbo v0, "schedule_remind_time"

    invoke-interface {p3, v0}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1062
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 1063
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JZ)V

    .line 1067
    :cond_4
    :goto_1
    const-string/jumbo v0, "chat_later_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_5
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long v6, v2, v4

    .line 1161
    invoke-static {p2, p3, v6, v7}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->fromMessage(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v3

    .line 1162
    if-eqz v3, :cond_4

    .line 1166
    invoke-interface {p3}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    new-instance v2, Ldiw$5;

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Ldiw$5;-><init>(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;J)V

    const-class v0, Lcma;

    invoke-static {v2, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v8, v9, v0}, Ldiw;->a(JLcma;)V

    goto :goto_1
.end method
