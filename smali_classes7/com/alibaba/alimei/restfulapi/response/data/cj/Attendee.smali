.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CalAddress;
.source "Attendee.java"


# instance fields
.field public cuType:Ljava/lang/String;

.field public delegatedFrom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public delegatedTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public member:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public partStat:Ljava/lang/String;

.field public role:Ljava/lang/String;

.field public rsvp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CalAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public toAttendee()Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;-><init>()V

    .line 38
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->address:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;->commonName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->alias:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;->role:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->role:Ljava/lang/String;

    .line 41
    iget-boolean v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;->rsvp:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->rsvp:Z

    .line 42
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;->partStat:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;->status:Ljava/lang/String;

    .line 44
    return-object v0
.end method
