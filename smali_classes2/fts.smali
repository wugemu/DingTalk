.class public final Lfts;
.super Lfsd;
.source "NameCardOrgsItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsu;",
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
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 21
    check-cast p1, Lfsu;

    .line 1029
    sget v0, Lezg$h;->name_card_orgs_cell_left_avatar:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1030
    sget v1, Lezg$h;->name_card_orgs_cell_title:I

    invoke-virtual {p0, v1}, Lfts;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1031
    sget v2, Lezg$h;->name_card_orgs_cell_certify:I

    invoke-virtual {p0, v2}, Lfts;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1033
    if-eqz p1, :cond_3

    .line 1034
    iget-object v3, p1, Lfsu;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1035
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1036
    iget-object v3, p1, Lfsu;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_0
    iget-object v0, p1, Lfsu;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lfts;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1044
    iget v0, p1, Lfsu;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1045
    invoke-static {v2, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1046
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$e;->ui_common_warming_bg_color:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2026
    :goto_1
    iget-object v0, p0, Lfsd;->a:Landroid/view/View;

    .line 1054
    new-instance v1, Lfts$1;

    invoke-direct {v1, p0, p1}, Lfts$1;-><init>(Lfts;Lfsu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    sget v0, Lezg$h;->name_card_orgs_cell_tv_cell_tile:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p1, Lfsu;->e:Z

    invoke-static {v0, v1}, Lfts;->a(Landroid/view/View;Z)V

    .line 1063
    sget v0, Lezg$h;->name_card_orgs_cell_arrow:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p1, Lfsu;->f:Z

    invoke-static {v0, v1}, Lfts;->a(Landroid/view/View;Z)V

    .line 1064
    sget v0, Lezg$h;->bottom_divider:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p1, Lfsu;->g:Z

    invoke-static {v0, v1}, Lfts;->a(Landroid/view/View;Z)V

    :goto_2
    return-void

    .line 1039
    :cond_0
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto :goto_0

    .line 1047
    :cond_1
    iget v0, p1, Lfsu;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1048
    invoke-static {v2, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1049
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lezg$e;->bg_blue:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_1

    .line 1051
    :cond_2
    invoke-static {v2, v5}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 1067
    :cond_3
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1068
    const-string/jumbo v0, ""

    invoke-static {v1, v0}, Lfts;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1069
    invoke-static {v2, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 3026
    iget-object v0, p0, Lfsd;->a:Landroid/view/View;

    .line 1070
    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    sget v0, Lezg$h;->name_card_orgs_cell_tv_cell_tile:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lfts;->a(Landroid/view/View;Z)V

    .line 1072
    sget v0, Lezg$h;->name_card_orgs_cell_arrow:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lfts;->a(Landroid/view/View;Z)V

    .line 1073
    sget v0, Lezg$h;->bottom_divider:I

    invoke-virtual {p0, v0}, Lfts;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lfts;->a(Landroid/view/View;Z)V

    goto :goto_2
.end method
