.class final Lflj$3;
.super Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
.source "ManagerOrgCustomizePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lflj;


# direct methods
.method constructor <init>(Lflj;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lflj;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    iput-object p1, p0, Lflj$3;->d:Lflj;

    iput-object p3, p0, Lflj$3;->a:Landroid/content/Context;

    iput-object p4, p0, Lflj$3;->b:Ljava/lang/String;

    iput-object p5, p0, Lflj$3;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lflj$3;->a:Landroid/content/Context;

    sget v1, Lezg$l;->dt_contact_org_logo_desc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lflj$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v0, "org_management_personalized_logo_case_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 222
    :goto_0
    iget-object v0, p0, Lflj$3;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string/jumbo v0, "ManageOrgCustomizePresenter"

    const-string/jumbo v1, "link text is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :goto_1
    return-void

    .line 219
    :cond_0
    const-string/jumbo v0, "org_management_personalized_worktitle_case_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lflj$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lflj$3;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
