.class final Lgdy$1;
.super Ljava/lang/Object;
.source "DentryOperationUseCase.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdy;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field final synthetic c:Lgeh;

.field final synthetic d:Lgdy;


# direct methods
.method constructor <init>(Lgdy;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;)V
    .locals 0
    .param p1, "this$0"    # Lgdy;

    .prologue
    .line 340
    iput-object p1, p0, Lgdy$1;->d:Lgdy;

    iput-object p2, p0, Lgdy$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p3, p0, Lgdy$1;->b:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object p4, p0, Lgdy$1;->c:Lgeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 357
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lgdy$1;->d:Lgdy;

    .line 1054
    iget-object v2, v2, Lgdy;->a:Lgdw;

    .line 357
    invoke-virtual {v2}, Lgdw;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    .line 358
    .local v0, "isReadOnly":Z
    iget-object v1, p0, Lgdy$1;->d:Lgdy;

    iget-object v2, p0, Lgdy$1;->b:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iget-object v3, p0, Lgdy$1;->c:Lgeh;

    iget-object v4, p0, Lgdy$1;->d:Lgdy;

    .line 2054
    iget-object v4, v4, Lgdy;->a:Lgdw;

    .line 358
    invoke-virtual {v4}, Lgdw;->A()Z

    move-result v4

    invoke-static {v1, v2, v3, v4, v0}, Lgdy;->a(Lgdy;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;ZZ)V

    .line 359
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 340
    check-cast p1, Ljava/lang/String;

    .line 2343
    iget-object v0, p0, Lgdy$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 2344
    invoke-direct {p0}, Lgdy$1;->a()V

    .line 340
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-direct {p0}, Lgdy$1;->a()V

    .line 354
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 349
    return-void
.end method
