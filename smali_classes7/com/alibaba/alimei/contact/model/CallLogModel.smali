.class public Lcom/alibaba/alimei/contact/model/CallLogModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "CallLogModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/model/CallLogModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public displayName:Ljava/lang/String;

.field public duration:J

.field public id:J

.field public isNew:Z

.field public isRead:Z

.field public phoneNumber:Ljava/lang/String;

.field public startMillis:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/alibaba/alimei/contact/model/CallLogModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/CallLogModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/model/CallLogModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->id:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->displayName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->phoneNumber:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->startMillis:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->duration:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->type:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->isNew:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->isRead:Z

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    :cond_1
    move v1, v2

    .line 68
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/model/CallLogModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/model/CallLogModel$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/model/CallLogModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/contact/db/entry/CallLog;)V
    .locals 6
    .param p1, "log"    # Lcom/alibaba/alimei/contact/db/entry/CallLog;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 50
    iget-wide v4, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->_id:J

    iput-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->id:J

    .line 51
    iget-object v0, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->displayName:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->phone_number:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->phoneNumber:Ljava/lang/String;

    .line 53
    iget-wide v4, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->start_time:J

    iput-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->startMillis:J

    .line 54
    iget-wide v4, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->duration:J

    iput-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->duration:J

    .line 55
    iget v0, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->type:I

    iput v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->type:I

    .line 56
    iget v0, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->newFlag:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->isNew:Z

    .line 57
    iget v0, p1, Lcom/alibaba/alimei/contact/db/entry/CallLog;->is_read:I

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->isRead:Z

    .line 58
    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1
.end method


# virtual methods
.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->id:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    iget-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->startMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-wide v4, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->duration:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-boolean v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->isNew:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-boolean v0, p0, Lcom/alibaba/alimei/contact/model/CallLogModel;->isRead:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    :cond_1
    move v1, v2

    .line 37
    goto :goto_1
.end method
