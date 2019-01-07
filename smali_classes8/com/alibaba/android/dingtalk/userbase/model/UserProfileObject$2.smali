.class final Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$2;
.super Ljava/lang/Object;
.source "UserProfileObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    .line 2647
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>(Landroid/os/Parcel;)V

    .line 644
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    .line 1652
    new-array v0, p1, [Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 644
    return-object v0
.end method
