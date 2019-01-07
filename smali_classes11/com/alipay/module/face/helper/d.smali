.class final Lcom/alipay/module/face/helper/d;
.super Ljava/lang/Object;
.source "FaceRpcRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/module/face/helper/FaceRpcRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/module/face/helper/FaceRpcRunnable;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/module/face/helper/d;->a:Lcom/alipay/module/face/helper/FaceRpcRunnable;

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
.method public final run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/module/face/helper/d;->a:Lcom/alipay/module/face/helper/FaceRpcRunnable;

    invoke-static {v0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/module/face/helper/FaceRpcRunnable;)V

    .line 238
    return-void
.end method
