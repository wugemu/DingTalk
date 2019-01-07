.class final Lgaf$3;
.super Ljava/lang/Object;
.source "CsDentryLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgaf;->b(Lgaf$a;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field final synthetic b:Lgaf$a;

.field final synthetic c:Lcma;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgaf$a;Lcma;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lgaf$3;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object p2, p0, Lgaf$3;->b:Lgaf$a;

    iput-object p3, p0, Lgaf$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 275
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 1278
    if-nez p1, :cond_0

    .line 1279
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgaf$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lgaf$3;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setSpace(Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 1285
    iget-object v0, p0, Lgaf$3;->b:Lgaf$a;

    iget-object v1, p0, Lgaf$3;->c:Lcma;

    .line 2032
    invoke-static {v0, v1}, Lgaf;->c(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lgaf$3;->c:Lcma;

    .line 1032
    invoke-static {p1, p2, v0}, Lgaf;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 296
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 291
    return-void
.end method
