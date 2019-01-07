.class public Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "ChangeImapMailFlagCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bizId:Ljava/lang/String;

.field private mFlag:Z

.field private mMailServerId:Ljava/lang/String;

.field private task:Lyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mMailServerId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mFlag:Z

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mMailServerId:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mFlag:Z

    .line 26
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
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->task:Lyq;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lqn;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mMailServerId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mFlag:Z

    invoke-direct {v0, v1, v2, v3}, Lqn;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->task:Lyq;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->bizId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mAccountName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mMailServerId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "-ImapChangeFlag"

    aput-object v2, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->bizId:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mMailServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->mFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
