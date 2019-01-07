.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;
.source "TimeZone.java"


# instance fields
.field public daylightc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;",
            ">;"
        }
    .end annotation
.end field

.field public lastModified:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public standardc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;",
            ">;"
        }
    .end annotation
.end field

.field public tzId:Ljava/lang/String;

.field public tzUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public toDstTimeZone()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;-><init>()V

    .line 23
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->tzId:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->tzId:Ljava/lang/String;

    .line 25
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->standardc:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->standardc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->standardc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .local v1, "dsts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->standardc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;

    .line 28
    .local v2, "tzProp":Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;->toDst()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .end local v2    # "tzProp":Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->setStandardcList(Ljava/util/List;)V

    .line 33
    .end local v1    # "dsts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;>;"
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->daylightc:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->daylightc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->daylightc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .restart local v1    # "dsts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TimeZone;->daylightc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;

    .line 36
    .restart local v2    # "tzProp":Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;->toDst()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    .end local v2    # "tzProp":Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->setDaylightcList(Ljava/util/List;)V

    .line 41
    .end local v1    # "dsts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;>;"
    :cond_3
    return-object v0
.end method
