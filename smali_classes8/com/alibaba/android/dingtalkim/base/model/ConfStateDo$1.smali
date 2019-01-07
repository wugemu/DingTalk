.class final Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo$1;
.super Ljava/lang/Object;
.source "ConfStateDo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    .line 2056
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;-><init>(Landroid/os/Parcel;)V

    .line 54
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    .line 1060
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    .line 54
    return-object v0
.end method
