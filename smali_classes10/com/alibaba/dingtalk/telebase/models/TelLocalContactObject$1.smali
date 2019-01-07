.class final Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject$1;
.super Ljava/lang/Object;
.source "TelLocalContactObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;
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
        "Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 60
    .line 2063
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;-><init>(Landroid/os/Parcel;)V

    .line 60
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 60
    .line 1068
    new-array v0, p1, [Lcom/alibaba/dingtalk/telebase/models/TelLocalContactObject;

    .line 60
    return-object v0
.end method
