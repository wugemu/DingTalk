.class public final Layb;
.super Landroid/widget/BaseAdapter;
.source "DingMeetingStatusAdapter.java"


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

.field public d:I

.field public e:Lbhw;

.field private f:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p4, "bizStatus"    # I
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lbff;>;"
    .local p3, "checkedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Layb;->b:I

    .line 36
    iput-object p1, p0, Layb;->f:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Layb;->a:Ljava/util/List;

    .line 38
    iput-object p3, p0, Layb;->c:Ljava/util/HashSet;

    .line 39
    iput p4, p0, Layb;->d:I

    .line 40
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Layb;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Layb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Layb;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    if-nez p2, :cond_3

    .line 61
    iget-object v3, p0, Layb;->f:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Laxp$g;->ding_item_ding_receiver:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lbil;

    iget-object v3, p0, Layb;->f:Landroid/app/Activity;

    invoke-direct {v0, v3, p0, p2}, Lbil;-><init>(Landroid/app/Activity;Layb;Landroid/view/View;)V

    .line 63
    .local v0, "holder":Lbil;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v3, p0, Layb;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchg;

    .line 68
    .local v2, "userObject":Lchg;
    iget-object v3, p0, Layb;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    .line 69
    .local v1, "isLastPosition":Z
    :goto_1
    iget v5, p0, Layb;->b:I

    .line 1057
    if-eqz v2, :cond_2

    .line 1086
    if-nez v5, :cond_6

    .line 1087
    iget-object v3, v0, Lbil;->j:Layb;

    .line 1099
    iget-object v3, v3, Layb;->c:Ljava/util/HashSet;

    .line 1087
    if-eqz v3, :cond_5

    iget-object v3, v0, Lbil;->j:Layb;

    .line 2099
    iget-object v3, v3, Layb;->c:Ljava/util/HashSet;

    .line 1087
    iget-wide v6, v2, Lchg;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1088
    iget-object v3, v0, Lbil;->a:Landroid/view/View;

    iget-object v4, v0, Lbil;->i:Landroid/app/Activity;

    sget v6, Laxp$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-static {v4, v6}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3098
    :goto_2
    if-nez v5, :cond_8

    .line 3099
    iget-object v3, v0, Lbil;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 3100
    iget-object v4, v0, Lbil;->f:Landroid/widget/CheckBox;

    iget-object v3, v0, Lbil;->j:Layb;

    .line 4099
    iget-object v3, v3, Layb;->c:Ljava/util/HashSet;

    .line 3100
    if-eqz v3, :cond_7

    iget-object v3, v0, Lbil;->j:Layb;

    .line 5099
    iget-object v3, v3, Layb;->c:Ljava/util/HashSet;

    .line 3100
    iget-wide v6, v2, Lchg;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5107
    :goto_4
    iget-object v3, v0, Lbil;->f:Landroid/widget/CheckBox;

    new-instance v4, Lbil$1;

    invoke-direct {v4, v0, v2}, Lbil$1;-><init>(Lbil;Lchg;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5123
    iget-object v4, v0, Lbil;->f:Landroid/widget/CheckBox;

    .line 5640
    if-eqz v2, :cond_9

    iget v3, v2, Lchg;->h:I

    const/16 v6, 0xa

    if-ge v3, v6, :cond_0

    iget v3, v2, Lchg;->h:I

    if-nez v3, :cond_9

    :cond_0
    const/4 v3, 0x1

    .line 5123
    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1061
    invoke-virtual {v2}, Lchg;->a()Ljava/lang/String;

    move-result-object v6

    .line 6127
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6128
    iget-object v3, v0, Lbil;->d:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6136
    :goto_6
    iget-object v3, v0, Lbil;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    check-cast p3, Landroid/widget/AbsListView;

    .line 6140
    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v3, v0, Lbil;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6141
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget v4, Lcjj;->q:I

    :goto_7
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6142
    iget-object v3, v0, Lbil;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v2, Lchg;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v7, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 6146
    iget-object v3, v0, Lbil;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6147
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Lcjj;->q:I

    :goto_8
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6151
    iget-object v3, v0, Lbil;->a:Landroid/view/View;

    new-instance v4, Lbil$2;

    invoke-direct {v4, v0, v5, v2}, Lbil$2;-><init>(Lbil;ILchg;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    const/4 v3, 0x0

    .line 1068
    iget-object v4, v0, Lbil;->j:Layb;

    .line 7095
    iget v4, v4, Layb;->d:I

    .line 1068
    invoke-static {v4}, Lbkh;->d(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v2, Lchg;->i:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 1069
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$i;->dt_ding_task_status_unread:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8077
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 8078
    iget-object v3, v0, Lbil;->h:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8174
    :cond_2
    :goto_9
    if-eqz v1, :cond_e

    .line 8175
    iget-object v3, v0, Lbil;->e:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8176
    iget-object v3, v0, Lbil;->g:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_a
    return-object p2

    .line 65
    .end local v0    # "holder":Lbil;
    .end local v1    # "isLastPosition":Z
    .end local v2    # "userObject":Lchg;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbil;

    .restart local v0    # "holder":Lbil;
    goto/16 :goto_0

    .line 68
    .restart local v2    # "userObject":Lchg;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1090
    .restart local v1    # "isLastPosition":Z
    :cond_5
    iget-object v3, v0, Lbil;->a:Landroid/view/View;

    sget v4, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 1093
    :cond_6
    iget-object v3, v0, Lbil;->a:Landroid/view/View;

    sget v4, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3100
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3102
    :cond_8
    iget-object v3, v0, Lbil;->f:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_4

    .line 5640
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 6130
    :cond_a
    iget-object v3, v0, Lbil;->d:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6131
    iget-object v3, v0, Lbil;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 6141
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_b
    sget v4, Lcjj;->g:I

    goto/16 :goto_7

    .line 6147
    :cond_c
    sget v4, Lcjj;->i:I

    goto/16 :goto_8

    .line 8080
    :cond_d
    iget-object v4, v0, Lbil;->h:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8081
    iget-object v4, v0, Lbil;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 8178
    :cond_e
    iget-object v3, v0, Lbil;->g:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8179
    iget-object v3, v0, Lbil;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method
