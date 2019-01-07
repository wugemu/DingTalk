.class final Lhnx$1;
.super Ljava/lang/Object;
.source "MiniAppUcInitCallbackProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhnx;->onInitUcSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhnx;


# direct methods
.method constructor <init>(Lhnx;)V
    .locals 0
    .param p1, "this$0"    # Lhnx;

    .prologue
    .line 55
    iput-object p1, p0, Lhnx$1;->a:Lhnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lhmt;->b()V

    .line 67
    invoke-static {}, Lhmt;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "MiniAppUcInitCallbackProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
