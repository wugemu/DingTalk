.class final Ldgg$1;
.super Ljava/lang/Object;
.source "ChatThemePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgg;->a()V
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
        "Ldge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldgg;


# direct methods
.method constructor <init>(Ldgg;)V
    .locals 0
    .param p1, "this$0"    # Ldgg;

    .prologue
    .line 70
    iput-object p1, p0, Ldgg$1;->a:Ldgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ldge;

    .line 4073
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 5038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 4073
    invoke-interface {v0}, Ldgf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4076
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 6038
    iput-object p1, v0, Ldgg;->b:Ldge;

    .line 4077
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 7038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 4077
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 4078
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 8038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 4078
    invoke-interface {v0}, Ldgf$b;->a()V

    .line 70
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 1038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 89
    invoke-interface {v0}, Ldgf$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 2038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 92
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 93
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 3038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 93
    invoke-interface {v0, p1, p2}, Ldgf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Ldgg$1;->a:Ldgg;

    .line 4038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 94
    invoke-interface {v0}, Ldgf$b;->a()V

    .line 95
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ChatThemePresenter.loadData code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 84
    return-void
.end method
