.class final Lger$4;
.super Ljava/lang/Object;
.source "SpaceCreateFilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lger;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lger;


# direct methods
.method constructor <init>(Lger;)V
    .locals 0
    .param p1, "this$0"    # Lger;

    .prologue
    .line 288
    iput-object p1, p0, Lger$4;->a:Lger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 288
    .line 1291
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 1295
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    .line 288
    :cond_0
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
    .line 304
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->H_()V

    .line 308
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lget$b;->a(Z)V

    .line 309
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0, p1, p2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lger$4;->a:Lger;

    iget-object v0, v0, Lger;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 300
    return-void
.end method
