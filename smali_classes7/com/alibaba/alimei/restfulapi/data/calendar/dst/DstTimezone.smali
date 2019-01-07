.class public Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;
.super Ljava/lang/Object;
.source "DstTimezone.java"


# instance fields
.field public daylightcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;",
            ">;"
        }
    .end annotation
.end field

.field public standardcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;",
            ">;"
        }
    .end annotation
.end field

.field public tzId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaylightcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->daylightcList:Ljava/util/List;

    return-object v0
.end method

.method public getStandardcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->standardcList:Ljava/util/List;

    return-object v0
.end method

.method public getTzId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->tzId:Ljava/lang/String;

    return-object v0
.end method

.method public setDaylightcList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "daylightcList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->daylightcList:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setStandardcList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "standardcList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->standardcList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setTzId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tzId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DstTimezone;->tzId:Ljava/lang/String;

    .line 52
    return-void
.end method
