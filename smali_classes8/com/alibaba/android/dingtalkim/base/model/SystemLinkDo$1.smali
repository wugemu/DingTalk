.class final Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo$1;
.super Ljava/lang/Object;
.source "SystemLinkDo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    .line 2039
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>(Landroid/os/Parcel;)V

    .line 37
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    .line 1043
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    .line 37
    return-object v0
.end method
