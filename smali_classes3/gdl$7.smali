.class final Lgdl$7;
.super Ljava/lang/Object;
.source "SpaceAclPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdl;->f()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdl;


# direct methods
.method constructor <init>(Lgdl;)V
    .locals 0
    .param p1, "this$0"    # Lgdl;

    .prologue
    .line 476
    iput-object p1, p0, Lgdl$7;->a:Lgdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 476
    .line 1479
    iget-object v0, p0, Lgdl$7;->a:Lgdl;

    invoke-virtual {v0}, Lgdl;->a()V

    .line 476
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 489
    iget-object v0, p0, Lgdl$7;->a:Lgdl;

    .line 1055
    iget-object v0, v0, Lgdl;->b:Lgdj$b;

    .line 489
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgdj$b;->a(Z)V

    .line 490
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAclPresenter"

    const-string/jumbo v2, "SpaceAclPresenter deleteAclExtendOrgMember"

    const/4 v3, 0x0

    .line 493
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 485
    return-void
.end method