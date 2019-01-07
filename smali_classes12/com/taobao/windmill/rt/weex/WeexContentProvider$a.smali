.class final Lcom/taobao/windmill/rt/weex/WeexContentProvider$a;
.super Ljava/lang/Object;
.source "WeexContentProvider.java"

# interfaces
.implements Ljsa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/rt/weex/WeexContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/taobao/windmill/rt/weex/WeexContentProvider$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljrx;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "WXAppInstance doesn\'t provide BridgeInvoker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/content/Context;)Ljrz;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p1}, Ljsf;->a(Landroid/content/Context;)Ljsf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Ljrz;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljpm;",
            ">;)",
            "Ljrz;"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "perf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljpm;>;"
    invoke-static {p1, p2}, Ljsf;->a(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Ljsf;

    move-result-object v0

    return-object v0
.end method
