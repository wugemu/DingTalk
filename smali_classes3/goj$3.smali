.class public final Lgoj$3;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgoj;


# direct methods
.method public constructor <init>(Lgoj;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 598
    iput-object p1, p0, Lgoj$3;->b:Lgoj;

    iput-object p2, p0, Lgoj$3;->a:Lcma;

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
    .line 610
    iget-object v0, p0, Lgoj$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lgoj$3;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 613
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 598
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1602
    iget-object v0, p0, Lgoj$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lgoj$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 598
    :cond_0
    return-void
.end method
