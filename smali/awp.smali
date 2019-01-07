.class public final Lawp;
.super Ljava/lang/Object;
.source "CurrentTimeEvent.java"

# interfaces
.implements Lawv;


# instance fields
.field private a:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lawp;->a:Ljava/util/Calendar;

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p0, Lawp;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 20
    iget-object v0, p0, Lawp;->a:Ljava/util/Calendar;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final getEventStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lawp;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getSortedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lawp;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->CURRENT_TIME:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public final isRepeatEvent()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
