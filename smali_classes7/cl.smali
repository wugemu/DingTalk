.class public final Lcl;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:Lcm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "callbacks":Lcm;, "Lcm<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcl;->a:Lcm;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0, p1}, Lco;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->o()V

    .line 119
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "retain"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcl;->a:Lcm;

    .line 1256
    iput-boolean p1, v0, Lcm;->h:Z

    .line 1258
    iget-object v1, v0, Lcm;->i:Lcw;

    if-eqz v1, :cond_0

    .line 1262
    iget-boolean v1, v0, Lcm;->k:Z

    if-eqz v1, :cond_0

    .line 1265
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcm;->k:Z

    .line 1267
    if-eqz p1, :cond_1

    .line 1268
    iget-object v0, v0, Lcm;->i:Lcw;

    invoke-virtual {v0}, Lcw;->d()V

    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, v0, Lcm;->i:Lcw;

    invoke-virtual {v0}, Lcw;->c()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcl;->a:Lcm;

    iget-object v0, v0, Lcm;->f:Lco;

    invoke-virtual {v0}, Lco;->k()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 386
    iget-object v0, p0, Lcl;->a:Lcm;

    .line 1237
    iget-boolean v1, v0, Lcm;->k:Z

    if-nez v1, :cond_1

    .line 1240
    iput-boolean v4, v0, Lcm;->k:Z

    .line 1242
    iget-object v1, v0, Lcm;->i:Lcw;

    if-eqz v1, :cond_2

    .line 1243
    iget-object v1, v0, Lcm;->i:Lcw;

    invoke-virtual {v1}, Lcw;->b()V

    .line 1251
    :cond_0
    :goto_0
    iput-boolean v4, v0, Lcm;->j:Z

    .line 387
    :cond_1
    return-void

    .line 1244
    :cond_2
    iget-boolean v1, v0, Lcm;->j:Z

    if-nez v1, :cond_0

    .line 1245
    const-string/jumbo v1, "(root)"

    iget-boolean v2, v0, Lcm;->k:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcm;->a(Ljava/lang/String;ZZ)Lcw;

    move-result-object v1

    iput-object v1, v0, Lcm;->i:Lcw;

    .line 1247
    iget-object v1, v0, Lcm;->i:Lcw;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcm;->i:Lcw;

    iget-boolean v1, v1, Lcw;->e:Z

    if-nez v1, :cond_0

    .line 1248
    iget-object v1, v0, Lcm;->i:Lcw;

    invoke-virtual {v1}, Lcw;->b()V

    goto :goto_0
.end method
