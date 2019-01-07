.class final Lgfp$9;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfp;->a(Z)V
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
        "Lgjp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfp;


# direct methods
.method constructor <init>(Lgfp;)V
    .locals 0
    .param p1, "this$0"    # Lgfp;

    .prologue
    .line 430
    iput-object p1, p0, Lgfp$9;->a:Lgfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 430
    .line 2434
    iget-object v0, p0, Lgfp$9;->a:Lgfp;

    .line 3062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 2434
    invoke-interface {v0}, Lgfn$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lgfp$9;->a:Lgfp;

    .line 4062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 2438
    invoke-interface {v0}, Lgfn$b;->H_()V

    .line 2439
    iget-object v0, p0, Lgfp$9;->a:Lgfp;

    invoke-virtual {v0}, Lgfp;->a()V

    .line 430
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v0, p0, Lgfp$9;->a:Lgfp;

    .line 1062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 450
    invoke-interface {v0}, Lgfn$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lgfp$9;->a:Lgfp;

    .line 2062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 454
    invoke-interface {v0}, Lgfn$b;->H_()V

    .line 456
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 445
    return-void
.end method
