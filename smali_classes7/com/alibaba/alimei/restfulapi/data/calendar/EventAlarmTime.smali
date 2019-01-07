.class public Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;
.super Ljava/lang/Object;
.source "EventAlarmTime.java"


# instance fields
.field public second:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public getSecond()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;->second:J

    return-wide v0
.end method

.method public setSecond(J)V
    .locals 1
    .param p1, "second"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;->second:J

    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EventAlarmTime [second="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAlarmTime;->second:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
