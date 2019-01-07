.class final Lcom/alibaba/android/user/model/OrgInviteObject$1;
.super Ljava/lang/Object;
.source "OrgInviteObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/model/OrgInviteObject;
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
        "Lcom/alibaba/android/user/model/OrgInviteObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    .line 2144
    invoke-static {p1}, Lcom/alibaba/android/user/model/OrgInviteObject;->access$000(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    .line 1149
    new-array v0, p1, [Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 141
    return-object v0
.end method
