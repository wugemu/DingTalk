.class public Lcom/alipay/mobile/mascanengine/MaScanResult;
.super Lcom/alipay/mobile/bqcscanservice/c;
.source "MaScanResult.java"


# instance fields
.field public bitErrors:I

.field public ecLevel:C

.field public rect:Landroid/graphics/Rect;

.field public strategy:I

.field public text:Ljava/lang/String;

.field public type:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/bqcscanservice/c;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
