.class final Leyx$3;
.super Lbzd;
.source "TelePermissionCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyx;->b(Landroid/app/Activity;Lcpi$a;)V
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
    .line 164
    iput-object p1, p0, Leyx$3;->a:Lcpi$a;

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
    .line 167
    iget-object v0, p0, Leyx$3;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Leyx$3;->a:Lcpi$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcpi$a;->a(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public final onDenied()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Leyx$3;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Leyx$3;->a:Lcpi$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcpi$a;->a(Z)V

    .line 177
    :cond_0
    return-void
.end method

.method public final onNeverAsk()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Leyx$3;->a:Lcpi$a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Leyx$3;->a:Lcpi$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcpi$a;->a(Z)V

    .line 184
    :cond_0
    return-void
.end method
