.class public Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "FetchMailEmlCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountId:J

.field private bizId:Ljava/lang/String;

.field private folderId:J

.field private task:Lyq;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->accountId:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->uid:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->folderId:J

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "uid"    # J
    .param p6, "folderId"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 36
    iput-wide p2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->accountId:J

    .line 37
    iput-wide p4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->uid:J

    .line 38
    iput-wide p6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->folderId:J

    .line 39
    return-void
.end method

.method public constructor <init>(Lpv;)V
    .locals 2
    .param p1, "model"    # Lpv;

    .prologue
    .line 28
    iget-object v0, p1, Lpv;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 29
    iget-wide v0, p1, Lpv;->b:J

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->accountId:J

    .line 30
    iget-wide v0, p1, Lpv;->c:J

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->uid:J

    .line 31
    iget-wide v0, p1, Lpv;->d:J

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->folderId:J

    .line 32
    return-void
.end method


# virtual methods
.method public buildCommandTask(Landroid/content/Context;)Lyq;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->task:Lyq;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lqr;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->accountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->uid:J

    iget-wide v6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->folderId:J

    invoke-direct/range {v0 .. v7}, Lqr;-><init>(Ljava/lang/String;JJJ)V

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->task:Lyq;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->bizId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->folderId:J

    .line 62
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->bizId:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 71
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchMailEmlCommand;->folderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return-void
.end method
