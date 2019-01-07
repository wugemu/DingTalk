.class final Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs$1;
.super Ljava/lang/Object;
.source "OnlineEditStatisticArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;
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
        "Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    .line 2051
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;-><init>(Landroid/os/Parcel;)V

    .line 48
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    .line 1056
    new-array v0, p1, [Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .line 48
    return-object v0
.end method
