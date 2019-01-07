.class public final Lcom/alipay/mobile/bqcscanservice/d$3;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/bqcscanservice/a;

.field final synthetic c:Lcom/alipay/mobile/bqcscanservice/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/bqcscanservice/d;Landroid/content/Context;Lcom/alipay/mobile/bqcscanservice/a;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/bqcscanservice/d;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->c:Lcom/alipay/mobile/bqcscanservice/d;

    iput-object p2, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->b:Lcom/alipay/mobile/bqcscanservice/a;

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
    const/4 v3, 0x1

    .line 86
    const-string/jumbo v0, "CameraScanHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In init()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->c:Lcom/alipay/mobile/bqcscanservice/d;

    .line 1018
    iget v2, v2, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->c:Lcom/alipay/mobile/bqcscanservice/d;

    .line 2018
    iget v0, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 87
    if-gt v3, v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->c:Lcom/alipay/mobile/bqcscanservice/d;

    .line 3018
    iget-object v0, v0, Lcom/alipay/mobile/bqcscanservice/d;->b:Lcom/alipay/mobile/bqcscanservice/f;

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/bqcscanservice/f;->a(Landroid/content/Context;Lcom/alipay/mobile/bqcscanservice/a;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$3;->c:Lcom/alipay/mobile/bqcscanservice/d;

    .line 4018
    iput v3, v0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    goto :goto_0
.end method
