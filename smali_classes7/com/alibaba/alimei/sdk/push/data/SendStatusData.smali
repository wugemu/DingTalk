.class public Lcom/alibaba/alimei/sdk/push/data/SendStatusData;
.super Lcom/alibaba/alimei/sdk/push/data/PushData;
.source "SendStatusData.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/SendStatusData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/alimei/sdk/push/data/SendStatusData$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/push/data/SendStatusData$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 13
    const-string/jumbo v0, "700"

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;->setType(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;->setType(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/push/data/SendStatusData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/push/data/SendStatusData$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    return-void
.end method
