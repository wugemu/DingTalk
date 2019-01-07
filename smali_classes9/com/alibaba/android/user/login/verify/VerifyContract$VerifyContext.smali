.class public Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;
.super Ljava/lang/Object;
.source "VerifyContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/verify/VerifyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyContext"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public areaCode:Ljava/lang/String;

.field public isDeviceSecurity:Z

.field public oldUserFlag:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public tempCode:Ljava/lang/String;

.field public thirdPartyUserId:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public viaType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->oldUserFlag:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->thirdPartyUserId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->token:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->isDeviceSecurity:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->tempCode:Ljava/lang/String;

    .line 85
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->oldUserFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->thirdPartyUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->isDeviceSecurity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->tempCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
