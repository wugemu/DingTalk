.class public final Laxy;
.super Landroid/widget/BaseAdapter;
.source "DingConfirmAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbff;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Lbhw;

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lbff;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lbff;>;"
    .local p3, "checkedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Laxy;->b:I

    .line 34
    iput-object p1, p0, Laxy;->g:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Laxy;->a:Ljava/util/List;

    .line 36
    iput-object p3, p0, Laxy;->c:Ljava/util/HashSet;

    .line 37
    return-void
.end method

.method private a(I)Lbff;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Laxy;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Laxy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 52
    iget-object v0, p0, Laxy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbff;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Laxy;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laxy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Laxy;->a(I)Lbff;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/high16 v11, 0x41900000    # 18.0f

    const/16 v10, 0x8

    const/4 v4, 0x0

    .line 63
    if-nez p2, :cond_2

    .line 64
    iget-object v2, p0, Laxy;->g:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxp$g;->ding_item_ding_receiver:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v0, Lbii;

    iget-object v2, p0, Laxy;->g:Landroid/app/Activity;

    invoke-direct {v0, v2, p0, p2}, Lbii;-><init>(Landroid/app/Activity;Laxy;Landroid/view/View;)V

    .line 66
    .local v0, "holder":Lbii;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    iget-object v2, p0, Laxy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    move v3, v1

    :goto_1
    invoke-direct {p0, p1}, Laxy;->a(I)Lbff;

    move-result-object v6

    .line 1050
    if-eqz v6, :cond_1

    .line 1090
    iget-object v2, v0, Lbii;->b:Laxy;

    .line 2087
    iget v2, v2, Laxy;->b:I

    .line 1090
    if-nez v2, :cond_6

    .line 1091
    iget-object v2, v0, Lbii;->h:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1092
    iget-object v2, v0, Lbii;->b:Laxy;

    .line 2091
    iget-object v2, v2, Laxy;->c:Ljava/util/HashSet;

    .line 1092
    if-eqz v2, :cond_4

    iget-object v2, v0, Lbii;->b:Laxy;

    .line 3091
    iget-object v2, v2, Laxy;->c:Ljava/util/HashSet;

    .line 1092
    iget-wide v8, v6, Lchg;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1093
    iget-object v2, v0, Lbii;->c:Landroid/view/View;

    iget-object v7, v0, Lbii;->a:Landroid/app/Activity;

    sget v8, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v7, v8}, Ldp;->c(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1097
    :goto_2
    iget-object v2, v0, Lbii;->h:Landroid/widget/CheckBox;

    iget-object v7, v0, Lbii;->b:Laxy;

    .line 4091
    iget-object v7, v7, Laxy;->c:Ljava/util/HashSet;

    .line 1097
    if-eqz v7, :cond_5

    iget-object v7, v0, Lbii;->b:Laxy;

    .line 5091
    iget-object v7, v7, Laxy;->c:Ljava/util/HashSet;

    .line 1097
    iget-wide v8, v6, Lchg;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6061
    :goto_4
    iget-object v1, v0, Lbii;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6062
    iget-object v2, v0, Lbii;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6064
    iget-object v7, v0, Lbii;->b:Laxy;

    .line 6107
    iget-boolean v7, v7, Laxy;->d:Z

    .line 6064
    if-eqz v7, :cond_7

    .line 6065
    iget-wide v8, v6, Lchg;->i:J

    invoke-static {v8, v9}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 6069
    :cond_0
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 6070
    iget-object v5, v0, Lbii;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6071
    iget-object v5, v0, Lbii;->a:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6072
    iget-object v1, v0, Lbii;->a:Landroid/app/Activity;

    invoke-static {v1, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 8082
    :goto_6
    iget-object v1, v0, Lbii;->e:Landroid/widget/TextView;

    invoke-static {v6}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8086
    iget-object v1, v0, Lbii;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v6}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v6, Lchg;->g:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v2, v5, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 8105
    iget-object v1, v0, Lbii;->h:Landroid/widget/CheckBox;

    new-instance v2, Lbii$1;

    invoke-direct {v2, v0, v6}, Lbii$1;-><init>(Lbii;Lchg;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8122
    iget-object v1, v0, Lbii;->c:Landroid/view/View;

    new-instance v2, Lbii$2;

    invoke-direct {v2, v0, v6}, Lbii$2;-><init>(Lbii;Lchg;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8147
    :cond_1
    if-eqz v3, :cond_9

    .line 8148
    iget-object v1, v0, Lbii;->g:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 8149
    iget-object v1, v0, Lbii;->i:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_7
    return-object p2

    .line 68
    .end local v0    # "holder":Lbii;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbii;

    .restart local v0    # "holder":Lbii;
    goto/16 :goto_0

    :cond_3
    move v3, v4

    .line 70
    goto/16 :goto_1

    .line 1095
    :cond_4
    iget-object v2, v0, Lbii;->c:Landroid/view/View;

    sget v7, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_5
    move v1, v4

    .line 1097
    goto/16 :goto_3

    .line 1099
    :cond_6
    iget-object v1, v0, Lbii;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1100
    iget-object v1, v0, Lbii;->c:Landroid/view/View;

    sget v2, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 6066
    :cond_7
    iget-object v7, v0, Lbii;->b:Laxy;

    .line 7103
    iget-boolean v7, v7, Laxy;->e:Z

    .line 6066
    if-eqz v7, :cond_0

    .line 6067
    invoke-virtual {v6}, Lchg;->a()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 6074
    :cond_8
    iget-object v7, v0, Lbii;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6075
    iget-object v7, v0, Lbii;->a:Landroid/app/Activity;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6076
    iget-object v1, v0, Lbii;->a:Landroid/app/Activity;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v1, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6077
    iget-object v1, v0, Lbii;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 8151
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_9
    iget-object v1, v0, Lbii;->i:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 8152
    iget-object v1, v0, Lbii;->g:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method
