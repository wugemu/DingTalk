.class final Lgdx$9;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdx;->a(Ljava/util/ArrayList;ZLjava/util/List;Z)V
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
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 216
    iput-object p1, p0, Lgdx$9;->e:Lgdx;

    iput-object p2, p0, Lgdx$9;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lgdx$9;->b:Z

    iput-object p4, p0, Lgdx$9;->c:Ljava/util/List;

    iput-boolean p5, p0, Lgdx$9;->d:Z

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
    .line 216
    check-cast p1, Ljava/lang/Boolean;

    .line 1219
    iget-object v0, p0, Lgdx$9;->e:Lgdx;

    iget-object v1, p0, Lgdx$9;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lgdx;->a(Lgdx;I)V

    .line 1221
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgdx$9$1;

    invoke-direct {v1, p0, p1}, Lgdx$9$1;-><init>(Lgdx$9;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 250
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 246
    return-void
.end method
