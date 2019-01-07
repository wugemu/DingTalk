.class public Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "UpdateBlackContactCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UpdateBlackContactCommand"


# instance fields
.field private action:I

.field private emailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 25
    iput p1, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->action:I

    .line 26
    iput-object p2, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->emailList:Ljava/util/List;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->action:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->emailList:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->emailList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;-><init>(Landroid/os/Parcel;)V

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
    .line 31
    new-instance v0, Ltb;

    iget v1, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->action:I

    iget-object v2, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->emailList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Ltb;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UpdateBlackContactCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 42
    iget v0, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/contact/command/UpdateBlackContactCommand;->emailList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 45
    return-void
.end method
