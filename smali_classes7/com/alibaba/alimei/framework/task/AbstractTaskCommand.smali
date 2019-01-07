.class public abstract Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.super Ljava/lang/Object;
.source "AbstractTaskCommand.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAccountName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->mAccountName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract buildCommandTask(Landroid/content/Context;)Lyq;
.end method

.method protected buildFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->mAccountName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final cancelCommand()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->genBizUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->cancelCommandByBizUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final executeCommand()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alibaba/alimei/framework/AlimeiService;->sendTaskCommand(Landroid/content/Context;Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;)V

    .line 66
    return-void
.end method

.method public abstract genBizUUID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected final getBooleanValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 85
    if-ne p1, v0, :cond_0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getIntValue(Z)I
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeToParcelParent(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    return-void
.end method
