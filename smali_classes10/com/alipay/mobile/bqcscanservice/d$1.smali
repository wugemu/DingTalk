.class public final Lcom/alipay/mobile/bqcscanservice/d$1;
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
.field final synthetic a:Lcom/alipay/mobile/bqcscanservice/f;

.field final synthetic b:Lcom/alipay/mobile/bqcscanservice/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/bqcscanservice/d;Lcom/alipay/mobile/bqcscanservice/f;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/bqcscanservice/d;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/bqcscanservice/d$1;->b:Lcom/alipay/mobile/bqcscanservice/d;

    iput-object p2, p0, Lcom/alipay/mobile/bqcscanservice/d$1;->a:Lcom/alipay/mobile/bqcscanservice/f;

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
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/bqcscanservice/d$1;->b:Lcom/alipay/mobile/bqcscanservice/d;

    iget-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d$1;->a:Lcom/alipay/mobile/bqcscanservice/f;

    .line 1018
    iput-object v1, v0, Lcom/alipay/mobile/bqcscanservice/d;->b:Lcom/alipay/mobile/bqcscanservice/f;

    .line 50
    return-void
.end method
