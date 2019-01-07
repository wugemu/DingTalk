.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
.super Ljava/lang/Object;
.source "SpaceCreateFileArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public convId:Ljava/lang/String;

.field public fileTypeId:Ljava/lang/String;

.field public orgId:J

.field public parentId:Ljava/lang/String;

.field public parentPath:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;

.field public spaceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->fileTypeId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceType:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentPath:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->orgId:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->convId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;-><init>()V

    .line 50
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->fileTypeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->spaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;->convId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
