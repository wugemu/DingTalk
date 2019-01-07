.class final Lgoj$11;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoj;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic c:Lgoj;


# direct methods
.method constructor <init>(Lgoj;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 429
    iput-object p1, p0, Lgoj$11;->c:Lgoj;

    iput-object p2, p0, Lgoj$11;->a:Lcma;

    iput-object p3, p0, Lgoj$11;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 439
    iget-object v0, p0, Lgoj$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lgoj$11;->a:Lcma;

    iget-object v1, p0, Lgoj$11;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 442
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 429
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1432
    iget-object v0, p0, Lgoj$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lgoj$11;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 429
    :cond_0
    return-void
.end method
