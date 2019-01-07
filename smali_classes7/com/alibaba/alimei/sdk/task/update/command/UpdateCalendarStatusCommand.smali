.class public Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UpdateCalendarStatusCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCalendarId:Ljava/lang/String;

.field mMailId:Ljava/lang/String;

.field oldStatus:I

.field status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mMailId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mCalendarId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->status:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "calendarId"    # Ljava/lang/String;
    .param p3, "oldStatus"    # I
    .param p4, "status"    # I

    .prologue
    .line 20
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mMailId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mCalendarId:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->status:I

    .line 24
    iput p3, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->oldStatus:I

    .line 25
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 49
    new-instance v0, Laib;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mMailId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mCalendarId:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->oldStatus:I

    iget v5, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->status:I

    invoke-direct/range {v0 .. v5}, Laib;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mMailId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mCalendarId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mMailId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->mCalendarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarStatusCommand;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
