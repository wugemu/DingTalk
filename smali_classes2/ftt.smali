.class public final Lftt;
.super Lfsd;
.source "NameCardOrgsSuggestItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 21
    check-cast p1, Lfsv;

    .line 1029
    sget v0, Lezg$h;->name_card_orgs_cell_tv_suggest:I

    invoke-virtual {p0, v0}, Lftt;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1031
    if-eqz p1, :cond_5

    .line 1032
    iget-boolean v1, p1, Lfsv;->h:Z

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p1, Lfsv;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1034
    iget-object v1, p1, Lfsv;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lfsv;->a:Ljava/lang/String;

    iget-object v2, p1, Lfsv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p1, Lfsv;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1036
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lfsv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1037
    iget-object v3, p1, Lfsv;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 1038
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->ui_common_level1_base_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x11

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1039
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    :goto_0
    new-instance v1, Lftt$1;

    invoke-direct {v1, p0, p1}, Lftt$1;-><init>(Lftt;Lfsv;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    :goto_1
    sget v0, Lezg$h;->name_card_orgs_cell_ll_fold:I

    invoke-virtual {p0, v0}, Lftt;->a(I)Landroid/view/View;

    move-result-object v2

    .line 1060
    iget-boolean v0, p1, Lfsv;->f:Z

    invoke-static {v2, v0}, Lftt;->a(Landroid/view/View;Z)V

    .line 1062
    sget v0, Lezg$h;->name_card_orgs_cell_tv_fold:I

    invoke-virtual {p0, v0}, Lftt;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    iget-boolean v1, p1, Lfsv;->g:Z

    if-eqz v1, :cond_3

    .line 1064
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lezg$l;->dt_bizcard_label_collapse:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1063
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    sget v0, Lezg$h;->name_card_orgs_cell_iv_fold:I

    invoke-virtual {p0, v0}, Lftt;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1067
    iget-boolean v1, p1, Lfsv;->g:Z

    if-eqz v1, :cond_4

    sget v1, Lezg$l;->icon_up:I

    :goto_3
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1068
    new-instance v0, Lftt$2;

    invoke-direct {v0, p0, p1}, Lftt$2;-><init>(Lftt;Lfsv;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    :goto_4
    return-void

    .line 1041
    :cond_0
    iget-object v1, p1, Lfsv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1044
    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1056
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1065
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lezg$l;->dt_bizcard_label_expand:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1067
    :cond_4
    sget v1, Lezg$l;->icon_down:I

    goto :goto_3

    .line 1077
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1078
    sget v0, Lezg$h;->name_card_orgs_cell_ll_fold:I

    invoke-virtual {p0, v0}, Lftt;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lftt;->a(Landroid/view/View;Z)V

    .line 1079
    sget v0, Lezg$h;->name_card_orgs_cell_tv_fold:I

    invoke-virtual {p0, v0}, Lftt;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lftt;->a(Landroid/view/View;Z)V

    goto :goto_4
.end method
