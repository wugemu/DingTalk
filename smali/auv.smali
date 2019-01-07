.class public final Lauv;
.super Lauu;
.source "HeaderSettingHolder.java"


# instance fields
.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lauu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    sget v0, Laow$e;->calendar_layout_setting_list_item_header:I

    return v0
.end method

.method public final a(Lauz;)V
    .locals 3
    .param p1, "setting"    # Lauz;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    instance-of v1, p1, Lauy;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 41
    check-cast v0, Lauy;

    .line 43
    .local v0, "headerSetting":Lauy;
    iget-object v1, p0, Lauv;->g:Landroid/widget/TextView;

    .line 1035
    iget-object v2, v0, Lauy;->d:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-boolean v1, v0, Lauy;->b:Z

    .line 45
    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lauv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lauv;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lauv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 50
    iget-object v2, p0, Lauv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2056
    iget-boolean v1, v0, Lauy;->a:Z

    .line 50
    if-eqz v1, :cond_2

    sget v1, Laow$f;->icon_act_open:I

    :goto_1
    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lauv;->f:Landroid/view/View;

    new-instance v2, Lauv$1;

    invoke-direct {v2, p0, v0}, Lauv$1;-><init>(Lauv;Lauy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 50
    :cond_2
    sget v1, Laow$f;->icon_act_close:I

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lauv;->a:Landroid/view/View;

    sget v1, Laow$d;->rl_container_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lauv;->f:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lauv;->a:Landroid/view/View;

    sget v1, Laow$d;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lauv;->g:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lauv;->a:Landroid/view/View;

    sget v1, Laow$d;->iv_toggle_folded:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lauv;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 33
    return-void
.end method
