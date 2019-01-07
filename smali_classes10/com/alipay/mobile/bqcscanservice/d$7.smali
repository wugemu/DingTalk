.class public final Lcom/alipay/mobile/bqcscanservice/d$7;
.super Ljava/lang/Object;
.source "CameraHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/bqcscanservice/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alipay/mobile/bqcscanservice/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/bqcscanservice/d;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/bqcscanservice/d;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/bqcscanservice/d$7;->b:Lcom/alipay/mobile/bqcscanservice/d;

    iput-object p2, p0, Lcom/alipay/mobile/bqcscanservice/d$7;->a:Ljava/lang/Runnable;

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
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$7;->b:Lcom/alipay/mobile/bqcscanservice/d;

    .line 1018
    iget v0, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 169
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 170
    const-string/jumbo v0, "CameraScanHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The curCameraState is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/bqcscanservice/d$7;->b:Lcom/alipay/mobile/bqcscanservice/d;

    .line 2018
    iget v2, v2, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$7;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 173
    :cond_0
    return-void
.end method
