.class public final Leup;
.super Leul;
.source "TeleConfFeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leup$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Levk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 43
    if-nez p2, :cond_1

    .line 44
    iget-object v4, p0, Leup;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1088
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v4, Leuj$j;->layout_conf_quality_problem_item:I

    .line 45
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v1, Leup$a;

    invoke-direct {v1, p0, v6}, Leup$a;-><init>(Leup;B)V

    .line 47
    .local v1, "itemHolder":Leup$a;
    sget v4, Leuj$i;->check_serial_num:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Leup$a;->a:Landroid/widget/TextView;

    .line 48
    sget v4, Leuj$i;->check_content:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Leup$a;->b:Landroid/widget/TextView;

    .line 49
    sget v4, Leuj$i;->check_status:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v1, Leup$a;->c:Landroid/widget/CheckBox;

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Leup;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Levk;

    .line 57
    .local v2, "problemObject":Levk;
    if-eqz v2, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "serialNumStr":Ljava/lang/String;
    iget-object v4, v1, Leup$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, v1, Leup$a;->b:Landroid/widget/TextView;

    iget-object v5, v2, Levk;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, v1, Leup$a;->c:Landroid/widget/CheckBox;

    iget-boolean v5, v2, Levk;->c:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 62
    iget-object v4, v1, Leup$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 63
    if-nez p1, :cond_3

    .line 64
    iget-boolean v4, v2, Levk;->c:Z

    if-eqz v4, :cond_2

    .line 65
    sget v4, Leuj$h;->conf_bg_gray_up_corners_shape:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    .end local v3    # "serialNumStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 53
    .end local v1    # "itemHolder":Leup$a;
    .end local v2    # "problemObject":Levk;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leup$a;

    .restart local v1    # "itemHolder":Leup$a;
    goto :goto_0

    .line 67
    .restart local v2    # "problemObject":Levk;
    .restart local v3    # "serialNumStr":Ljava/lang/String;
    :cond_2
    sget v4, Leuj$h;->conf_bg_white_up_corners_shape:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 69
    :cond_3
    iget-object v4, p0, Leup;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    .line 70
    iget-boolean v4, v2, Levk;->c:Z

    if-eqz v4, :cond_4

    .line 71
    sget v4, Leuj$h;->conf_bg_gray_down_corners_shape:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 73
    :cond_4
    sget v4, Leuj$h;->conf_bg_white_down_corners_shape:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 76
    :cond_5
    iget-boolean v4, v2, Levk;->c:Z

    if-eqz v4, :cond_6

    .line 77
    iget-object v4, p0, Leup;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->conf_text_item_checked_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 79
    :cond_6
    iget-object v4, p0, Leup;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$f;->pure_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
