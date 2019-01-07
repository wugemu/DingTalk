.class public Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "DropDownMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;,
        Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lgqn;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;)Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$a;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;-><init>()V

    .line 34
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lfzs$g;->dropdown_list_item:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    sget v2, Lfzs$f;->if_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1104
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 37
    sget v2, Lfzs$f;->tv_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2104
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->c:Landroid/widget/TextView;

    .line 38
    sget v2, Lfzs$f;->rl_bg:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 3104
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 39
    sget v2, Lfzs$f;->if_select_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4104
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 40
    sget v2, Lfzs$f;->line_full:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5104
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->f:Landroid/view/View;

    .line 41
    sget v2, Lfzs$f;->line_short:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6104
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->e:Landroid/view/View;

    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqn;

    .line 48
    .local v0, "item":Lgqn;
    if-eqz v0, :cond_0

    .line 7081
    iget v2, v0, Lgqn;->c:I

    .line 49
    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    .line 9104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->f:Landroid/view/View;

    .line 62
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->e:Landroid/view/View;

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13065
    :goto_2
    iget-boolean v2, v0, Lgqn;->a:Z

    .line 68
    if-nez v2, :cond_3

    .line 13104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->c:Landroid/widget/TextView;

    .line 69
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lfzs$c;->cspace_bottom_disable:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16104
    :goto_3
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->c:Landroid/widget/TextView;

    .line 17073
    iget-object v5, v0, Lgqn;->b:Ljava/lang/String;

    .line 77
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->c:Landroid/widget/TextView;

    .line 18089
    iget-boolean v5, v0, Lgqn;->d:Z

    .line 78
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 18104
    iget-object v5, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 19089
    iget-boolean v2, v0, Lgqn;->d:Z

    .line 79
    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 20065
    iget-boolean v2, v0, Lgqn;->a:Z

    .line 80
    if-eqz v2, :cond_6

    .line 20104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 81
    sget v3, Lfzs$e;->ui_common_cell_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 21104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 82
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    :goto_5
    return-object p2

    .line 45
    .end local v0    # "item":Lgqn;
    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;
    goto :goto_0

    .line 7104
    .restart local v0    # "item":Lgqn;
    :pswitch_0
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 51
    sget v5, Lfzs$h;->icon_a_fill:I

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 8104
    :pswitch_1
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 54
    sget v5, Lfzs$h;->icon_clock_fill:I

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_1

    .line 11104
    :cond_2
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->f:Landroid/view/View;

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->e:Landroid/view/View;

    .line 66
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 14089
    :cond_3
    iget-boolean v2, v0, Lgqn;->d:Z

    .line 71
    if-eqz v2, :cond_4

    .line 14104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->c:Landroid/widget/TextView;

    .line 72
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 15104
    :cond_4
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->c:Landroid/widget/TextView;

    .line 74
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lfzs$c;->ui_common_level1_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_5
    move v2, v4

    .line 79
    goto :goto_4

    .line 22104
    :cond_6
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 91
    sget v3, Lfzs$c;->cspace_list_item_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 23104
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$b;->a:Landroid/widget/RelativeLayout;

    .line 93
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenuAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
