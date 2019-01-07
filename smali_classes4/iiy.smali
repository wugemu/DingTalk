.class public abstract Liiy;
.super Ljava/lang/Object;
.source "BQCScanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected c:[B

.field protected d:Landroid/hardware/Camera;

.field protected e:Landroid/hardware/Camera$Size;

.field protected f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Liiy;, "Liiy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BLandroid/hardware/Camera;Landroid/hardware/Camera$Size;I)V
    .locals 0
    .param p1, "mData"    # [B
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p4, "previewFormat"    # I

    .prologue
    .line 16
    .local p0, "this":Liiy;, "Liiy<TT;>;"
    iput-object p1, p0, Liiy;->c:[B

    .line 17
    iput-object p2, p0, Liiy;->d:Landroid/hardware/Camera;

    .line 18
    iput-object p3, p0, Liiy;->e:Landroid/hardware/Camera$Size;

    .line 19
    iput p4, p0, Liiy;->f:I

    .line 20
    return-void
.end method
