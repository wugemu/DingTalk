.class public final Laxw;
.super Landroid/widget/BaseAdapter;
.source "DingCheckInAdapter.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/util/List",
            "<",
            "Lchg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p4, "data":Ljava/util/List;, "Ljava/util/List<Lchg;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Laxw;->a:Landroid/app/Activity;

    .line 31
    iput-wide p2, p0, Laxw;->b:J

    .line 32
    iput-object p4, p0, Laxw;->c:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Laxw;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laxw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Laxw;->c:Ljava/util/List;

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Laxw;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 48
    iget-object v0, p0, Laxw;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
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
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 59
    if-nez p2, :cond_5

    .line 60
    iget-object v3, p0, Laxw;->a:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v7, Laxp$g;->ding_item_ding_check_in:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Lbic;

    iget-object v3, p0, Laxw;->a:Landroid/app/Activity;

    invoke-direct {v0, v3, p2}, Lbic;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 62
    .local v0, "holder":Lbic;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v3, p0, Laxw;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchg;

    .line 67
    .local v2, "userObject":Lchg;
    iget-object v3, p0, Laxw;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_6

    move v1, v4

    .line 68
    .local v1, "isLastPosition":Z
    :goto_1
    instance-of v3, p3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_4

    .line 69
    iget-wide v8, p0, Laxw;->b:J

    check-cast p3, Landroid/widget/AbsListView;

    .line 1049
    .end local p3    # "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 1061
    if-eqz v2, :cond_0

    .line 1064
    iget-object v3, v0, Lbic;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v2, Lchg;->g:Ljava/lang/String;

    invoke-virtual {v3, v7, v10, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1068
    :cond_0
    if-eqz v2, :cond_1

    .line 1071
    instance-of v3, v2, Lbff;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lbff;

    iget v3, v3, Lbff;->b:I

    if-nez v3, :cond_7

    .line 1072
    iget-object v3, v0, Lbic;->c:Landroid/widget/TextView;

    invoke-static {v2}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 1088
    iget v3, v2, Lchg;->l:I

    if-nez v3, :cond_8

    .line 1089
    iget-object v3, v0, Lbic;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1106
    :cond_2
    :goto_3
    instance-of v3, v2, Lbff;

    if-eqz v3, :cond_b

    move-object v3, v2

    check-cast v3, Lbff;

    .line 2045
    iget-object v4, v3, Lbff;->c:Ljava/util/Map;

    if-nez v4, :cond_a

    move v3, v5

    .line 1107
    :goto_4
    if-eqz v3, :cond_b

    .line 1108
    iget-object v3, v0, Lbic;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2115
    :goto_5
    iget-object v3, v0, Lbic;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2119
    if-eqz v2, :cond_4

    .line 2122
    iget-object v3, v0, Lbic;->a:Landroid/view/View;

    new-instance v4, Lbic$1;

    invoke-direct {v4, v0, v2}, Lbic$1;-><init>(Lbic;Lchg;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_4
    return-object p2

    .line 64
    .end local v0    # "holder":Lbic;
    .end local v1    # "isLastPosition":Z
    .end local v2    # "userObject":Lchg;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbic;

    .restart local v0    # "holder":Lbic;
    goto :goto_0

    .restart local v2    # "userObject":Lchg;
    :cond_6
    move v1, v5

    .line 67
    goto :goto_1

    .line 1074
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "isLastPosition":Z
    :cond_7
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1075
    invoke-static {v2}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1076
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v10, "("

    aput-object v10, v7, v5

    iget-object v10, v0, Lbic;->g:Landroid/app/Activity;

    sget v11, Laxp$i;->dt_meeting_check_in_not_receiver:I

    .line 1078
    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v4

    const/4 v4, 0x2

    const-string/jumbo v10, ")"

    aput-object v10, v7, v4

    .line 1076
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbjn;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1080
    iget-object v4, v0, Lbic;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1091
    :cond_8
    iget-object v3, v0, Lbic;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1092
    iget-wide v10, v2, Lchg;->m:J

    invoke-static {v10, v11, v8, v9}, Lbkm;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1094
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1095
    iget-wide v10, v2, Lchg;->m:J

    sub-long v8, v10, v8

    invoke-static {v8, v9}, Lbkm;->a(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1096
    iget-wide v8, v2, Lchg;->m:J

    invoke-static {v8, v9}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1097
    iget-object v4, v0, Lbic;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1100
    :cond_9
    iget-object v3, v0, Lbic;->d:Landroid/widget/TextView;

    iget-wide v8, v2, Lchg;->m:J

    invoke-static {v8, v9}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2048
    :cond_a
    iget-object v3, v3, Lbff;->c:Ljava/util/Map;

    const-string/jumbo v4, "addByCheckIn"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto/16 :goto_4

    .line 1110
    :cond_b
    iget-object v3, v0, Lbic;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method
