.class final Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject$1;
.super Ljava/lang/Object;
.source "CheckInRemindCorpObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;
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
        "Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .line 2030
    new-instance v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;-><init>(Landroid/os/Parcel;)V

    .line 27
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .line 1035
    new-array v0, p1, [Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;

    .line 27
    return-object v0
.end method
