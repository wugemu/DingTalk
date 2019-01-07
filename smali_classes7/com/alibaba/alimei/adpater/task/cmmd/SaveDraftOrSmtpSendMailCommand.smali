.class public Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "SaveDraftOrSmtpSendMailCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isResetTryMax:Z

.field private mAccountId:J

.field private mCopySentMail:Z

.field private mIsDraft:Z

.field private mMessageId:J

.field private mSourceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mMessageId:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountId:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mSourceId:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mIsDraft:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->isResetTryMax:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mCopySentMail:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJZZZ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "messageId"    # J
    .param p6, "sourceId"    # J
    .param p8, "isDraft"    # Z
    .param p9, "isResetTryMax"    # Z
    .param p10, "copySentMail"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 26
    iput-wide p4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mMessageId:J

    .line 27
    iput-wide p2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountId:J

    .line 28
    iput-wide p6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mSourceId:J

    .line 29
    iput-boolean p8, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mIsDraft:Z

    .line 30
    iput-boolean p9, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->isResetTryMax:Z

    .line 31
    iput-boolean p10, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mCopySentMail:Z

    .line 32
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    iget-boolean v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mIsDraft:Z

    if-nez v1, :cond_1

    .line 59
    new-instance v0, Lqw;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mMessageId:J

    iget-wide v6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mSourceId:J

    invoke-direct/range {v0 .. v7}, Lqw;-><init>(Ljava/lang/String;JJJ)V

    .line 60
    .local v0, "smtpSendTask":Lqw;
    iget-boolean v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->isResetTryMax:Z

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 1109
    iput v1, v0, Lyr;->y:I

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mCopySentMail:Z

    .line 2057
    iput-boolean v1, v0, Lqw;->q:Z

    .line 66
    .end local v0    # "smtpSendTask":Lqw;
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lqv;

    iget-object v3, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountId:J

    iget-wide v6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mMessageId:J

    iget-wide v8, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mSourceId:J

    invoke-direct/range {v2 .. v9}, Lqv;-><init>(Ljava/lang/String;JJJ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "SmtpSendMailCommand"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mMessageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    iget-boolean v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mIsDraft:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "uuid":Ljava/lang/String;
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 48
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mSourceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mIsDraft:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->isResetTryMax:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->mCopySentMail:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/SaveDraftOrSmtpSendMailCommand;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
