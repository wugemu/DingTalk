.class public final Lcom/alipay/mobile/bqcscanservice/d$6;
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
.field final synthetic a:Lcom/alipay/mobile/bqcscanservice/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/bqcscanservice/d;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/bqcscanservice/d;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/bqcscanservice/d$6;->a:Lcom/alipay/mobile/bqcscanservice/d;

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
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x4

    .line 154
    const-string/jumbo v0, "CameraScanHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In closeCamera()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/bqcscanservice/d$6;->a:Lcom/alipay/mobile/bqcscanservice/d;

    .line 1018
    iget v2, v2, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$6;->a:Lcom/alipay/mobile/bqcscanservice/d;

    .line 2018
    iget v0, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 155
    if-gt v3, v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$6;->a:Lcom/alipay/mobile/bqcscanservice/d;

    .line 3018
    iput v3, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$6;->a:Lcom/alipay/mobile/bqcscanservice/d;

    .line 4018
    iget-object v0, v0, Lcom/alipay/mobile/bqcscanservice/d;->b:Lcom/alipay/mobile/bqcscanservice/f;

    .line 159
    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/f;->b()V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$6;->a:Lcom/alipay/mobile/bqcscanservice/d;

    const/4 v1, 0x1

    .line 5018
    iput v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    goto :goto_0
.end method
