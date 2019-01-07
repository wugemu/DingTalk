.class final Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceRePathParamModel$1;
.super Ljava/lang/Object;
.source "SpaceParamModels.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceRePathParamModel;
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
        "Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceRePathParamModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    .line 2131
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceRePathParamModel;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceRePathParamModel;-><init>(Landroid/os/Parcel;)V

    .line 128
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    .line 1136
    new-array v0, p1, [Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceRePathParamModel;

    .line 128
    return-object v0
.end method
