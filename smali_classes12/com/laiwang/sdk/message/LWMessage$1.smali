.class final Lcom/laiwang/sdk/message/LWMessage$1;
.super Ljava/lang/Object;
.source "LWMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/sdk/message/LWMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/laiwang/sdk/message/LWMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1
    .line 1056
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/laiwang/sdk/message/LWMessage;-><init>(Landroid/os/Parcel;Lcom/laiwang/sdk/message/LWMessage;)V

    .line 1
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    .line 1060
    new-array v0, p1, [Lcom/laiwang/sdk/message/LWMessage;

    .line 1
    return-object v0
.end method
