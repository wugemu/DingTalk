.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;
.super Ljava/lang/Object;
.source "SpaceRenameCoFolderArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public coFolderConvId:Ljava/lang/String;

.field public coFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderConvId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;-><init>()V

    .line 35
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderConvId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
