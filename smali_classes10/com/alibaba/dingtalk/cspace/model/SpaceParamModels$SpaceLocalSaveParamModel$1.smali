.class final Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel$1;
.super Ljava/lang/Object;
.source "SpaceParamModels.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;
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
        "Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    .line 1166
    new-array v0, p1, [Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceLocalSaveParamModel;

    .line 158
    return-object v0
.end method
