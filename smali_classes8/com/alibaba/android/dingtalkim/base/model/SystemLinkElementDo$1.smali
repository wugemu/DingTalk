.class final Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo$1;
.super Ljava/lang/Object;
.source "SystemLinkElementDo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .line 2043
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>(Landroid/os/Parcel;)V

    .line 41
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .line 1047
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 41
    return-object v0
.end method
