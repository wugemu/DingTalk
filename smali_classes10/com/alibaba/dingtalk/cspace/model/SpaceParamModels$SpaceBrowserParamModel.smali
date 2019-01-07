.class public Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel;
.super Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;
.source "SpaceParamModels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceBrowserParamModel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public showNotifyDialogWhenUpload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel;->showNotifyDialogWhenUpload:Z

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/model/SpaceBaseParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceParamModels$SpaceBrowserParamModel;->showNotifyDialogWhenUpload:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
