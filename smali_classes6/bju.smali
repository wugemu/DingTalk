.class public final Lbju;
.super Ljava/lang/Object;
.source "DingGrayUtil.java"


# static fields
.field static a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static b:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static d:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static e:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static f:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static g:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->a:Lfp;

    .line 35
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->b:Lfp;

    .line 37
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->c:Lfp;

    .line 39
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->d:Lfp;

    .line 41
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->e:Lfp;

    .line 43
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->f:Lfp;

    .line 45
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lbju;->g:Lfp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 53
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v0

    .line 54
    .local v0, "currentUid":J
    sget-object v3, Lbju;->a:Lfp;

    .line 1096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    sget-object v3, Lbju;->a:Lfp;

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "ding_restart_not_pull"

    .line 2083
    invoke-virtual {v4, v5, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 58
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[DingGrayUtil]restart not pull ding:"

    aput-object v4, v3, v2

    sget-object v4, Lbju;->a:Lfp;

    .line 2096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 60
    sget-object v3, Lbju;->a:Lfp;

    .line 3096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    if-nez v3, :cond_1

    .line 64
    :goto_0
    return v2

    :cond_1
    sget-object v2, Lbju;->a:Lfp;

    .line 4096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "ding_meeting_time_conflict"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, "meetingTimeConflictFlag":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingGrayUtil] isMeetingTimeConflictOpen:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 77
    return v0
.end method

.method public static d()Z
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "ding_show_advertise"

    .line 5083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    return v0
.end method

.method public static e()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "ding_list_sample_style"

    .line 6083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    .local v0, "shouldDingItemShowSampleIcon":Z
    sget-boolean v1, Lbju;->h:Z

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingGrayUtil] shouldDingItemShowSampleIcon:"

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 94
    sput-boolean v4, Lbju;->h:Z

    .line 96
    :cond_0
    return v0
.end method

.method public static f()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 104
    .local v0, "currentUid":J
    sget-object v2, Lbju;->b:Lfp;

    .line 6096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    if-nez v2, :cond_0

    .line 105
    sget-object v2, Lbju;->b:Lfp;

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_ding_new_popup_window"

    .line 7083
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 105
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lfp;->b(JLjava/lang/Object;)V

    .line 108
    :cond_0
    sget-object v2, Lbju;->b:Lfp;

    .line 7096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    if-nez v2, :cond_1

    .line 109
    const/4 v2, 0x0

    .line 112
    :goto_0
    return v2

    :cond_1
    sget-object v2, Lbju;->b:Lfp;

    .line 8096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static g()Z
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "config_switch_ding_can_confirm_all_comment_reminds"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    .line 117
    .local v0, "canConfirmAllCommentReminds":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingGrayUtil] canConfirmAllCommentReminds:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 118
    return v0
.end method

.method public static h()Z
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_ding_modify_send_type"

    .line 9083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    return v0
.end method

.method public static i()Z
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_meeting_detail_add_receiver"

    .line 10083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    return v0
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_transfer_task"

    .line 11083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    return v0
.end method

.method public static k()Z
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_picture_to_task"

    .line 12083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    return v0
.end method

.method public static l()Z
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_ding_meeting_map_location"

    .line 13083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    return v0
.end method

.method public static m()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 165
    .local v0, "currentUid":J
    sget-object v4, Lbju;->c:Lfp;

    .line 13096
    invoke-virtual {v4, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 165
    if-nez v4, :cond_0

    .line 166
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v7, "f_ding_meeting_repeat_frequency"

    .line 14083
    invoke-virtual {v4, v7, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 167
    .local v3, "meetingRecurrenceFeatureFlag":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v7, "ding_conference_recurrence_setting"

    invoke-virtual {v4, v7, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 168
    .local v2, "meetingRecurrenceCompanyFlag":Z
    sget-object v7, Lbju;->c:Lfp;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v1, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 170
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v7, "[DingGrayUtil] isSupportRepeatMeeting meetingRecurrenceFeatureFlag="

    aput-object v7, v4, v6

    .line 171
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string/jumbo v7, ", meetingRecurrenceCompanyFlag="

    aput-object v7, v4, v10

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 170
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 174
    .end local v2    # "meetingRecurrenceCompanyFlag":Z
    .end local v3    # "meetingRecurrenceFeatureFlag":Z
    :cond_0
    sget-object v4, Lbju;->c:Lfp;

    .line 14096
    invoke-virtual {v4, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 174
    if-nez v4, :cond_2

    .line 179
    :goto_1
    return v6

    .restart local v2    # "meetingRecurrenceCompanyFlag":Z
    .restart local v3    # "meetingRecurrenceFeatureFlag":Z
    :cond_1
    move v4, v6

    .line 168
    goto :goto_0

    .line 178
    .end local v2    # "meetingRecurrenceCompanyFlag":Z
    .end local v3    # "meetingRecurrenceFeatureFlag":Z
    :cond_2
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v7, "[DingGrayUtil] isSupportRepeatMeeting:"

    aput-object v7, v4, v6

    sget-object v6, Lbju;->c:Lfp;

    .line 15096
    invoke-virtual {v6, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 178
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 179
    sget-object v4, Lbju;->c:Lfp;

    .line 16096
    invoke-virtual {v4, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 179
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1
.end method

.method public static n()Z
    .locals 3

    .prologue
    .line 187
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_ding_drop_table_if_database_exception"

    .line 17083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 187
    return v0
.end method

.method public static o()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public static q()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 212
    .local v0, "currentUid":J
    sget-object v4, Lbju;->d:Lfp;

    .line 17096
    invoke-virtual {v4, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    if-nez v4, :cond_0

    .line 213
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v7, "f_ding_message_to_task_relate_group"

    .line 18083
    invoke-virtual {v4, v7, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    .local v3, "messageToTaskGroupFeatureFlag":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v7, "ding_grouptaskV2"

    invoke-virtual {v4, v7, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 215
    .local v2, "messageToGroupTaskCompanyFlag":Z
    sget-object v7, Lbju;->d:Lfp;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v0, v1, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 217
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v7, "[DingGrayUtil] isMessageToGroupTask messageToTaskGroupFeatureFlag="

    aput-object v7, v4, v6

    .line 218
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string/jumbo v7, ", messageToGroupTaskCompanyFlag="

    aput-object v7, v4, v10

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 217
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 221
    .end local v2    # "messageToGroupTaskCompanyFlag":Z
    .end local v3    # "messageToTaskGroupFeatureFlag":Z
    :cond_0
    sget-object v4, Lbju;->d:Lfp;

    .line 18096
    invoke-virtual {v4, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 221
    if-nez v4, :cond_2

    .line 226
    :goto_1
    return v6

    .restart local v2    # "messageToGroupTaskCompanyFlag":Z
    .restart local v3    # "messageToTaskGroupFeatureFlag":Z
    :cond_1
    move v4, v6

    .line 215
    goto :goto_0

    .line 225
    .end local v2    # "messageToGroupTaskCompanyFlag":Z
    .end local v3    # "messageToTaskGroupFeatureFlag":Z
    :cond_2
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v7, "[DingGrayUtil] isMessageToGroupTask:"

    aput-object v7, v4, v6

    sget-object v6, Lbju;->d:Lfp;

    .line 19096
    invoke-virtual {v6, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 225
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 226
    sget-object v4, Lbju;->d:Lfp;

    .line 20096
    invoke-virtual {v4, v0, v1, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 226
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_1
.end method

.method public static r()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 234
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 235
    .local v0, "currentUid":J
    sget-object v4, Lbju;->e:Lfp;

    .line 21096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 235
    if-nez v4, :cond_0

    .line 236
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_ding_new_tab_v2"

    .line 22083
    invoke-virtual {v4, v5, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 237
    .local v2, "dingNewTabFeatureFlag":Z
    sget-object v4, Lbju;->e:Lfp;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lfp;->b(JLjava/lang/Object;)V

    .line 239
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[DingGrayUtil] isDingNewTab dingNewTabFeatureFlag="

    aput-object v5, v4, v3

    .line 240
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 239
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 243
    .end local v2    # "dingNewTabFeatureFlag":Z
    :cond_0
    sget-object v4, Lbju;->e:Lfp;

    .line 22096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 243
    if-nez v4, :cond_1

    .line 247
    :goto_0
    return v3

    :cond_1
    sget-object v3, Lbju;->e:Lfp;

    .line 23096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 247
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public static s()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "device_meeting_signin_enable"

    invoke-virtual {v4, v5, v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 256
    .local v0, "configOn":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_ding_meeting_device_signin_enable"

    .line 24083
    invoke-virtual {v4, v5, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 257
    .local v1, "featureOn":Z
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[DingGrayUtil] isMeetingSmartDeviceSignIn, configOn:"

    aput-object v5, v4, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, ", featureOn:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 258
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static t()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 265
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_ding_ding_id_exchange"

    .line 25083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 266
    .local v0, "featureOn":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DingGrayUtil] isDingIdExchangeEnable:"

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 267
    return v0
.end method

.method public static u()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 276
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 277
    .local v0, "currentUid":J
    sget-object v4, Lbju;->f:Lfp;

    .line 25096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 277
    if-nez v4, :cond_0

    .line 278
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_ding_notify_center_red_dot"

    .line 26083
    invoke-virtual {v4, v5, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 279
    .local v2, "dingRedDotFeatureFlag":Z
    sget-object v4, Lbju;->f:Lfp;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lfp;->b(JLjava/lang/Object;)V

    .line 281
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "[DingGrayUtil] isDingRedDotOpen dingRedDotFeatureFlag="

    aput-object v5, v4, v3

    .line 282
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 281
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 285
    .end local v2    # "dingRedDotFeatureFlag":Z
    :cond_0
    sget-object v4, Lbju;->f:Lfp;

    .line 26096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 285
    if-nez v4, :cond_1

    .line 291
    :goto_0
    return v3

    .line 289
    :cond_1
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[DingGrayUtil] isDingRedDotOpen:"

    aput-object v5, v4, v3

    sget-object v3, Lbju;->f:Lfp;

    .line 27096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 290
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const-string/jumbo v3, ", currentUid="

    aput-object v3, v4, v8

    const/4 v3, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 289
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 291
    sget-object v3, Lbju;->f:Lfp;

    .line 28096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 291
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public static v()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 295
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v6, "ding_calendar_eapp_create_v2"

    invoke-virtual {v5, v6, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 296
    .local v0, "configSwitchOn":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_merge_ding_schedule"

    .line 29083
    invoke-virtual {v5, v6, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 297
    .local v1, "featureOn":Z
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->isMiniAppComponentFeatureActived()Z

    move-result v2

    .line 298
    .local v2, "isEMiniEnable":Z
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[DingGrayUtil] shouldMergeMeetingSchedule configSwitch:"

    aput-object v6, v5, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    const-string/jumbo v7, ", featureOn:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 299
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", isEMiniEnable:"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 300
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 298
    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 301
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static w()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 305
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 306
    .local v2, "currentUid":J
    sget-object v6, Lbju;->g:Lfp;

    .line 29096
    invoke-virtual {v6, v2, v3, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 306
    if-nez v6, :cond_0

    .line 307
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "ding_eapp_task_enable"

    invoke-virtual {v6, v7, v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 308
    .local v0, "configSwitchOn":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "f_ding_eapp_task"

    .line 30083
    invoke-virtual {v6, v7, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 309
    .local v1, "featureOn":Z
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[DingGrayUtil] isETaskEnable configSwitch:"

    aput-object v7, v6, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string/jumbo v8, ", featureOn:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lbkd;->a([Ljava/lang/String;)V

    .line 310
    sget-object v6, Lbju;->g:Lfp;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v2, v3, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 313
    .end local v0    # "configSwitchOn":Z
    .end local v1    # "featureOn":Z
    :cond_0
    sget-object v4, Lbju;->g:Lfp;

    .line 30096
    invoke-virtual {v4, v2, v3, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 313
    if-nez v4, :cond_2

    .line 317
    :goto_1
    return v5

    .restart local v0    # "configSwitchOn":Z
    .restart local v1    # "featureOn":Z
    :cond_1
    move v4, v5

    .line 310
    goto :goto_0

    .line 317
    .end local v0    # "configSwitchOn":Z
    .end local v1    # "featureOn":Z
    :cond_2
    sget-object v4, Lbju;->g:Lfp;

    .line 31096
    invoke-virtual {v4, v2, v3, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1
.end method
