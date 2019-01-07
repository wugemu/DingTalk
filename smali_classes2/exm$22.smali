.class final Lexm$22;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lexm;


# direct methods
.method constructor <init>(Lexm;Z)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 400
    iput-object p1, p0, Lexm$22;->b:Lexm;

    iput-boolean p2, p0, Lexm$22;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 403
    iget-object v0, p0, Lexm$22;->b:Lexm;

    invoke-static {v0}, Lexm;->a(Lexm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v1, p0, Lexm$22;->b:Lexm;

    iget-boolean v0, p0, Lexm$22;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lexm;->a(Lexm;Z)V

    .line 406
    :cond_0
    iget-object v0, p0, Lexm$22;->b:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lexm$22;->b:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->f()V

    .line 409
    :cond_1
    return-void

    .line 404
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
