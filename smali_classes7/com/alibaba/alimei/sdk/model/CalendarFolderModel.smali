.class public Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;
.super Lcom/alibaba/alimei/sdk/model/FolderModel;
.source "CalendarFolderModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public folderAcl:Ljava/lang/String;

.field public isSharedAccount:Z

.field public ownerAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(J)V

    .line 13
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(Landroid/os/Parcel;)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->ownerAccount:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->folderAcl:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->isSharedAccount:Z

    .line 44
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->ownerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->folderAcl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->isSharedAccount:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
