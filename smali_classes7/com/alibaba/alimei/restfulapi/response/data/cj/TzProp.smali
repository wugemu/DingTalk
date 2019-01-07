.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;
.source "TzProp.java"


# instance fields
.field public comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;",
            ">;"
        }
    .end annotation
.end field

.field public dtStart:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public tzName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;",
            ">;"
        }
    .end annotation
.end field

.field public tzoffsetFrom:I

.field public tzoffsetTo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public toDst()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;-><init>()V

    .line 20
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;->tzoffsetTo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->setTzoffsetTo(J)V

    .line 21
    iget v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;->tzoffsetFrom:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->setTzoffsetFrom(J)V

    .line 22
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;->dtStart:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/TzProp;->dtStart:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->toTimeZoneDes()Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/Dst;->setDtStart(Lcom/alibaba/alimei/restfulapi/data/calendar/dst/TimeZoneDes;)V

    .line 25
    :cond_0
    return-object v0
.end method
