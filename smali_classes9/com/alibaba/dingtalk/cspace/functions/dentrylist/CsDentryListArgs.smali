.class public Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
.super Ljava/lang/Object;
.source "CsDentryListArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bizMode:I

.field private conversationName:Ljava/lang/String;

.field private csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field private dentryId:Ljava/lang/String;

.field private fromConversation:Z

.field private isAdmin:Z

.field private showUploadRemindDialog:Z

.field private spaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->spaceId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->dentryId:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    .line 73
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin:Z

    .line 75
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->fromConversation:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->conversationName:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lgqa;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->showUploadRemindDialog:Z

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;)V
    .locals 1
    .param p1, "that"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    .line 50
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->spaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->spaceId:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->dentryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->dentryId:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 58
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    .line 59
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin:Z

    .line 61
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->fromConversation:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->fromConversation:Z

    .line 62
    iget-object v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->conversationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->conversationName:Ljava/lang/String;

    .line 64
    iget-boolean v0, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->showUploadRemindDialog:Z

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->showUploadRemindDialog:Z

    goto :goto_0
.end method

.method public static create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;)Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    .locals 1
    .param p0, "that"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    .prologue
    .line 43
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getBizMode()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    return v0
.end method

.method public getConversationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->conversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    return-object v0
.end method

.method public getDentryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->dentryId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin:Z

    return v0
.end method

.method public isFromConversation()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->fromConversation:Z

    return v0
.end method

.method public isShowUploadRemindDialog()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->showUploadRemindDialog:Z

    return v0
.end method

.method public setAdmin(Z)V
    .locals 0
    .param p1, "admin"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin:Z

    .line 154
    return-void
.end method

.method public setBizMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    .line 146
    return-void
.end method

.method public setConversationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->conversationName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setCsDentry(Lcom/alibaba/dingtalk/cspace/model/CsDentry;)V
    .locals 0
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 138
    return-void
.end method

.method public setDentryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dentryId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->dentryId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setFromConversation(Z)V
    .locals 0
    .param p1, "fromConversation"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->fromConversation:Z

    .line 162
    return-void
.end method

.method public setShowUploadRemindDialog(Z)V
    .locals 0
    .param p1, "showUploadRemindDialog"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->showUploadRemindDialog:Z

    .line 178
    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->spaceId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->dentryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->csDentry:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->bizMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isAdmin:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 90
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->fromConversation:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->conversationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->showUploadRemindDialog:Z

    invoke-static {p1, v0}, Lgqa;->a(Landroid/os/Parcel;Z)V

    .line 94
    return-void
.end method
