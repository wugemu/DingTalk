.class public final Lavr;
.super Ljava/lang/Object;
.source "CalendarNavUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/calendar_setting"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/calendar/create_schedule"

    new-instance v2, Lavr$4;

    invoke-direct {v2, p1}, Lavr$4;-><init>(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/system_event_detail"

    new-instance v2, Lavr$9;

    invoke-direct {v2, p1, p2}, Lavr$9;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calendarId"    # J
    .param p3, "folderId"    # Ljava/lang/String;
    .param p4, "curDate"    # J

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/page/schedule_detail"

    new-instance v0, Lavr$7;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lavr$7;-><init>(JLjava/lang/String;J)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/calendar/data/object/SystemEvent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemEvent"    # Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/system_event_detail"

    new-instance v2, Lavr$8;

    invoke-direct {v2, p1}, Lavr$8;-><init>(Lcom/alibaba/android/calendar/data/object/SystemEvent;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/calendar/setting_share"

    new-instance v2, Lavr$2;

    invoke-direct {v2, p1}, Lavr$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {}, Lavq;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1037
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lavr$1;

    invoke-direct {v2, p0}, Lavr$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p1}, Lavk;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 58
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v1, "dingtalk://dingtalkclient/page/conversation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lavr$3;

    invoke-direct {v2}, Lavr$3;-><init>()V

    invoke-interface {v1, p0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
