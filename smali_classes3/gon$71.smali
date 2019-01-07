.class final Lgon$71;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
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
        "Lghy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3650
    iput-object p1, p0, Lgon$71;->c:Lgon;

    iput-object p2, p0, Lgon$71;->a:Lcma;

    iput-object p3, p0, Lgon$71;->b:Ljava/util/List;

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
    .line 3650
    check-cast p1, Lghy;

    .line 4653
    if-eqz p1, :cond_0

    iget-object v0, p1, Lghy;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lghy;->c:Ljava/util/List;

    .line 4654
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4655
    :cond_0
    iget-object v0, p0, Lgon$71;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4656
    :goto_0
    return-void

    .line 4658
    :cond_1
    const-string/jumbo v0, "getDentryExtMap"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgon$71$1;

    invoke-direct {v1, p0, p1}, Lgon$71$1;-><init>(Lgon$71;Lghy;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 3679
    iget-object v0, p0, Lgon$71;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3675
    return-void
.end method
