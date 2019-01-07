.class final Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel$1;
.super Ljava/lang/Object;
.source "SNVideoContentModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;
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
        "Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    .line 2146
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;-><init>(Landroid/os/Parcel;)V

    .line 143
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    .line 1151
    new-array v0, p1, [Lcom/alibaba/android/dingtalk/circle/idl/models/SNVideoContentModel;

    .line 143
    return-object v0
.end method
