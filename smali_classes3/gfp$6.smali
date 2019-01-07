.class final Lgfp$6;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfp;
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
        "Lgnv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lgfp;


# direct methods
.method constructor <init>(Lgfp;Z)V
    .locals 0
    .param p1, "this$0"    # Lgfp;

    .prologue
    .line 340
    iput-object p1, p0, Lgfp$6;->b:Lgfp;

    iput-boolean p2, p0, Lgfp$6;->a:Z

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
    .line 340
    .line 3343
    iget-object v0, p0, Lgfp$6;->b:Lgfp;

    iget-boolean v1, p0, Lgfp$6;->a:Z

    invoke-static {v0, v1}, Lgfp;->a(Lgfp;Z)V

    .line 3344
    iget-object v0, p0, Lgfp$6;->b:Lgfp;

    .line 4062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 3344
    invoke-interface {v0}, Lgfn$b;->g()V

    .line 3345
    iget-object v0, p0, Lgfp$6;->b:Lgfp;

    .line 5062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 3345
    invoke-interface {v0}, Lgfn$b;->e()V

    .line 340
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lgfp$6;->b:Lgfp;

    .line 1062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 355
    invoke-interface {v0}, Lgfn$b;->g()V

    .line 356
    iget-object v0, p0, Lgfp$6;->b:Lgfp;

    .line 2062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 356
    invoke-interface {v0}, Lgfn$b;->e()V

    .line 357
    iget-object v0, p0, Lgfp$6;->b:Lgfp;

    .line 3062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 357
    invoke-interface {v0, p1, p2}, Lgfn$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 351
    return-void
.end method
