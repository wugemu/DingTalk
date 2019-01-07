.class public Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;
.super Ljava/lang/Exception;
.source "ScanExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TorchException"
.end annotation


# static fields
.field public static final FOCUS_FAILED:I = 0xfa2

.field public static final THREAD_FAILED:I = 0xfa3

.field public static final TORCH_FAILED:I = 0xfa1


# instance fields
.field public errorCode:I

.field public state:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    iput-boolean p1, p0, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->state:Z

    .line 65
    iput p2, p0, Lcom/alipay/mobile/bqcscanservice/monitor/ScanExceptionHandler$TorchException;->errorCode:I

    .line 66
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
