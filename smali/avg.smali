.class public final Lavg;
.super Ljava/lang/Object;
.source "AliMailEventUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)Ljava/lang/String;
    .locals 4
    .param p0, "eventInstanceObject"    # Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    sget v0, Laow$f;->dt_calendar_has_no_title:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getSelfAttendeeStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Laow$f;->dt_calendar_meeting_unresponse_prefix:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_2
    sget v0, Laow$f;->dt_calendar_has_no_title:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
