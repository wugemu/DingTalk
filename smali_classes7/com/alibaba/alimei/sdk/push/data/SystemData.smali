.class public Lcom/alibaba/alimei/sdk/push/data/SystemData;
.super Lcom/alibaba/alimei/sdk/push/data/PushData;
.source "SystemData.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/push/data/SystemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_UPLOAD:Ljava/lang/String; = "100"

.field public static final REMOTE_LOGOUT:Ljava/lang/String; = "400"

.field public static final SYSTEM_TIP:Ljava/lang/String; = "300"

.field public static final UPDATE_TYPE:Ljava/lang/String; = "web"

.field public static final VERSION_UPDATE:Ljava/lang/String; = "200"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/alimei/sdk/push/data/SystemData$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/push/data/SystemData$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/push/data/SystemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/push/data/SystemData;->setType(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/push/data/SystemData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/push/data/SystemData$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/push/data/SystemData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/push/data/SystemData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    return-void
.end method
