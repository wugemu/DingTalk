.class public final Lgoj$12;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgoj;


# direct methods
.method public constructor <init>(Lgoj;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 458
    iput-object p1, p0, Lgoj$12;->c:Lgoj;

    iput-object p2, p0, Lgoj$12;->a:Lcma;

    iput-object p3, p0, Lgoj$12;->b:Ljava/util/List;

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
    .line 468
    iget-object v0, p0, Lgoj$12;->a:Lcma;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lgoj$12;->a:Lcma;

    iget-object v1, p0, Lgoj$12;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 471
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 458
    check-cast p1, Ljava/util/List;

    .line 1461
    iget-object v0, p0, Lgoj$12;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lgoj$12;->a:Lcma;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 458
    :cond_0
    return-void

    .line 1462
    :cond_1
    iget-object p1, p0, Lgoj$12;->b:Ljava/util/List;

    goto :goto_0
.end method
