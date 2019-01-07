.class final Lhnx$2$1;
.super Ljava/lang/Object;
.source "MiniAppUcInitCallbackProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhnx$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhnx$2;


# direct methods
.method constructor <init>(Lhnx$2;)V
    .locals 0
    .param p1, "this$1"    # Lhnx$2;

    .prologue
    .line 89
    iput-object p1, p0, Lhnx$2$1;->a:Lhnx$2;

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
    .line 92
    iget-object v1, p0, Lhnx$2$1;->a:Lhnx$2;

    iget-object v1, v1, Lhnx$2;->a:Lhnx;

    invoke-static {v1}, Lhnx;->a(Lhnx;)V

    .line 100
    :try_start_0
    invoke-static {}, Lhmt;->b()V

    .line 101
    invoke-static {}, Lhmt;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "MiniAppUcInitCallbackProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
