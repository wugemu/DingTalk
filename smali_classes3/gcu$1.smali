.class final Lgcu$1;
.super Ljava/lang/Object;
.source "FavoriteProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgcu;->a(Lcma;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgcu;


# direct methods
.method constructor <init>(Lgcu;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgcu;

    .prologue
    .line 50
    iput-object p1, p0, Lgcu$1;->b:Lgcu;

    iput-object p2, p0, Lgcu$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lgcu$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 61
    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lgcu$1;->a:Lcma;

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lgcu$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lgcu$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lgcu$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method
