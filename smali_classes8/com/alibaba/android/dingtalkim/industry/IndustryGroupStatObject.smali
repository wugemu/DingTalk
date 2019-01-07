.class public Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;
.super Ljava/lang/Object;
.source "IndustryGroupStatObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activeUserCount:I

.field public bossCount:I

.field public encryptCid:Ljava/lang/String;

.field public industryCount:I

.field public industryUserCount:I

.field public orgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->encryptCid:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->orgCount:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->bossCount:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->industryCount:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->activeUserCount:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->industryUserCount:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ldmr;)V
    .locals 2
    .param p1, "model"    # Ldmr;

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    .line 21
    iget-object v0, p1, Ldmr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->encryptCid:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Ldmr;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 22
    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->orgCount:I

    .line 23
    iget-object v0, p1, Ldmr;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 23
    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->bossCount:I

    .line 24
    iget-object v0, p1, Ldmr;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 24
    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->industryCount:I

    .line 25
    iget-object v0, p1, Ldmr;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 25
    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->activeUserCount:I

    .line 26
    iget-object v0, p1, Ldmr;->f:Ljava/lang/Integer;

    .line 5033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 26
    iput v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->industryUserCount:I

    .line 28
    :cond_0
    return-void
.end method

.method public static fromIDL(Ldmr;)Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;
    .locals 1
    .param p0, "model"    # Ldmr;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;-><init>(Ldmr;)V

    .line 43
    .local v0, "object":Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->encryptCid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->orgCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->bossCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->industryUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->activeUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->industryUserCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
