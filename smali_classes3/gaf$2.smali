.class final Lgaf$2;
.super Ljava/lang/Object;
.source "CsDentryLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgaf;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgaf$a;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field final synthetic c:Lcma;


# direct methods
.method constructor <init>(Lgaf$a;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lcma;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lgaf$2;->a:Lgaf$a;

    iput-object p2, p0, Lgaf$2;->b:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object p3, p0, Lgaf$2;->c:Lcma;

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
    .line 230
    check-cast p1, Ljava/util/Map;

    .line 1233
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    :cond_0
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgaf$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget-object v0, p0, Lgaf$2;->a:Lgaf$a;

    .line 2072
    iget-object v0, v0, Lgaf$a;->b:Ljava/lang/String;

    .line 1238
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 1239
    if-nez v0, :cond_2

    .line 1240
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgaf$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    :cond_2
    iget-object v1, p0, Lgaf$2;->b:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->setDentryExtModel(Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)V

    .line 1246
    iget-object v0, p0, Lgaf$2;->a:Lgaf$a;

    iget-object v1, p0, Lgaf$2;->c:Lcma;

    .line 3032
    invoke-static {v0, v1}, Lgaf;->b(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lgaf$2;->c:Lcma;

    .line 1032
    invoke-static {p1, p2, v0}, Lgaf;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 257
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 252
    return-void
.end method
