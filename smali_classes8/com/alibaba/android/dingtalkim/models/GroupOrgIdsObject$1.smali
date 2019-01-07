.class final Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject$1;
.super Ljava/lang/Object;
.source "GroupOrgIdsObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;
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
        "Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    .line 2083
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;-><init>(Landroid/os/Parcel;)V

    .line 81
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    .line 1086
    new-array v0, p1, [Lcom/alibaba/android/dingtalkim/models/GroupOrgIdsObject;

    .line 81
    return-object v0
.end method
