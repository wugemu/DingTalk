.class public Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;
.super Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
.source "InnerSyncCalendarResult.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;->items:Ljava/util/List;

    .line 18
    return-void
.end method
