.class public Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarShareListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->b:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->c:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 46
    const-string/jumbo v0, "[CalendarShareListAdapter] data size is not equal error"

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a(I)Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 75
    instance-of v1, p2, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;

    .end local p2    # "convertView":Landroid/view/View;
    move-object v0, p2

    .line 78
    .local v0, "shareReceiverItemView":Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->a(I)Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    move-result-object v3

    .line 1061
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    :cond_0
    move-object v1, v2

    .line 2045
    :goto_1
    if-eqz v3, :cond_1

    .line 2046
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v3

    .line 2047
    iget-object v4, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->c:Landroid/widget/TextView;

    sget v5, Laow$a;->calendar_share_privilege_read_text_color:I

    invoke-static {v5}, Leda;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2048
    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->SCHEDULE_VIEW:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v3, v4, :cond_4

    .line 2049
    iget-object v3, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->c:Landroid/widget/TextView;

    sget v4, Laow$f;->dt_ding_share_allow_view_folder:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2057
    :cond_1
    :goto_2
    if-eqz v1, :cond_6

    .line 2058
    iget-object v3, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 2167
    invoke-virtual {v3, v4, v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 2059
    iget-object v2, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_3
    return-object v0

    .line 75
    .end local v0    # "shareReceiverItemView":Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    new-instance v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;

    iget-object v1, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1064
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "shareReceiverItemView":Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/calendar/adapter/CalendarShareListAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    goto :goto_1

    .line 2050
    :cond_4
    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->VIEW_FREE_BUSY:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v3, v4, :cond_5

    .line 2051
    iget-object v3, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->c:Landroid/widget/TextView;

    sget v4, Laow$f;->dt_ding_share_allow_free_busy:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2052
    :cond_5
    sget-object v4, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->EDIT:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    if-ne v3, v4, :cond_1

    .line 2053
    iget-object v3, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->c:Landroid/widget/TextView;

    sget v4, Laow$f;->dt_ding_share_allow_edit:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2061
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v3, ""

    .line 3167
    invoke-virtual {v1, v3, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 2062
    iget-object v1, v0, Lcom/alibaba/android/calendar/widget/ShareReceiverItemView;->b:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
