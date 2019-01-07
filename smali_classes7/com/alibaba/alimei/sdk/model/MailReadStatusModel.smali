.class public Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "MailReadStatusModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hasUnknowStatus:Z

.field public mailServerId:Ljava/lang/String;

.field public totalToCount:I

.field public unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->mailServerId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->totalToCount:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->hasUnknowStatus:Z

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/MailReadStatusModel$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->mailServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->totalToCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->hasUnknowStatus:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
