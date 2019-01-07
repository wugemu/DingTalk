.class public Lcom/alibaba/alimei/sdk/model/SettingGroupModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "SettingGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/SettingGroupModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attachmentDownloadDir:Ljava/lang/String;

.field private mailShownType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/SettingGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->mailShownType:I

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->mailShownType:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->mailShownType:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->attachmentDownloadDir:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/SettingGroupModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/SettingGroupModel$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getAttachmentDownloadDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->attachmentDownloadDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMailShownType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->mailShownType:I

    return v0
.end method

.method public setAttachmentDownloadDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadDir"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->attachmentDownloadDir:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setMailShownType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->mailShownType:I

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->mailShownType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->attachmentDownloadDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    return-void
.end method
