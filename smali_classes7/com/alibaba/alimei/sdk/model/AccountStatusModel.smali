.class public Lcom/alibaba/alimei/sdk/model/AccountStatusModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "AccountStatusModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AccountStatusModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allUnreadCount:J

.field public hasNewMail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AccountStatusModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AccountStatusModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->hasNewMail:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->allUnreadCount:J

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/AccountStatusModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/AccountStatusModel$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;-><init>(Landroid/os/Parcel;)V

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
    .line 29
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->hasNewMail:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->allUnreadCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 31
    return-void
.end method
