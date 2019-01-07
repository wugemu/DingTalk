.class final Lfbq$10;
.super Ljava/lang/Object;
.source "CertifyTaskImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lfbq;


# direct methods
.method constructor <init>(Lfbq;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lfbq;

    .prologue
    .line 442
    iput-object p1, p0, Lfbq$10;->b:Lfbq;

    iput-object p2, p0, Lfbq$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 442
    check-cast p1, Ljava/lang/Integer;

    .line 1446
    iget-object v0, p0, Lfbq$10;->b:Lfbq;

    invoke-static {v0}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2033
    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1451
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->In_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->typeValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lfbq$10;->b:Lfbq;

    invoke-static {v1}, Lfbq;->f(Lfbq;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1452
    iget-object v1, p0, Lfbq$10;->b:Lfbq;

    invoke-static {v1}, Lfbq;->f(Lfbq;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lfbq$10$1;

    invoke-direct {v2, p0}, Lfbq$10$1;-><init>(Lfbq$10;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1464
    :goto_0
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "submit:status %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_0
    return-void

    .line 1459
    :cond_1
    iget-object v1, p0, Lfbq$10;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_2

    .line 1460
    iget-object v1, p0, Lfbq$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1462
    :cond_2
    iget-object v1, p0, Lfbq$10;->b:Lfbq;

    invoke-static {v1}, Lfbq;->g(Lfbq;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 474
    iget-object v0, p0, Lfbq$10;->b:Lfbq;

    iget-object v1, p0, Lfbq$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1, p2}, Lfbq;->a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "submit fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "process"    # I

    .prologue
    .line 470
    return-void
.end method
