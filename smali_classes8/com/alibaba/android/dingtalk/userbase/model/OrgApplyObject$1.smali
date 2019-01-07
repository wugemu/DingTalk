.class final Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$1;
.super Ljava/lang/Object;
.source "OrgApplyObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .line 2062
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->access$000(Landroid/os/Parcel;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .line 1067
    new-array v0, p1, [Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 59
    return-object v0
.end method
