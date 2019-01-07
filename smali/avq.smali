.class public final Lavq;
.super Ljava/lang/Object;
.source "CalendarGrayUtil.java"


# static fields
.field private static a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lavq;->a:Lfp;

    .line 21
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lavq;->b:Lfp;

    .line 22
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lavq;->c:Lfp;

    .line 23
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lavq;->d:Lfp;

    .line 24
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lavq;->e:Lfp;

    .line 25
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    sput-object v0, Lavq;->f:Lfp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "ding_morning_brief_setting"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    .local v0, "showMorningBrief":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarGrayUtil] showMorningBrief:"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 33
    return v0
.end method

.method public static b()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 41
    .local v0, "currentUid":J
    sget-object v2, Lavq;->a:Lfp;

    .line 1096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    sget-object v2, Lavq;->a:Lfp;

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_ding_new_popup_window"

    .line 2083
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lfp;->b(JLjava/lang/Object;)V

    .line 45
    :cond_0
    sget-object v2, Lavq;->a:Lfp;

    .line 2096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    const/4 v2, 0x0

    .line 49
    :goto_0
    return v2

    :cond_1
    sget-object v2, Lavq;->a:Lfp;

    .line 3096
    invoke-virtual {v2, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_calendar_almail_share_setting"

    .line 4083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->c()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_system_calendar_verify"

    .line 5083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 95
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 96
    .local v0, "currentUid":J
    sget-object v4, Lavq;->e:Lfp;

    .line 5096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 96
    if-nez v4, :cond_0

    .line 97
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_calendar_can_drag_create"

    .line 6083
    invoke-virtual {v4, v5, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 98
    .local v2, "featureOn":Z
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarGrayUtil] canDragCreate,  featureOn:"

    aput-object v5, v4, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 99
    sget-object v4, Lavq;->e:Lfp;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lfp;->b(JLjava/lang/Object;)V

    .line 102
    .end local v2    # "featureOn":Z
    :cond_0
    sget-object v4, Lavq;->e:Lfp;

    .line 6096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    if-nez v4, :cond_1

    .line 106
    :goto_0
    return v3

    :cond_1
    sget-object v3, Lavq;->e:Lfp;

    .line 7096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->k()Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_calendar_instance_use_cache"

    .line 8083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, "result":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarGrayUtil] calendarInstanceUseCache="

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method public static j()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 130
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_calendar_rpc_frequency_control"

    .line 9083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, "result":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarGrayUtil] enableRpcFrequencyController="

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 132
    return v0
.end method

.method public static k()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 139
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_calendar_report_check_data"

    .line 10083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 140
    .local v0, "result":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarGrayUtil] enableReportData="

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 141
    return v0
.end method

.method public static l()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 148
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_calendar_hide_status_bar"

    .line 11083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 149
    .local v0, "result":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarGrayUtil] enableHideStatusBar="

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 150
    return v0
.end method

.method public static m()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_calendar_diurnal_view_arrow_indicator"

    .line 12083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "featureOn":Z
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[CalendarGrayUtil] enableShowDayArrowAnimation featureOn:"

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 159
    return v0
.end method

.method public static n()Z
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_calendar_nav"

    .line 13083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    return v0
.end method

.method public static o()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 173
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v0

    .line 174
    .local v0, "currentUid":J
    sget-object v4, Lavq;->b:Lfp;

    .line 13096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 174
    if-nez v4, :cond_0

    .line 175
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_calendar_diurnal_view_refresh_by_scroll"

    .line 14083
    invoke-virtual {v4, v5, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 176
    .local v2, "featureOn":Z
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarGrayUtil] shouldDiurnalEventViewRefreshByScroll featureOn:"

    aput-object v5, v4, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 177
    sget-object v4, Lavq;->b:Lfp;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lfp;->b(JLjava/lang/Object;)V

    .line 180
    .end local v2    # "featureOn":Z
    :cond_0
    sget-object v4, Lavq;->b:Lfp;

    .line 14096
    invoke-virtual {v4, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 180
    if-nez v4, :cond_1

    .line 184
    :goto_0
    return v3

    :cond_1
    sget-object v3, Lavq;->b:Lfp;

    .line 15096
    invoke-virtual {v3, v0, v1, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method public static p()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v0

    .line 190
    .local v0, "currentUid":J
    sget-object v7, Lavq;->c:Lfp;

    .line 16096
    invoke-virtual {v7, v0, v1, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 190
    if-nez v7, :cond_0

    .line 192
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v4

    .line 193
    .local v4, "isDingNewTabOpen":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v3

    .line 194
    .local v3, "isAlibabaUser":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v7

    const-string/jumbo v8, "f_calendar_alibaba_user_ali_mei_folder_enable"

    .line 17083
    invoke-virtual {v7, v8, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 196
    .local v2, "featureOn":Z
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "[CalendarGrayUtil] isAlibabaUserReadAliMailFolderEnable, isAlibabaUser:"

    aput-object v8, v7, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    const-string/jumbo v9, ", featureOn:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 197
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ", isDingNewTabOpen="

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 196
    invoke-static {v7}, Lavy;->a([Ljava/lang/String;)V

    .line 199
    sget-object v7, Lavq;->c:Lfp;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v0, v1, v5}, Lfp;->b(JLjava/lang/Object;)V

    .line 202
    .end local v2    # "featureOn":Z
    .end local v3    # "isAlibabaUser":Z
    .end local v4    # "isDingNewTabOpen":Z
    :cond_0
    sget-object v5, Lavq;->c:Lfp;

    .line 17096
    invoke-virtual {v5, v0, v1, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 202
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .restart local v2    # "featureOn":Z
    .restart local v3    # "isAlibabaUser":Z
    .restart local v4    # "isDingNewTabOpen":Z
    :cond_1
    move v5, v6

    .line 199
    goto :goto_0
.end method

.method public static q()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 208
    .local v2, "currentUid":J
    sget-object v6, Lavq;->f:Lfp;

    .line 18096
    invoke-virtual {v6, v2, v3, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 208
    if-nez v6, :cond_0

    .line 210
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v1

    .line 211
    .local v1, "isAlibabaUser":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v7, "ding_calendar_share_folder_and_mail"

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    .local v0, "configOn":Z
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[CalendarGrayUtil] isShareFolderAndMail, isAlibabaUser:"

    aput-object v7, v6, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string/jumbo v8, ", configOn:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 214
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 213
    invoke-static {v6}, Lavy;->a([Ljava/lang/String;)V

    .line 215
    sget-object v6, Lavq;->f:Lfp;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v2, v3, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 218
    .end local v0    # "configOn":Z
    .end local v1    # "isAlibabaUser":Z
    :cond_0
    sget-object v4, Lavq;->f:Lfp;

    .line 19096
    invoke-virtual {v4, v2, v3, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 218
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .restart local v0    # "configOn":Z
    .restart local v1    # "isAlibabaUser":Z
    :cond_1
    move v4, v5

    .line 215
    goto :goto_0
.end method

.method public static r()Z
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_calendar_drag_vibrate"

    .line 20083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 225
    return v0
.end method
