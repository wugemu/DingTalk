.class public Lcom/alibaba/alimei/sdk/model/MailCalendarModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "MailCalendarModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailCalendarModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allDayEvent:Z

.field public attendeeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public body:Ljava/lang/String;

.field public endTime:J

.field public eventStatus:I

.field public location:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public organizerEmail:Ljava/lang/String;

.field public organizerName:Ljava/lang/String;

.field public startTime:J

.field public subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailCalendarModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->body:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->body:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->allDayEvent:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerEmail:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->subject:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->method:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->body:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->attendeeList:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->attendeeList:Ljava/util/List;

    const-class v1, Lcom/alibaba/alimei/sdk/model/Attendee;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/MailCalendarModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/MailCalendarModel$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public isResponsableCalendar(J)Z
    .locals 5
    .param p1, "responseTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 109
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->method:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "request"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 112
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->allDayEvent:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->attendeeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 128
    return-void
.end method
