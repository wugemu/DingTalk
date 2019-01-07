.class final Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType$1;
.super Ljava/lang/Object;
.source "UserInfoItemObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;
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
        "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 132
    .line 2135
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->values()[Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    .line 132
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    .line 1140
    new-array v0, p1, [Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 132
    return-object v0
.end method
