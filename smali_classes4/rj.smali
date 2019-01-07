.class public final Lrj;
.super Ljava/lang/Object;
.source "CalendarNavUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;JJJ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const-string/jumbo v0, "[Calendar Nav]event instance object is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v8, "https://qr.dingtalk.com/mail_calendar/mail_event_detail"

    new-instance v1, Lrj$3;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lrj$3;-><init>(JJJ)V

    invoke-interface {v0, v8, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
