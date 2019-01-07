.class public Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;
.super Ljava/lang/Object;
.source "EventRecurRule.java"


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
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;",
            ">;"
        }
    .end annotation
.end field

.field public byDayListOfYear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

.field public bySetPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public byWeekListOfYear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public count:Ljava/lang/Integer;

.field public freq:Ljava/lang/String;

.field public interval:Ljava/lang/Integer;

.field public until:Ljava/lang/Long;

.field public weekStart:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
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
    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfMonth:Ljava/util/List;

    return-object v0
.end method

.method public getByDayListOfWeek()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    return-object v0
.end method

.method public getByDayListOfYear()Ljava/util/List;
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
    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfYear:Ljava/util/List;

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
    .line 111
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byMonthListOfYear:Ljava/util/List;

    return-object v0
.end method

.method public getBySetPosList()Ljava/util/List;
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
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->bySetPosList:Ljava/util/List;

    return-object v0
.end method

.method public getByWeekListOfYear()Ljava/util/List;
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
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byWeekListOfYear:Ljava/util/List;

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFreg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUntil()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->weekStart:Ljava/lang/String;

    return-object v0
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
    .line 139
    .local p1, "byDayListOfMonth":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfMonth:Ljava/util/List;

    .line 140
    return-void
.end method

.method public setByDayListOfWeek(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "byDayListOfWeek":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setByDayListOfYear(Ljava/util/List;)V
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
    .line 131
    .local p1, "byDayListOfYear":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfYear:Ljava/util/List;

    .line 132
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
    .line 115
    .local p1, "byMonthListOfYear":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byMonthListOfYear:Ljava/util/List;

    .line 116
    return-void
.end method

.method public setBySetPosList(Ljava/util/List;)V
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
    .line 155
    .local p1, "bySetPosList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->bySetPosList:Ljava/util/List;

    .line 156
    return-void
.end method

.method public setByWeekListOfYear(Ljava/util/List;)V
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
    .line 123
    .local p1, "byWeekListOfYear":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byWeekListOfYear:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    .line 100
    return-void
.end method

.method public setFreg(Ljava/lang/String;)V
    .locals 0
    .param p1, "freg"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setInterval(I)V
    .locals 1
    .param p1, "interval"    # I

    .prologue
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public setUntil(J)V
    .locals 1
    .param p1, "until"    # J

    .prologue
    .line 107
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    .line 108
    return-void
.end method

.method public setWeekStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekStart"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->weekStart:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EventRecurRule [freq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->freq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", until="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->until:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", weekStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->weekStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", byMonthListOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byMonthListOfYear:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", byWeekListOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byWeekListOfYear:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", byDayListOfYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfYear:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", byDayListOfMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfMonth:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", byDayListOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->byDayListOfWeek:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bySetPosList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventRecurRule;->bySetPosList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
