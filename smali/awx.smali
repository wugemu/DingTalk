.class public final Lawx;
.super Ljava/lang/Object;
.source "ShowEvent.java"

# interfaces
.implements Lawv;
.implements Laxn;


# instance fields
.field public a:J

.field public b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

.field private c:J


# direct methods
.method public constructor <init>(JLcom/alibaba/android/calendar/data/object/InstanceShowObject;)V
    .locals 9
    .param p1, "dayStartTimeMillis"    # J
    .param p3, "instanceShowObject"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lawx;->a:J

    .line 49
    iput-object p3, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1084
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 1085
    const-wide/16 v0, 0x0

    .line 50
    :goto_0
    iput-wide v0, p0, Lawx;->c:J

    .line 51
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isAllDayEvent()Z

    move-result v1

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1094
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lawx;->a:J

    .line 1093
    invoke-static/range {v1 .. v7}, Lawo;->a(ZJJJ)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 358
    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 359
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarTypeVersion()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 360
    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->UNKNOWN:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canModifyStartOrEndTimeIndividually()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0}, Lawx;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v1}, Lawc;->o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v1}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->b(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v1}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v1}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v1}, Lawc;->b(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 257
    invoke-static {v1}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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

    .line 510
    if-ne p0, p1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v1

    .line 511
    :cond_1
    instance-of v3, p1, Lawx;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 513
    check-cast v0, Lawx;

    .line 515
    .local v0, "showEvent":Lawx;
    iget-wide v4, p0, Lawx;->c:J

    iget-wide v6, v0, Lawx;->c:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 516
    :cond_3
    iget-wide v4, p0, Lawx;->a:J

    iget-wide v6, v0, Lawx;->a:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 517
    :cond_4
    iget-object v3, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    iget-object v2, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final getBodyBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 194
    invoke-static {v0}, Lawc;->h(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 195
    invoke-static {v0}, Lawc;->g(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget v0, Laow$c;->calendar_meeting_init_bg:I

    invoke-static {v0}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBodyColor()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, -0x1

    return v0
.end method

.method public final getDayEventDelegate()Laxn$a;
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lawx$1;

    invoke-direct {v0, p0}, Lawx$1;-><init>(Lawx;)V

    return-object v0
.end method

.method public final getDescColor()I
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lawx;->shouldShowStrikeThrough()Z

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
    .line 530
    iget-wide v0, p0, Lawx;->a:J

    return-wide v0
.end method

.method public final getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 284
    const-string/jumbo v0, ""

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getIndicatorColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->f(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    :cond_1
    sget v0, Laow$a;->calendar_meeting_reject_cancel_indicator_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 170
    :cond_2
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1190
    if-nez v0, :cond_3

    .line 1191
    const/4 v0, 0x0

    .line 170
    :goto_1
    if-eqz v0, :cond_4

    .line 171
    sget v0, Laow$a;->ui_common_safe_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_0

    .line 1193
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Larl;->a()Larl;

    invoke-static {}, Larl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 173
    :cond_4
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getColor()I

    move-result v0

    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    sget v0, Laow$a;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_6
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    sget v0, Laow$a;->ui_common_warming_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_7
    sget v0, Laow$a;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lawx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, ""

    .line 126
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_1

    .line 119
    const-string/jumbo v0, ""

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 122
    invoke-static {v0}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 276
    const-wide/16 v0, 0x0

    .line 278
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getOwnerId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getShowEndTimeMillis()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 157
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 158
    const-wide/16 v0, 0x0

    .line 160
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 161
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 160
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
    .line 149
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 150
    const-wide/16 v0, 0x0

    .line 152
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lawj;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const-string/jumbo v0, ""

    .line 80
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSortedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    iget-wide v0, p0, Lawx;->c:J

    return-wide v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lawx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget v0, Laow$f;->dt_calendar_version_too_old:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, ""

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lawx;->shouldShowStrikeThrough()Z

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
    .line 63
    invoke-virtual {p0}, Lawx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->UNKNOWN:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->SHOW:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v6, 0x20

    .line 522
    iget-wide v2, p0, Lawx;->c:J

    iget-wide v4, p0, Lawx;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 523
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lawx;->a:J

    iget-wide v4, p0, Lawx;->a:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 524
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 525
    return v0

    .line 524
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isAllDay()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isAllDayEvent()Z

    move-result v0

    goto :goto_0
.end method

.method public final isCrossDay()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 144
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v2

    .line 142
    invoke-static {v0, v1, v2, v3}, Lawj;->b(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public final isRepeatEvent()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRRule()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isShareCalendar()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    return v0
.end method

.method public final shouldShowStrikeThrough()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 265
    invoke-static {v0}, Lawc;->f(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ShowEvent{mSortedTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lawx;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDayStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lawx;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInstanceShowObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
