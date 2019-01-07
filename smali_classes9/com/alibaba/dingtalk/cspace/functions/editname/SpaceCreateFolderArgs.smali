.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
.super Ljava/lang/Object;
.source "SpaceCreateFolderArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authFlag:Ljava/lang/String;

.field public parentPath:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->spaceId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->parentPath:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->authFlag:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;-><init>()V

    .line 38
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;->authFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
