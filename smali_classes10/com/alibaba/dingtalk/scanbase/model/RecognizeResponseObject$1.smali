.class final Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject$1;
.super Ljava/lang/Object;
.source "RecognizeResponseObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;
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
        "Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    new-array v0, p1, [Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject$1;->newArray(I)[Lcom/alibaba/dingtalk/scanbase/model/RecognizeResponseObject;

    move-result-object v0

    return-object v0
.end method
