.class public Lcom/alibaba/alimei/cspace/model/DentryVersionModel;
.super Lcom/alibaba/alimei/cspace/model/DentryBaseModel;
.source "DentryVersionModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryVersionModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dentryId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryVersionModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cspace/model/DentryBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->dentryId:J

    .line 55
    return-void
.end method


# virtual methods
.method public getDentryId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->dentryId:J

    return-wide v0
.end method

.method public setDentryId(J)V
    .locals 1
    .param p1, "dentryId"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->dentryId:J

    .line 25
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->modifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->creatorEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->creatorNick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->modifierEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->modifierNick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->versionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->localUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->tempUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->dirty:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->downloadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-wide v0, p0, Lcom/alibaba/alimei/cspace/model/DentryVersionModel;->dentryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    return-void
.end method
