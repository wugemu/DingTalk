.class public Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "RevokeStatusModel.java"

# interfaces
.implements Lyd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFailedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mId:J

.field public mProcessCount:I

.field public mServerId:Ljava/lang/String;

.field public mStatus:I

.field public mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mId:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mServerId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mTotalCount:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mProcessCount:I

    .line 87
    const-class v0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 103
    const-wide/16 v0, 0x0

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
    .line 93
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mProcessCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 98
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
