.class public final Lgqa;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;Z)V
    .locals 1
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/os/Parcel;)Z
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 16
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
