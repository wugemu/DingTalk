.class final Lhfw$1$1;
.super Ljava/lang/Object;
.source "Core.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhfw$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhfw$1;


# direct methods
.method constructor <init>(Lhfw$1;)V
    .locals 0
    .param p1, "this$0"    # Lhfw$1;

    .prologue
    .line 156
    iput-object p1, p0, Lhfw$1$1;->a:Lhfw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v2, "hybrid_the_one_new_instance_active"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v0, Lhnx;

    invoke-direct {v0}, Lhnx;-><init>()V

    .line 168
    .local v0, "h5UcInitCallbackProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;
    :goto_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;->onInitUcSuccess()V

    .line 169
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;->preLoadAppX()V

    .line 173
    .end local v0    # "h5UcInitCallbackProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;
    :goto_1
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5UcInitCallbackProviderImpl;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "h5UcInitCallbackProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;
    goto :goto_0

    .line 170
    .end local v0    # "h5UcInitCallbackProvider":Lcom/alipay/mobile/nebula/provider/H5UcInitCallbackProvider;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
