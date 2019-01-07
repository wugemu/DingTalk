.class public Lcom/alibaba/alimei/sdk/model/AttendeeModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "AttendeeModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttendeeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attendeeEmail:Ljava/lang/String;

.field public attendeeName:Ljava/lang/String;

.field public attendeeRelationship:I

.field public attendeeStatus:I

.field public attendeeType:I

.field public eventId:J

.field public id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AttendeeModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->id:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->eventId:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/AttendeeModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/AttendeeModel$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/AttendeeModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->id:J

    return-wide v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    return-object v0
.end method

.method public isOptionType()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 106
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequiredType()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 102
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->eventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
