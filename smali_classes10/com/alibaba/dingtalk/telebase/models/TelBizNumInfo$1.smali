.class final Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo$1;
.super Ljava/lang/Object;
.source "TelBizNumInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 84
    .line 2087
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;-><init>(Landroid/os/Parcel;)V

    .line 84
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 84
    .line 1092
    new-array v0, p1, [Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 84
    return-object v0
.end method
