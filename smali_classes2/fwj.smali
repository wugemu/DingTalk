.class public final Lfwj;
.super Lfxq;
.source "SettingLabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfwj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/settings/model/LabItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    if-nez p2, :cond_3

    .line 33
    new-instance v1, Lfwj$a;

    invoke-direct {v1, p0}, Lfwj$a;-><init>(Lfwj;)V

    .line 34
    .local v1, "viewHolder":Lfwj$a;
    iget-object v2, p0, Lfwj;->i:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->layout_item_lab:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    sget v2, Lezg$h;->tv_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfwj$a;->a:Landroid/widget/TextView;

    .line 36
    sget v2, Lezg$h;->tv_summary:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfwj$a;->b:Landroid/widget/TextView;

    .line 37
    sget v2, Lezg$h;->img_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lfwj$a;->c:Landroid/widget/ImageView;

    .line 38
    sget v2, Lezg$h;->icon_lab_type:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lfwj$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 39
    sget v2, Lezg$h;->tv_lab_status:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lfwj$a;->e:Landroid/widget/TextView;

    .line 40
    sget v2, Lezg$h;->rl_lab_tip:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lfwj$a;->f:Landroid/widget/RelativeLayout;

    .line 42
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    iget-object v2, p0, Lfwj;->h:Ljava/util/List;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lfwj;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 48
    iget-object v2, p0, Lfwj;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/settings/model/LabItem;

    .line 50
    .local v0, "labItem":Lcom/alibaba/android/user/settings/model/LabItem;
    if-eqz v0, :cond_2

    .line 51
    iget-object v2, v1, Lfwj$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    iget v4, v0, Lcom/alibaba/android/user/settings/model/LabItem;->title:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v1, Lfwj$a;->b:Landroid/widget/TextView;

    iget v3, v0, Lcom/alibaba/android/user/settings/model/LabItem;->summary:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget v2, v0, Lcom/alibaba/android/user/settings/model/LabItem;->thumbIcon:I

    if-lez v2, :cond_1

    .line 54
    iget v2, v0, Lcom/alibaba/android/user/settings/model/LabItem;->type:I

    if-ne v2, v6, :cond_5

    .line 55
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcms;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    :cond_0
    iget-object v2, v1, Lfwj$a;->c:Landroid/widget/ImageView;

    iget v3, v0, Lcom/alibaba/android/user/settings/model/LabItem;->thumbIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_1
    :goto_1
    iget v2, v0, Lcom/alibaba/android/user/settings/model/LabItem;->labStatus:I

    if-ne v2, v7, :cond_9

    .line 75
    iget-object v2, v1, Lfwj$a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    iget-object v2, v1, Lfwj$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    sget v4, Lezg$l;->icon_clock:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v1, Lfwj$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 78
    iget-object v2, v1, Lfwj$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v2, v1, Lfwj$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_lab_on_going_functions:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .end local v0    # "labItem":Lcom/alibaba/android/user/settings/model/LabItem;
    :cond_2
    :goto_2
    return-object p2

    .line 44
    .end local v1    # "viewHolder":Lfwj$a;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfwj$a;

    .restart local v1    # "viewHolder":Lfwj$a;
    goto/16 :goto_0

    .line 58
    .restart local v0    # "labItem":Lcom/alibaba/android/user/settings/model/LabItem;
    :cond_4
    iget-object v2, v1, Lfwj$a;->c:Landroid/widget/ImageView;

    sget v3, Lezg$g;->icon_lab_efficient_thumb_en:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 60
    :cond_5
    iget v2, v0, Lcom/alibaba/android/user/settings/model/LabItem;->type:I

    if-ne v2, v7, :cond_8

    .line 61
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcms;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 62
    :cond_6
    iget-object v2, v1, Lfwj$a;->c:Landroid/widget/ImageView;

    iget v3, v0, Lcom/alibaba/android/user/settings/model/LabItem;->thumbIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 64
    :cond_7
    iget-object v2, v1, Lfwj$a;->c:Landroid/widget/ImageView;

    sget v3, Lezg$g;->icon_at_me_thumb_en:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 67
    :cond_8
    iget-object v2, v1, Lfwj$a;->c:Landroid/widget/ImageView;

    iget v3, v0, Lcom/alibaba/android/user/settings/model/LabItem;->thumbIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 80
    :cond_9
    iget v2, v0, Lcom/alibaba/android/user/settings/model/LabItem;->labStatus:I

    if-ne v2, v6, :cond_a

    .line 81
    iget-object v2, v1, Lfwj$a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v2, v1, Lfwj$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    sget v4, Lezg$l;->icon_right_line:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v1, Lfwj$a;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->common_theme_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 84
    iget-object v2, v1, Lfwj$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->common_theme_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v2, v1, Lfwj$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lfwj;->i:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_lab_finished_functions:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 87
    :cond_a
    iget-object v2, v1, Lfwj$a;->f:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method
