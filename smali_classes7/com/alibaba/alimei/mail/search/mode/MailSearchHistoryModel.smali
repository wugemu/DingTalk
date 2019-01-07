.class public Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "MailSearchHistoryModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountKey:J

.field public extend:Ljava/lang/String;

.field public id:J

.field public lastVisitTime:J

.field public searchKey:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->id:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->accountKey:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->lastVisitTime:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->extend:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->id:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->accountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->lastVisitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->extend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return-void
.end method
