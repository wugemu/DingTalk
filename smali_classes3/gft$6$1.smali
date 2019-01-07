.class final Lgft$6$1;
.super Ljava/lang/Object;
.source "FilePreviewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgft$6;
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
.field final synthetic a:Lgft$6;


# direct methods
.method constructor <init>(Lgft$6;)V
    .locals 0
    .param p1, "this$1"    # Lgft$6;

    .prologue
    .line 419
    iput-object p1, p0, Lgft$6$1;->a:Lgft$6;

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
    .line 419
    check-cast p1, Ljava/lang/Boolean;

    .line 1422
    iget-object v0, p0, Lgft$6$1;->a:Lgft$6;

    iget-object v0, v0, Lgft$6;->a:Lgft;

    .line 2046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 3022
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 1422
    invoke-interface {v0, v1}, Lgfs$b;->b(Z)V

    .line 419
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 432
    iget-object v0, p0, Lgft$6$1;->a:Lgft$6;

    iget-object v0, v0, Lgft$6;->a:Lgft;

    .line 1046
    iget-object v0, v0, Lgft;->d:Lgfs$b;

    .line 432
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgfs$b;->b(Z)V

    .line 433
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 428
    return-void
.end method
