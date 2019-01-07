.class public Lcom/alibaba/alimei/framework/model/AccountSettingModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "AccountSettingModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public autoViewImageType:I

.field public downloadContentType:I

.field public forwardWithAttachment:Z

.field public isAudioEnnable:Z

.field public notifyCalendarOn:Z

.field public notifyCallOn:Z

.field public notifyMailOn:Z

.field public senderAddress:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/alibaba/alimei/framework/model/AccountSettingModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->signature:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->autoViewImageType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->forwardWithAttachment:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyMailOn:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyCalendarOn:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyCallOn:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->isAudioEnnable:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->senderAddress:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/framework/model/AccountSettingModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/framework/model/AccountSettingModel$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->autoViewImageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->forwardWithAttachment:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyMailOn:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyCalendarOn:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyCallOn:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->isAudioEnnable:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->senderAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
