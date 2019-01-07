.class public abstract Lbsu;
.super Ljava/lang/Object;
.source "BaseBindPresenter.java"

# interfaces
.implements Lbsw$c;


# instance fields
.field protected final a:Lbsw$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbsw$e",
            "<",
            "Lbsw$c;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lbsw$b;


# direct methods
.method public constructor <init>(Lbsw$e;Lbsw$b;)V
    .locals 0
    .param p2, "dataSource"    # Lbsw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsw$e",
            "<",
            "Lbsw$c;",
            ">;",
            "Lbsw$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "view":Lbsw$e;, "Lbsw$e<Lbsw$c;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbsu;->a:Lbsw$e;

    .line 20
    iput-object p2, p0, Lbsu;->b:Lbsw$b;

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 44
    invoke-virtual {p0}, Lbsu;->l()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected final a(IZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "cancelable"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0, p1, p2}, Lbsw$e;->a(IZ)V

    .line 152
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    invoke-virtual {p0}, Lbsu;->l()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lbsw$e;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected final b(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0, p1}, Lbsw$e;->a(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected final k()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p0}, Lbsu;->l()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    .line 64
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final l()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->p()Landroid/app/Activity;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final m()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lbsu;->l()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    :cond_0
    return-void
.end method

.method protected final n()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->l()V

    .line 89
    :cond_0
    return-void
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->m()V

    .line 95
    :cond_0
    return-void
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->g()V

    .line 101
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->f()V

    .line 114
    :cond_0
    return-void
.end method

.method protected final r()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->e()Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final s()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->H_()V

    .line 139
    :cond_0
    return-void
.end method

.method protected final t()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->v()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final u()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->q()V

    .line 158
    :cond_0
    return-void
.end method

.method protected final v()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->r()V

    .line 164
    :cond_0
    return-void
.end method

.method protected final w()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lbsu;->a:Lbsw$e;

    invoke-interface {v0}, Lbsw$e;->t()V

    .line 170
    :cond_0
    return-void
.end method
