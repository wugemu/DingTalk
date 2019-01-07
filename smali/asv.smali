.class public final Lasv;
.super Ljava/lang/Object;
.source "SystemEventInstance.java"

# interfaces
.implements Lawv;
.implements Laxn;


# instance fields
.field public a:J

.field public b:Lcom/alibaba/android/calendar/data/object/SystemEvent;


# direct methods
.method public constructor <init>(JLcom/alibaba/android/calendar/data/object/SystemEvent;)V
    .locals 1
    .param p1, "dayStartTimeMillis"    # J
    .param p3, "systemEvent"    # Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lasv;->a:J

    .line 32
    iput-object p3, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 33
    return-void
.end method


# virtual methods
.method public final canModifyStartOrEndTimeIndividually()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-ne p0, p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    instance-of v3, p1, Lasv;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 219
    check-cast v0, Lasv;

    .line 221
    .local v0, "that":Lasv;
    iget-wide v4, p0, Lasv;->a:J

    iget-wide v6, v0, Lasv;->a:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 222
    :cond_3
    iget-object v3, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    iget-object v2, v0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final getBodyBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBodyColor()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, -0x1

    return v0
.end method

.method public final getDayEventDelegate()Laxn$a;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lasv$1;

    invoke-direct {v0, p0}, Lasv$1;-><init>(Lasv;)V

    return-object v0
.end method

.method public final getDescColor()I
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lasv;->shouldShowStrikeThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laow$a;->ui_common_level3_text_color:I

    :goto_0
    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Laow$a;->ui_common_level1_text_color:I

    goto :goto_0
.end method

.method public final getEventStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 234
    iget-wide v0, p0, Lasv;->a:J

    return-wide v0
.end method

.method public final getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getIndicatorColor()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 123
    sget v0, Laow$a;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getCalendarColor()I

    move-result v0

    goto :goto_0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    const-string/jumbo v0, ""

    .line 83
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getShowEndTimeMillis()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 113
    const-wide/16 v0, 0x0

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v0

    iget-object v2, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 116
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 115
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lawj;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getShowStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 105
    const-wide/16 v0, 0x0

    .line 107
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v0

    invoke-static {v0, v1}, Lawj;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    const-string/jumbo v0, ""

    .line 62
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSortedTime()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 51
    const-wide/16 v0, 0x0

    .line 53
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->isAllDay()Z

    move-result v1

    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 54
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v4

    iget-wide v6, p0, Lasv;->a:J

    .line 53
    invoke-static/range {v1 .. v7}, Lawo;->a(ZJJJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, ""

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lasv;->shouldShowStrikeThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laow$a;->ui_common_level3_text_color:I

    :goto_0
    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    return v0

    :cond_0
    sget v0, Laow$a;->ui_common_level1_text_color:I

    goto :goto_0
.end method

.method public final getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->SYSTEM:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 227
    iget-wide v2, p0, Lasv;->a:J

    iget-wide v4, p0, Lasv;->a:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 228
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 229
    return v0

    .line 228
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isAllDay()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->isAllDay()Z

    move-result v0

    goto :goto_0
.end method

.method public final isCrossDay()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v0

    iget-object v2, p0, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lawj;->b(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public final isRepeatEvent()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final isShareCalendar()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldShowStrikeThrough()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method
