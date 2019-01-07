.class final Lfbq$9;
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
        "Ljava/lang/Void;",
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
    .line 417
    iput-object p1, p0, Lfbq$9;->b:Lfbq;

    iput-object p2, p0, Lfbq$9;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 417
    .line 1421
    iget-object v0, p0, Lfbq$9;->b:Lfbq;

    invoke-static {v0}, Lfbq;->d(Lfbq;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lfbq$9;->b:Lfbq;

    iget-object v1, p0, Lfbq$9;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1}, Lfbq;->a(Lfbq;Lcom/alibaba/wukong/Callback;)V

    .line 417
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 433
    iget-object v0, p0, Lfbq$9;->b:Lfbq;

    iget-object v1, p0, Lfbq$9;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1, p2}, Lfbq;->a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uploadCertify fail:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "process"    # I

    .prologue
    .line 429
    return-void
.end method
