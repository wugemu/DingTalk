.class public Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;
.super Ljava/lang/Object;
.source "Dst.java"


# instance fields
.field public dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

.field public recurRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;",
            ">;"
        }
    .end annotation
.end field

.field public tzoffsetFrom:J

.field public tzoffsetTo:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    return-void
.end method


# virtual methods
.method public getDtStart()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    return-object v0
.end method

.method public getRecurRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->recurRuleList:Ljava/util/List;

    return-object v0
.end method

.method public getTzoffsetFrom()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->tzoffsetFrom:J

    return-wide v0
.end method

.method public getTzoffsetTo()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->tzoffsetTo:J

    return-wide v0
.end method

.method public setDtStart(Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;)V
    .locals 0
    .param p1, "dtStart"    # Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->dtStart:Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    .line 37
    return-void
.end method

.method public setRecurRuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "recurRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Rule;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->recurRuleList:Ljava/util/List;

    .line 45
    return-void
.end method

.method public setTzoffsetFrom(J)V
    .locals 1
    .param p1, "tzoffsetFrom"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->tzoffsetFrom:J

    .line 53
    return-void
.end method

.method public setTzoffsetTo(J)V
    .locals 1
    .param p1, "tzoffsetTo"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->tzoffsetTo:J

    .line 61
    return-void
.end method
