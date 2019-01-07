.class final Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo$1;
.super Ljava/lang/Object;
.source "TrafficInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
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
        "Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo$1;->newArray(I)[Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficInfo;

    move-result-object v0

    return-object v0
.end method
