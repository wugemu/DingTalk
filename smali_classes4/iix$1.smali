.class final Liix$1;
.super Ljava/lang/Object;
.source "BQCScanController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liix;


# direct methods
.method constructor <init>(Liix;)V
    .locals 1
    .param p1, "this$0"    # Liix;

    .prologue
    .line 319
    iput-object p1, p0, Liix$1;->a:Liix;

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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 323
    :try_start_0
    iget-object v2, p0, Liix$1;->a:Liix;

    invoke-static {v2}, Liix;->a(Liix;)[B

    move-result-object v0

    .line 324
    .local v0, "buffer":[B
    iget-object v2, p0, Liix$1;->a:Liix;

    invoke-static {v2}, Liix;->b(Liix;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 325
    iget-object v2, p0, Liix$1;->a:Liix;

    invoke-static {v2}, Liix;->b(Liix;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "buffer":[B
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BQCScanController"

    const-string/jumbo v3, "Add Preview Buffer Error"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
