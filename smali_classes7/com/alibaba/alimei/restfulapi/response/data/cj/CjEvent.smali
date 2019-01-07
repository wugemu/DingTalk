.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;
.source "CjEvent.java"


# instance fields
.field public attendee:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public created:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public description:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

.field public dtEnd:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public dtStamp:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public dtStart:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public duration:Lcom/alibaba/alimei/restfulapi/response/data/cj/Duration;

.field public exRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Recur;",
            ">;"
        }
    .end annotation
.end field

.field public isException:Z

.field public isOccurrence:Z

.field public lastModified:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

.field public location:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

.field public organizer:Lcom/alibaba/alimei/restfulapi/response/data/cj/Organizer;

.field public priority:I

.field public rDate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/RDate;",
            ">;"
        }
    .end annotation
.end field

.field public rRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Recur;",
            ">;"
        }
    .end annotation
.end field

.field public rStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/RStatus;",
            ">;"
        }
    .end annotation
.end field

.field public recurid:Lcom/alibaba/alimei/restfulapi/response/data/cj/Recurid;

.field public related:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;",
            ">;"
        }
    .end annotation
.end field

.field public resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;",
            ">;"
        }
    .end annotation
.end field

.field public seq:I

.field public status:Ljava/lang/String;

.field public summary:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public toEvent()Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;-><init>()V

    .line 46
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/data/calendar/Event;
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->summary:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->summary:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

    iget-object v3, v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;->value:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->subject:Ljava/lang/String;

    .line 49
    :cond_0
    iget v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->seq:I

    iput v3, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->sequence:I

    .line 50
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->location:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->location:Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;

    iget-object v3, v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/Text;->value:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->location:Ljava/lang/String;

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->dtStart:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->dtStart:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->toMiliseconds()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->startTime:J

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->dtEnd:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

    if-eqz v3, :cond_3

    .line 57
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->dtEnd:Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;

    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;->toMiliseconds()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->endTime:J

    .line 59
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->organizer:Lcom/alibaba/alimei/restfulapi/response/data/cj/Organizer;

    if-eqz v3, :cond_4

    .line 60
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->organizer:Lcom/alibaba/alimei/restfulapi/response/data/cj/Organizer;

    iget-object v3, v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/Organizer;->address:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerEmail:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->organizer:Lcom/alibaba/alimei/restfulapi/response/data/cj/Organizer;

    iget-object v3, v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/Organizer;->commonName:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->organizerName:Ljava/lang/String;

    .line 63
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->extProperties:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->extProperties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 64
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->extProperties:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;

    iget-object v3, v3, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;->value:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->body:Ljava/lang/String;

    .line 66
    :cond_5
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->attendee:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->attendee:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->attendee:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v0, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjEvent;->attendee:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;

    .line 69
    .local v2, "theAttendee":Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;->toAttendee()Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v2    # "theAttendee":Lcom/alibaba/alimei/restfulapi/response/data/cj/Attendee;
    :cond_6
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/restfulapi/data/calendar/Event;->setAttendeeList(Ljava/util/List;)V

    .line 74
    .end local v0    # "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/calendar/EventAttendee;>;"
    :cond_7
    return-object v1
.end method
