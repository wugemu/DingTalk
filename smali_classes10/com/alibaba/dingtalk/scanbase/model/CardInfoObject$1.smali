.class final Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject$1;
.super Ljava/lang/Object;
.source "CardInfoObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
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
        "Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject$1;->newArray(I)[Lcom/alibaba/dingtalk/scanbase/model/CardInfoObject;

    move-result-object v0

    return-object v0
.end method
