.class public Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UpdateCalendarCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    new-instance v0, Laic;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->mAccountName:Ljava/lang/String;

    invoke-direct {v0, v1}, Laic;-><init>(Ljava/lang/String;)V

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : UpdateCalendarTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/task/update/command/UpdateCalendarCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 24
    return-void
.end method
