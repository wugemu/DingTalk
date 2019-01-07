.class public Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UpdateSelfInfoCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UpdateSelfInfoCommand"


# instance fields
.field private accountName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->accountName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->email:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->accountName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->name:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->email:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    new-instance v0, Ltc;

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->email:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ltc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UpdateSelfInfoCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->mAccountName:Ljava/lang/String;

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
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateSelfInfoCommand;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
