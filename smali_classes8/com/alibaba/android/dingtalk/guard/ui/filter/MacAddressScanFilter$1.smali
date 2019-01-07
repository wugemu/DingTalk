.class final Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter$1;
.super Ljava/lang/Object;
.source "MacAddressScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .line 2040
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;-><init>(Landroid/os/Parcel;)V

    .line 38
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .line 1044
    new-array v0, p1, [Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;

    .line 38
    return-object v0
.end method
