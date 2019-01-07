.class final Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo$1;
.super Ljava/lang/Object;
.source "AlipayRedPacketsMessageBodyDo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .line 2026
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;-><init>(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .line 1030
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    .line 24
    return-object v0
.end method
