.class public Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "MailUidModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEmail:Ljava/lang/String;

.field public mId:J

.field public mLastReqMillis:J

.field public mUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mId:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mEmail:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mUid:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mLastReqMillis:J

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/mail/avatar/model/MailUidModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/mail/avatar/model/MailUidModel$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mLastReqMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    return-void
.end method
