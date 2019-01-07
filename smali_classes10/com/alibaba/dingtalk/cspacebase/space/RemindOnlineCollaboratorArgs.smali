.class public Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
.super Ljava/lang/Object;
.source "RemindOnlineCollaboratorArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public conversation:Lcom/alibaba/wukong/im/Conversation;

.field public conversationId:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public msgId:Ljava/lang/String;

.field public objectContainerId:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public objectType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversation:Lcom/alibaba/wukong/im/Conversation;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversationId:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectContainerId:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static fix(Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
    .locals 0
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    new-instance p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    .end local p0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;-><init>()V

    .line 54
    .restart local p0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectContainerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
