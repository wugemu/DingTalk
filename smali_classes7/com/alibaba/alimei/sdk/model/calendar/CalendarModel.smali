.class public Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "CalendarModel.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountName:Ljava/lang/String;

.field public canWrite:Z

.field public displayName:Ljava/lang/String;

.field public id:J

.field public isSystem:Z

.field public sharedAccount:Z

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->accountName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->displayName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->sharedAccount:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->visible:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->isSystem:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->canWrite:Z

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->sharedAccount:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->visible:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->isSystem:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->canWrite:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
