.class public Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
.super Ljava/lang/Object;
.source "DentryListPageArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private batchSaveFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private conversationName:Ljava/lang/String;

.field private csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field private dentryId:Ljava/lang/String;

.field private fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

.field private fromConversation:Z

.field private isAdmin:Z

.field private mode:I

.field private rePathDentryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field

.field private saveFilePath:Ljava/lang/String;

.field private showUploadRemindDialog:Z

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->spaceId:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->dentryId:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    .line 94
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin:Z

    .line 96
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fromConversation:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->conversationName:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->showUploadRemindDialog:Z

    .line 101
    const-class v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->rePathDentryList:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->saveFilePath:Ljava/lang/String;

    .line 103
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->batchSaveFileList:Ljava/util/ArrayList;

    .line 104
    const-class v0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;)V
    .locals 1
    .param p1, "that"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    .line 66
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->spaceId:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->dentryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->dentryId:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 74
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    .line 75
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin:Z

    .line 77
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fromConversation:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fromConversation:Z

    .line 78
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->conversationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->conversationName:Ljava/lang/String;

    .line 80
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->showUploadRemindDialog:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->showUploadRemindDialog:Z

    .line 82
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->rePathDentryList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->rePathDentryList:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->saveFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->saveFilePath:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->batchSaveFileList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->batchSaveFileList:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    goto :goto_0
.end method

.method public static create()Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;)Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    .locals 1
    .param p0, "that"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;-><init>(Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getBatchSaveFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->batchSaveFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConversationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->conversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    return-object v0
.end method

.method public getDentryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->dentryId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSendParam()Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    return v0
.end method

.method public getRePathDentryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->rePathDentryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->saveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin:Z

    return v0
.end method

.method public isFromConversation()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fromConversation:Z

    return v0
.end method

.method public isShowUploadRemindDialog()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->showUploadRemindDialog:Z

    return v0
.end method

.method public setAdmin(Z)V
    .locals 0
    .param p1, "admin"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin:Z

    .line 185
    return-void
.end method

.method public setBatchSaveFileList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "batchSaveFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->batchSaveFileList:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method public setConversationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->conversationName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCsDentry(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V
    .locals 0
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 169
    return-void
.end method

.method public setDentryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dentryId"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->dentryId:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setFileSendParam(Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V
    .locals 0
    .param p1, "fileSendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .line 241
    return-void
.end method

.method public setFromConversation(Z)V
    .locals 0
    .param p1, "fromConversation"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fromConversation:Z

    .line 193
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    .line 177
    return-void
.end method

.method public setRePathDentryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "rePathDentryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->rePathDentryList:Ljava/util/ArrayList;

    .line 217
    return-void
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "saveFilePath"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->saveFilePath:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setShowUploadRemindDialog(Z)V
    .locals 0
    .param p1, "showUploadRemindDialog"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->showUploadRemindDialog:Z

    .line 209
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->spaceId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->dentryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->isAdmin:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 116
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fromConversation:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->conversationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->showUploadRemindDialog:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->rePathDentryList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->saveFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->batchSaveFileList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->fileSendParam:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    return-void
.end method
