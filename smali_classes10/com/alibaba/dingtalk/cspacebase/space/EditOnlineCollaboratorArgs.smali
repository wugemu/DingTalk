.class public Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
.super Ljava/lang/Object;
.source "EditOnlineCollaboratorArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:Ljava/lang/String;

.field public convId:Ljava/lang/String;

.field public fileId:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public msgId:Ljava/lang/String;

.field public orgId:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;

.field public spaceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->orgId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->action:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->identifier:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    .locals 1
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    new-instance p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;-><init>()V

    .line 54
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string/jumbo v0, "com.alibaba.dingtalk.cspace.editOnlineCollaborator"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->action:Ljava/lang/String;

    .line 57
    :cond_1
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->orgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
