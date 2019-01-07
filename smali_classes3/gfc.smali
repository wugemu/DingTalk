.class public final Lgfc;
.super Ljava/lang/Object;
.source "MemberViewHolder.java"


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/CheckBox;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lgfd$a;Lgfd;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Lgfd$a;
    .param p3, "adapter"    # Lgfd;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 92
    .line 2278
    iget v0, p3, Lgfd;->a:I

    .line 92
    if-ne v0, v7, :cond_2

    move v2, v7

    .line 3044
    .local v2, "isEditMode":Z
    :goto_0
    iget-object v5, p2, Lgfd$a;->a:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 95
    .local v5, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    iget-object v1, p0, Lgfc;->b:Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lgfc;->b:Landroid/widget/CheckBox;

    .line 3052
    iget-boolean v1, p2, Lgfd$a;->b:Z

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v9, p0, Lgfc;->b:Landroid/widget/CheckBox;

    new-instance v0, Lgfc$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgfc$1;-><init>(Lgfc;ZLgfd$a;Lgfd;Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v9, p0, Lgfc;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lgfc$2;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgfc$2;-><init>(Lgfc;ZLgfd$a;Lgfd;Lcom/alibaba/dingtalk/cspace/functions/members/Member;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3151
    iget-object v0, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lgfc;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lgfc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v1, ""

    .line 3159
    iget-object v3, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->e:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6060
    :goto_2
    iget-char v0, p2, Lgfd$a;->c:C

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lgfc;->e:Landroid/widget/TextView;

    .line 7060
    iget-char v1, p2, Lgfd$a;->c:C

    .line 131
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lgfc;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7131
    :cond_0
    iget v0, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 135
    if-ne v0, v7, :cond_5

    .line 7167
    iget v0, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->f:I

    .line 135
    if-eqz v0, :cond_5

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8167
    iget v1, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->f:I

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 138
    .local v6, "groupTagIcon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 138
    invoke-virtual {v6, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    iget-object v0, p0, Lgfc;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v6, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v6    # "groupTagIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_3
    return-void

    .end local v2    # "isEditMode":Z
    .end local v5    # "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    :cond_2
    move v2, v8

    .line 92
    goto/16 :goto_0

    .line 95
    .restart local v2    # "isEditMode":Z
    .restart local v5    # "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 126
    :cond_4
    iget-object v0, p0, Lgfc;->d:Landroid/widget/TextView;

    .line 4151
    iget-object v1, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lgfc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 5151
    iget-object v1, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 5159
    iget-object v3, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->e:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9131
    :cond_5
    iget v0, v5, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 144
    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lgfc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lfzs$e;->space_acl_member_dept_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_3

    .line 143
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method a(Lgfd;)V
    .locals 6
    .param p1, "adapter"    # Lgfd;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 79
    .line 1278
    iget v2, p1, Lgfd;->a:I

    .line 79
    if-ne v2, v0, :cond_0

    .line 80
    .local v0, "isEditMode":Z
    :goto_0
    iget-object v2, p0, Lgfc;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v4, p0, Lgfc;->b:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 82
    iget-object v2, p0, Lgfc;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 83
    iget-object v1, p0, Lgfc;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lgfc;->d:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lgfc;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v1, p0, Lgfc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lgfc;->e:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lgfc;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    return-void

    .end local v0    # "isEditMode":Z
    :cond_0
    move v0, v1

    .line 79
    goto :goto_0

    .restart local v0    # "isEditMode":Z
    :cond_1
    move v2, v3

    .line 81
    goto :goto_1
.end method
