.class public final Lfgy;
.super Lfhc;
.source "ContactBranchSubDepartmentViewHolder.java"


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lfhc;-><init>(Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lezg$j;->fragment_contact_home_main_org_sub_branch_layout:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Lfhc;->a(Landroid/view/View;)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    sget v0, Lezg$h;->v_branch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgy;->c:Landroid/view/View;

    .line 28
    sget v0, Lezg$h;->v_branch_top_cell:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgy;->d:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lfgy;->c:Landroid/view/View;

    sget v1, Lezg$h;->v_branch_line_down:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgy;->e:Landroid/view/View;

    .line 31
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x4

    .line 38
    iget-object v0, p0, Lfgy;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lfgy;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lfgy;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 41
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 42
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lfgy;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lfgy;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lfgy;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2120
    iget-object v0, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 48
    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 49
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lfgy;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lfgy;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lfgy;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3120
    iget-object v0, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 55
    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 56
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x4

    .line 59
    iget-object v0, p0, Lfgy;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lfgy;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lfgy;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4120
    iget-object v0, p0, Lfhc;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 62
    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 63
    return-void
.end method
