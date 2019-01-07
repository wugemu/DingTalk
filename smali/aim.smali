.class public final Laim;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    .locals 4
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    new-instance v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;-><init>()V

    .line 22
    .local v0, "calendars":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    iput-object p0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_name:Ljava/lang/String;

    .line 23
    iput-object p1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->calendar_displayName:Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "com.alibaba.alimei.push"

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->account_type:Ljava/lang/String;

    .line 25
    iput v2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->sync_events:I

    .line 26
    iput v2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->visible:I

    .line 27
    iput v3, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->canOrganizerRespond:I

    .line 28
    iput v3, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->canModifyTimeZone:I

    .line 29
    iput v2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->maxReminders:I

    .line 30
    const-string/jumbo v1, "0,1"

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->allowedReminders:Ljava/lang/String;

    .line 31
    const-string/jumbo v1, "0,1,2"

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->allowedAttendeeTypes:Ljava/lang/String;

    .line 32
    const-string/jumbo v1, "0,1,2"

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->allowedAvailability:Ljava/lang/String;

    .line 33
    const/16 v1, 0x2bc

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->calendar_access_level:I

    .line 34
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->calendar_timezone:Ljava/lang/String;

    .line 35
    iput-object p0, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->ownerAccount:Ljava/lang/String;

    .line 36
    iput-object p2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->server_id:Ljava/lang/String;

    .line 38
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Laim;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    move-result-object v0

    .line 49
    .local v0, "calendars":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->save()J

    move-result-wide v2

    .line 51
    .local v2, "id":J
    return-wide v2
.end method
