.class final Lgdp$4;
.super Ljava/lang/Object;
.source "SpaceCommentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdp;


# direct methods
.method constructor <init>(Lgdp;)V
    .locals 0
    .param p1, "this$0"    # Lgdp;

    .prologue
    .line 384
    iput-object p1, p0, Lgdp$4;->a:Lgdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lgdp$4;->a:Lgdp;

    .line 1053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 387
    invoke-interface {v0}, Lgdn$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lgdp$4;->a:Lgdp;

    .line 2053
    iget-boolean v0, v0, Lgdp;->i:Z

    .line 390
    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lgdp$4;->a:Lgdp;

    .line 3053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 391
    invoke-interface {v0}, Lgdn$b;->G_()V

    goto :goto_0
.end method
