.class final Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;
.super Ljava/lang/Object;
.source "CalendarSettingActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarDrawerContainer]onAccountLogin accountName="

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;Z)Z

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    .line 89
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$1;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;Z)Z

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer]onAccountLogout accountName="

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 95
    return-void
.end method
