.class public Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UpdateUserSelfContactCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UpdateUserSelfContactCommand"


# instance fields
.field private accountName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->accountName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->email:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "_name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->accountName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->name:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->email:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->accountName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->name:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->email:Ljava/lang/String;

    .line 36
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
    .line 40
    new-instance v0, Ltd;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->accountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ltd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UpdateUserSelfContactCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":2"

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
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateUserSelfContactCommand;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
