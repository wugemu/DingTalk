.class final Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo$1;
.super Ljava/lang/Object;
.source "LuckyTimeRedPacketsRemindDo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    .line 2027
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;-><init>(Landroid/os/Parcel;)V

    .line 25
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    .line 1031
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    .line 25
    return-object v0
.end method
