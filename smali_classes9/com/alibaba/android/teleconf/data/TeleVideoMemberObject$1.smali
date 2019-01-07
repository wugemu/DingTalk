.class final Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$1;
.super Ljava/lang/Object;
.source "TeleVideoMemberObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
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
        "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 624
    .line 2627
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;-><init>(Landroid/os/Parcel;)V

    .line 624
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 624
    .line 1632
    new-array v0, p1, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 624
    return-object v0
.end method
