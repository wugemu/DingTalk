.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;
.super Landroid/widget/BaseAdapter;
.source "GroupAnchorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-nez v4, :cond_2

    const-wide/16 v2, 0x0

    .line 403
    .local v2, "ownerId":J
    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 404
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .line 405
    .local v1, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    if-eqz v1, :cond_0

    .line 1437
    if-eqz v1, :cond_3

    .line 1440
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .line 1441
    if-eqz v4, :cond_1

    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    iget-wide v12, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    cmp-long v4, v10, v12

    if-nez v4, :cond_1

    move v4, v5

    .line 405
    :goto_2
    if-nez v4, :cond_0

    .line 406
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    cmp-long v4, v2, v8

    if-nez v4, :cond_4

    .line 407
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v4, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 411
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    .line 402
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    .end local v2    # "ownerId":J
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v2

    goto :goto_0

    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    .restart local v2    # "ownerId":J
    :cond_3
    move v4, v6

    .line 1445
    goto :goto_2

    .line 409
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v4, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 415
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    :cond_5
    if-eqz v0, :cond_6

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->notifyDataSetChanged()V

    .line 418
    :cond_6
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 455
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 463
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 469
    if-nez p2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbtp$f;->layout_item_group_anchor:I

    invoke-virtual {v2, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 471
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-direct {v0, v2, p2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;Landroid/view/View;)V

    .line 472
    .local v0, "holder":Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 476
    :goto_0
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .line 478
    .local v1, "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    if-eqz v1, :cond_0

    .line 479
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    .line 1502
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 1503
    if-eqz v4, :cond_0

    .line 1507
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->b:Landroid/widget/TextView;

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2167
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1509
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->f:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->f:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1510
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->a:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1511
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->e:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1513
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->c:Landroid/widget/TextView;

    sget v3, Lbtp$g;->and_conversation_owner:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 482
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    :cond_0
    :goto_1
    return-object p2

    .line 474
    .end local v0    # "holder":Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;

    .restart local v0    # "holder":Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;
    goto :goto_0

    .line 1515
    .restart local v1    # "object":Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->a:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1516
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1517
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$b;->e:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
