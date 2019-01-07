.class final Lgoj$13;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoj;->a(Ljava/util/List;Lcma;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgoj;


# direct methods
.method constructor <init>(Lgoj;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 483
    iput-object p1, p0, Lgoj$13;->b:Lgoj;

    iput-object p2, p0, Lgoj$13;->a:Lcma;

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
    .line 493
    iget-object v0, p0, Lgoj$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lgoj$13;->a:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 496
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 483
    check-cast p1, Ljava/lang/Boolean;

    .line 1486
    iget-object v0, p0, Lgoj$13;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lgoj$13;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 483
    :cond_0
    return-void
.end method
