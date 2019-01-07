.class final Lgft$5;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgft;->d()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgft;


# direct methods
.method constructor <init>(Lgft;)V
    .locals 0
    .param p1, "this$0"    # Lgft;

    .prologue
    .line 368
    iput-object p1, p0, Lgft$5;->a:Lgft;

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
    .line 368
    check-cast p1, Ljava/lang/Boolean;

    .line 2371
    iget-object v0, p0, Lgft$5;->a:Lgft;

    .line 3046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 4022
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 2371
    invoke-interface {v0, v1}, Lgfs$b;->a(Z)V

    .line 368
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Lgft$5;->a:Lgft;

    .line 1046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 381
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfs$b;->a(Z)V

    .line 382
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "FilePreviewPresenter"

    const-string/jumbo v2, "FilePreviewPresenter.checkReadOnly"

    const/4 v3, 0x0

    iget-object v4, p0, Lgft$5;->a:Lgft;

    .line 2046
    iget-object v4, v4, Lgft;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 382
    invoke-static {v2, p1, p2, v3, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 377
    return-void
.end method
