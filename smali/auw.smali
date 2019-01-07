.class public final Lauw;
.super Lauu;
.source "ItemSettingHolder.java"


# instance fields
.field f:Lava;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lauu;-><init>()V

    return-void
.end method

.method static synthetic a(Lauw;)Lava;
    .locals 1
    .param p0, "x0"    # Lauw;

    .prologue
    .line 26
    iget-object v0, p0, Lauw;->f:Lava;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 36
    sget v0, Laow$e;->calendar_layout_setting_list_item:I

    return v0
.end method

.method public final a(Lauz;)V
    .locals 5
    .param p1, "setting"    # Lauz;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 49
    instance-of v0, p1, Lava;

    if-nez v0, :cond_0

    .line 91
    .end local p1    # "setting":Lauz;
    :goto_0
    return-void

    .line 53
    .restart local p1    # "setting":Lauz;
    :cond_0
    check-cast p1, Lava;

    .end local p1    # "setting":Lauz;
    iput-object p1, p0, Lauw;->f:Lava;

    .line 55
    iget-object v0, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    new-instance v3, Lauw$1;

    invoke-direct {v3, p0}, Lauw$1;-><init>(Lauw;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox$a;)V

    .line 72
    iget-object v0, p0, Lauw;->i:Landroid/view/View;

    new-instance v3, Lauw$2;

    invoke-direct {v3, p0}, Lauw$2;-><init>(Lauw;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    iget-object v0, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lauw;->f:Lava;

    .line 2044
    iget v3, v3, Lava;->c:I

    .line 1095
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setEnableCheckedFillColor(I)V

    .line 1096
    iget-object v0, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lauw;->f:Lava;

    .line 3044
    iget v3, v3, Lava;->c:I

    .line 1096
    iget-object v4, p0, Lauw;->f:Lava;

    .line 4044
    iget v4, v4, Lava;->c:I

    .line 4519
    iput v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->b:I

    .line 4520
    iput v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a:I

    .line 4521
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->invalidate()V

    .line 1097
    iget-object v0, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v3, p0, Lauw;->f:Lava;

    .line 5036
    iget-boolean v3, v3, Lava;->d:Z

    .line 1097
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lauw;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lauw;->f:Lava;

    .line 6027
    iget-object v3, v3, Lava;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lauw;->i:Landroid/view/View;

    iget-object v0, p0, Lauw;->f:Lava;

    .line 6052
    iget-boolean v0, v0, Lava;->e:Z

    .line 89
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lauw;->j:Landroid/view/View;

    iget-object v3, p0, Lauw;->f:Lava;

    .line 6068
    iget-boolean v3, v3, Lava;->f:Z

    .line 90
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 89
    goto :goto_1

    :cond_2
    move v1, v2

    .line 90
    goto :goto_2
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lauw;->a:Landroid/view/View;

    sget v1, Laow$d;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iput-object v0, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 42
    iget-object v0, p0, Lauw;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lauw;->h:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lauw;->a:Landroid/view/View;

    sget v1, Laow$d;->ll_add_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lauw;->i:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lauw;->a:Landroid/view/View;

    sget v1, Laow$d;->v_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lauw;->j:Landroid/view/View;

    .line 45
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v1, p0, Lauw;->f:Lava;

    instance-of v1, v1, Lavb;

    if-eqz v1, :cond_0

    .line 108
    iget-object v0, p0, Lauw;->f:Lava;

    check-cast v0, Lavb;

    .line 7018
    .local v0, "mailItemSetting":Lavb;
    iget-boolean v1, v0, Lavb;->h:Z

    .line 109
    if-eqz v1, :cond_0

    iget-object v1, p0, Lauw;->e:Lauq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauw;->e:Lauq;

    .line 111
    invoke-interface {v1, v0}, Lauq;->onClick(Lava;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    .end local v0    # "mailItemSetting":Lavb;
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v3, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    iget-object v1, p0, Lauw;->g:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p0}, Lauw;->c()V

    .line 103
    return-void
.end method
