.class final Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject$1;
.super Ljava/lang/Object;
.source "CircleUserObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
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
        "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    .line 2185
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(Landroid/os/Parcel;)V

    .line 182
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    .line 1190
    new-array v0, p1, [Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 182
    return-object v0
.end method
