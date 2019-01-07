.class public final Lfhr;
.super Ljava/lang/Object;
.source "GrantResourcesPresenter.java"

# interfaces
.implements Lfhp$a;


# instance fields
.field a:Lfhp$b;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfhp$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lfhp$b;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lfhr;->b:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lfhr;->a:Lfhp$b;

    .line 25
    iget-object v0, p0, Lfhr;->a:Lfhp$b;

    invoke-interface {v0, p0}, Lfhp$b;->setPresenter(Lcjd;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    .line 30
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lfhr;->a:Lfhp$b;

    invoke-interface {v1}, Lfhp$b;->b()V

    .line 34
    new-instance v1, Lfhr$1;

    invoke-direct {v1, p0}, Lfhr$1;-><init>(Lfhr;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lfhr;->b:Landroid/app/Activity;

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 58
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;>;"
    invoke-static {}, Lfat;->a()Lezw;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lezw;->a(JLcma;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lfhr;->b:Landroid/app/Activity;

    .line 74
    iput-object v0, p0, Lfhr;->a:Lfhp$b;

    .line 75
    return-void
.end method
