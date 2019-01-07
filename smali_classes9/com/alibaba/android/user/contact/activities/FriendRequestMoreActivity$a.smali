.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;
.super Landroid/widget/BaseAdapter;
.source "FriendRequestMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;
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
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 515
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .line 528
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 529
    :cond_0
    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 537
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 543
    .local v5, "item":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    if-nez v5, :cond_0

    move-object v6, p2

    .line 578
    .end local p2    # "convertView":Landroid/view/View;
    .local v6, "convertView":Landroid/view/View;
    :goto_0
    return-object v6

    .line 547
    .end local v6    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_2

    .line 548
    new-instance v7, Lfgo$h;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;)V

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .line 562
    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->i(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Landroid/widget/ListView;

    move-result-object v4

    const-string/jumbo v8, ""

    invoke-direct {v7, v0, v3, v4, v8}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;)V

    .line 563
    .local v7, "viewHolder":Lfgo$l;
    invoke-virtual {v7}, Lfgo$l;->a()Landroid/view/View;

    move-result-object p2

    .line 564
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 568
    :goto_1
    if-eqz v7, :cond_1

    .line 569
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 570
    invoke-virtual {v7}, Lfgo$l;->a()Landroid/view/View;

    move-result-object v0

    sget v3, Lezg$h;->view_full_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 571
    invoke-virtual {v7}, Lfgo$l;->a()Landroid/view/View;

    move-result-object v0

    sget v3, Lezg$h;->view_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v9}, Lfxp;->a(Landroid/view/View;I)V

    .line 576
    :goto_2
    new-instance v0, Lfgm;

    if-nez p1, :cond_4

    move v3, v2

    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_5

    move v4, v2

    :goto_4
    move v2, p1

    invoke-direct/range {v0 .. v5}, Lfgm;-><init>(IIZZLcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-virtual {v7, p1, v0}, Lfgo$l;->a(ILfgm;)V

    :cond_1
    move-object v6, p2

    .line 578
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v6    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 566
    .end local v6    # "convertView":Landroid/view/View;
    .end local v7    # "viewHolder":Lfgo$l;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfgo$l;

    .restart local v7    # "viewHolder":Lfgo$l;
    goto :goto_1

    .line 573
    :cond_3
    invoke-virtual {v7}, Lfgo$l;->a()Landroid/view/View;

    move-result-object v0

    sget v3, Lezg$h;->view_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 574
    invoke-virtual {v7}, Lfgo$l;->a()Landroid/view/View;

    move-result-object v0

    sget v3, Lezg$h;->view_full_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v9}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    move v3, v1

    .line 576
    goto :goto_3

    :cond_5
    move v4, v1

    goto :goto_4
.end method
