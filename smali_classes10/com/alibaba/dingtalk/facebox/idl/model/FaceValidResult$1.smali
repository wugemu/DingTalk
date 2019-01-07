.class final Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult$1;
.super Ljava/lang/Object;
.source "FaceValidResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;
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
        "Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    .line 2091
    new-instance v0, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;-><init>(Landroid/os/Parcel;)V

    .line 88
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    .line 1096
    new-array v0, p1, [Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidResult;

    .line 88
    return-object v0
.end method
