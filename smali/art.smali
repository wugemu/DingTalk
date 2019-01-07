.class public final Lart;
.super Ljava/lang/Object;
.source "CalendarDiurnalCreateEvent.java"

# interfaces
.implements Laxn;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lart;->a:Ljava/lang/String;

    .line 28
    iput-wide p2, p0, Lart;->b:J

    .line 29
    iput-wide p4, p0, Lart;->c:J

    .line 30
    return-void
.end method


# virtual methods
.method public final canModifyStartOrEndTimeIndividually()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public final getBodyBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBodyColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 72
    invoke-static {}, Larl;->a()Larl;

    move-result-object v1

    .line 2648
    iget-object v0, v1, Larl;->b:Lasl;

    .line 73
    .local v0, "curShareFolderObject":Lasl;
    if-nez v0, :cond_0

    sget v1, Laow$a;->ui_common_green_icon_bg_color:I

    .line 74
    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 3074
    :cond_0
    iget-object v1, v0, Lasl;->e:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Lavj;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public final getDayEventDelegate()Laxn$a;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lart$1;

    invoke-direct {v0, p0}, Lart$1;-><init>(Lart;)V

    return-object v0
.end method

.method public final getDescColor()I
    .locals 1

    .prologue
    .line 90
    sget v0, Laow$a;->ui_common_level1_white_text_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    return v0
.end method

.method public final getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIndicatorColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 64
    invoke-static {}, Larl;->a()Larl;

    move-result-object v1

    .line 1648
    iget-object v0, v1, Larl;->b:Lasl;

    .line 65
    .local v0, "curShareFolderObject":Lasl;
    if-nez v0, :cond_0

    sget v1, Laow$a;->ui_common_green_icon_bg_color:I

    .line 66
    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 2074
    :cond_0
    iget-object v1, v0, Lasl;->e:Ljava/lang/String;

    .line 67
    invoke-static {v1}, Lavj;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 115
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShowEndTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 59
    iget-wide v0, p0, Lart;->c:J

    return-wide v0
.end method

.method public final getShowStartTimeMillis()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 54
    iget-wide v0, p0, Lart;->b:J

    return-wide v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lart;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 85
    sget v0, Laow$a;->ui_common_level1_white_text_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    return v0
.end method

.method public final isAllDay()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public final isCrossDay()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final isShareCalendar()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldShowStrikeThrough()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
