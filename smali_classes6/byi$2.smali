.class final Lbyi$2;
.super Lbyi$a;
.source "LiveDynamicSoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcjn$a;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/app/Activity;Lcjn$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lbyi$2;->a:I

    iput-object p2, p0, Lbyi$2;->b:Landroid/app/Activity;

    iput-object p3, p0, Lbyi$2;->c:Lcjn$a;

    iput-object p4, p0, Lbyi$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lbyi$2;->b:Landroid/app/Activity;

    invoke-static {v0}, Lbyi;->a(Landroid/app/Activity;)V

    .line 69
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "checkDynamicSo failed, name="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbyi$2;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", code="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lbyi$2;->c:Lcjn$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lbyi$2;->c:Lcjn$a;

    invoke-interface {v0, p1, p2}, Lcjn$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Void;

    .line 1056
    iget v0, p0, Lbyi$2;->a:I

    invoke-static {}, Lbyi;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1057
    iget-object v0, p0, Lbyi$2;->b:Landroid/app/Activity;

    invoke-static {v0}, Lbyi;->a(Landroid/app/Activity;)V

    .line 1058
    iget-object v0, p0, Lbyi$2;->c:Lcjn$a;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lbyi$2;->c:Lcjn$a;

    invoke-interface {v0, p1}, Lcjn$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    iget-object v0, p0, Lbyi$2;->b:Landroid/app/Activity;

    iget v1, p0, Lbyi$2;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbyi$2;->c:Lcjn$a;

    invoke-static {v0, v1, v2}, Lbyi;->a(Landroid/app/Activity;ILcjn$a;)V

    goto :goto_0
.end method
