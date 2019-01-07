.class public Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UploadAvatarCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UploadAvatarCommand"


# instance fields
.field private avatarSize:I

.field private avatarUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarSize:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/command/UploadAvatarCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/command/UploadAvatarCommand$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;
    .param p2, "avatarSize"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 22
    iput p2, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarSize:I

    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    new-instance v0, Lte;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarUrl:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarSize:I

    invoke-direct {v0, v1, v2}, Lte;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UploadAvatarCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/alibaba/alimei/contact/command/UploadAvatarCommand;->avatarSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
