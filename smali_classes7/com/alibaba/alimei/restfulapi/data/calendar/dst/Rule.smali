.class public Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field public byDayListOfMonth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public byDayListOfWeek:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field

.field public byMonthListOfYear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public daily:Z

.field public freq:Ljava/lang/String;

.field public interval:I

.field public monthly:Z

.field public weekStart:Ljava/lang/String;

.field public weekly:Z

.field public yearly:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->count:I

    .line 31
    iput-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->daily:Z

    .line 32
    const-string/jumbo v0, "YEARLY"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->freq:Ljava/lang/String;

    .line 33
    iput v2, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->interval:I

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->monthly:Z

    .line 35
    const-string/jumbo v0, "MO"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->weekStart:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->weekly:Z

    .line 37
    iput-boolean v2, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->yearly:Z

    return-void
.end method


# virtual methods
.method public getByDayListOfMonth()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->byDayListOfMonth:Ljava/util/List;

    return-object v0
.end method

.method public getByDayListOfWeek()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->byDayListOfWeek:Ljava/util/List;

    return-object v0
.end method

.method public getByMonthListOfYear()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->byMonthListOfYear:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->count:I

    return v0
.end method

.method public getFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->freq:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->interval:I

    return v0
.end method

.method public getWeekStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->weekStart:Ljava/lang/String;

    return-object v0
.end method

.method public isDaily()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->daily:Z

    return v0
.end method

.method public isMonthly()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->monthly:Z

    return v0
.end method

.method public isWeekly()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->weekly:Z

    return v0
.end method

.method public isYearly()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->yearly:Z

    return v0
.end method

.method public setByDayListOfMonth(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "byDayListOfMonth":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->byDayListOfMonth:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setByDayListOfWeek(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "byDayListOfWeek":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->byDayListOfWeek:Ljava/util/List;

    .line 45
    return-void
.end method

.method public setByMonthListOfYear(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "byMonthListOfYear":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->byMonthListOfYear:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->count:I

    .line 69
    return-void
.end method

.method public setDaily(Z)V
    .locals 0
    .param p1, "daily"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->daily:Z

    .line 77
    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 0
    .param p1, "freq"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->freq:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->interval:I

    .line 93
    return-void
.end method

.method public setMonthly(Z)V
    .locals 0
    .param p1, "monthly"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->monthly:Z

    .line 101
    return-void
.end method

.method public setWeekStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekStart"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->weekStart:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setWeekly(Z)V
    .locals 0
    .param p1, "weekly"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->weekly:Z

    .line 117
    return-void
.end method

.method public setYearly(Z)V
    .locals 0
    .param p1, "yearly"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;->yearly:Z

    .line 125
    return-void
.end method
