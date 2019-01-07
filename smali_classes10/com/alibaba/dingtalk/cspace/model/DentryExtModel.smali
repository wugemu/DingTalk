.class public Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
.super Ljava/lang/Object;
.source "DentryExtModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE:B = 0x0t

.field private static final TRUE:B = 0x1t


# instance fields
.field private canReleaseEditLock:Z

.field private dentryId:Ljava/lang/String;

.field private dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private editor:J

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->spaceId:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->editor:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock:Z

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->spaceId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    new-instance p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;-><init>()V

    .line 101
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public canReleaseEditLock()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getDentryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryId:Ljava/lang/String;

    return-object v0
.end method

.method public getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method public getEditor()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->editor:J

    return-wide v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCanReleaseEditLock(Z)V
    .locals 0
    .param p1, "canReleaseEditLock"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock:Z

    .line 93
    return-void
.end method

.method public setDentryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dentryId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 77
    return-void
.end method

.method public setEditor(J)V
    .locals 1
    .param p1, "editor"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->editor:J

    .line 85
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->spaceId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->dentryModel:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->editor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
