.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;
.super Landroid/widget/BaseAdapter;
.source "NewMsgUnreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 469
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->b:Ljava/util/List;

    .line 470
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 498
    if-nez p2, :cond_1

    .line 499
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 1536
    .local v0, "holder":Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;
    iget-object p2, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    .line 504
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;->b:Ljava/util/List;

    .line 1540
    if-eqz v4, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 505
    :cond_0
    :goto_1
    return-object p2

    .line 502
    .end local v0    # "holder":Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;

    .restart local v0    # "holder":Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;
    goto :goto_0

    .line 1544
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    .line 1545
    iget-object v1, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    .line 1548
    iget-object v1, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1550
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    .line 1552
    :goto_2
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    .line 1553
    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    .line 1554
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->d:Landroid/widget/TextView;

    sget v6, Lctk$i;->dt_im_receiver_by_at:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1555
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    add-int/lit8 v1, p1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1557
    add-int/lit8 v1, p1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    .line 1558
    if-nez v1, :cond_3

    move v2, v3

    .line 1570
    :cond_3
    :goto_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v6, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->e:Landroid/widget/TextView;

    iget-object v4, v5, Ldqw;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    iget-object v1, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1573
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->f:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    :goto_4
    if-eqz v2, :cond_8

    .line 1578
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    :goto_5
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->h:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iget-object v2, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v1, v2}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    .line 1643
    const/4 v1, 0x2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->n(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 1644
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1661
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-nez v1, :cond_9

    .line 1647
    :goto_6
    if-eqz v3, :cond_a

    .line 1648
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lctk$c;->ui_common_white_icon_pressed_bg_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1652
    :goto_7
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 1550
    goto/16 :goto_2

    .line 1562
    :cond_5
    if-nez v1, :cond_6

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_6

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, p1, -0x1

    .line 1563
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    if-eqz v1, :cond_6

    .line 1564
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->d:Landroid/widget/TextView;

    sget v4, Lctk$i;->dt_im_receiver_other:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1565
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1567
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1575
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1580
    :cond_8
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->g:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1665
    :cond_9
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->j:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->k(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_6

    .line 1650
    :cond_a
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v2, Lctk$e;->common_white_cell_selector:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .line 1654
    :cond_b
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1655
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$c;->a:Landroid/view/View;

    sget v2, Lctk$e;->common_white_cell_selector:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
