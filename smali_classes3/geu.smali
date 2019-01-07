.class public abstract Lgeu;
.super Ljava/lang/Object;
.source "SpaceEditNamePresenter.java"

# interfaces
.implements Lget$a;


# instance fields
.field protected a:Lget$b;

.field protected b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lget$b;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Lget$b;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p2}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lgeu;->b:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lget$b;

    iput-object v0, p0, Lgeu;->a:Lget$b;

    .line 22
    iget-object v0, p0, Lgeu;->a:Lget$b;

    invoke-interface {v0, p0}, Lget$b;->setPresenter(Lcjd;)V

    .line 23
    return-void
.end method


# virtual methods
.method final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lgeu;->a:Lget$b;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lgeu;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lget$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lgeu;->a:Lget$b;

    invoke-interface {v0}, Lget$b;->g()V

    .line 40
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 27
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
    .line 35
    return-void
.end method
