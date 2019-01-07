.class public Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;
.super Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;
.source "FetchCalendarCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;",
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
    .line 70
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->buildFromParcel(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->accountId:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->uid:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->folderId:J

    .line 42
    return-void
.end method

.method public constructor <init>(Lpt;)V
    .locals 2
    .param p1, "model"    # Lpt;

    .prologue
    .line 29
    iget-object v0, p1, Lpt;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/framework/task/AbstractTaskCommand;-><init>(Ljava/lang/String;)V

    .line 30
    iget-wide v0, p1, Lpt;->b:J

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->accountId:J

    .line 31
    iget-wide v0, p1, Lpt;->c:J

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->uid:J

    .line 32
    iget-wide v0, p1, Lpt;->d:J

    iput-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->folderId:J

    .line 33
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
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->task:Lyq;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lqq;

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->accountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->uid:J

    iget-wide v6, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->folderId:J

    invoke-direct/range {v0 .. v7}, Lqq;-><init>(Ljava/lang/String;JJJ)V

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->task:Lyq;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->task:Lyq;

    return-object v0
.end method

.method public genBizUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->bizId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "FetchCalendar-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->folderId:J

    .line 56
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->bizId:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->bizId:Ljava/lang/String;

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
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->writeToParcelParent(Landroid/os/Parcel;I)V

    .line 65
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->folderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void
.end method
