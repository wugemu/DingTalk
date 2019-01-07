.class final Leyx$4;
.super Lbzd;
.source "TelePermissionCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyx;->c(Landroid/app/Activity;Lcpi$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcpi$a;


# direct methods
.method constructor <init>(Lcpi$a;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Leyx$4;->a:Lcpi$a;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 210
    iget-object v0, p0, Leyx$4;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Leyx$4;->a:Lcpi$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcpi$a;->a(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public final onDenied()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Leyx$4;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Leyx$4;->a:Lcpi$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcpi$a;->a(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public final onNeverAsk()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 224
    iget-object v0, p0, Leyx$4;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Leyx$4;->a:Lcpi$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcpi$a;->a(Z)V

    .line 227
    :cond_0
    return-void
.end method
