.class public Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "OrgNewContactActivity.java"

# interfaces
.implements Lfhw;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/String;

.field private E:Lcoi;

.field private F:Landroid/support/v4/app/Fragment;

.field private G:Landroid/os/Handler;

.field private H:I

.field private I:Z

.field private J:Landroid/content/BroadcastReceiver;

.field private K:I

.field private final L:I

.field private a:Lfhx;

.field private b:Lfhx;

.field private c:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

.field private d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:J

.field private x:J

.field private y:J

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    .line 119
    iput v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    .line 124
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->w:J

    .line 125
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    .line 126
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y:J

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->G:Landroid/os/Handler;

    .line 141
    iput v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->H:I

    .line 143
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->I:Z

    .line 515
    new-instance v0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->J:Landroid/content/BroadcastReceiver;

    .line 769
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->L:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;J)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
    .param p1, "x1"    # J

    .prologue
    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method private static a(J)Ljava/util/List;
    .locals 6
    .param p0, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_1

    .line 752
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 753
    .local v2, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    .line 754
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 755
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 756
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 757
    .local v1, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 758
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    .line 764
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v1    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/org/model/SelectModel;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    invoke-interface {v4}, Lfhx;->a()Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 405
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 406
    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    invoke-interface {v4}, Lfhx;->a()Ljava/util/List;

    move-result-object v3

    .line 411
    .local v3, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 412
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 413
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 414
    :cond_3
    invoke-static {v2}, Lcom/alibaba/android/user/contact/org/model/SelectModel;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/user/contact/org/model/SelectModel;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 419
    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .line 5131
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 5132
    invoke-virtual {v4}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c()V

    .line 5133
    iget-object v5, v4, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    .line 5364
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 5365
    iget-object v6, v5, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5366
    invoke-virtual {v5}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->notifyDataSetChanged()V

    .line 5134
    :cond_5
    invoke-virtual {v4}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a()V

    .line 420
    :cond_6
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "itemName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 638
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->bread_crumb_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 639
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 640
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->bread_crumbs_default:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 645
    :goto_0
    new-instance v1, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$13;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 663
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b()V

    .line 664
    return-void

    .line 643
    :cond_0
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;II)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
    .param p2, "x2"    # I

    .prologue
    const/4 v2, 0x0

    .line 87
    .line 10701
    :goto_0
    if-le p1, p2, :cond_0

    .line 10702
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10703
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->E:Lcoi;

    invoke-virtual {v1, v0}, Lcoi;->a(Ljava/lang/String;)V

    .line 10705
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10706
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10701
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 10708
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->setVisibility(I)V

    .line 10709
    sget v0, Lezg$h;->bottom_border_bread:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10711
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10712
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 10713
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->E:Lcoi;

    .line 11155
    iget-object v1, v1, Lcoi;->a:Ljava/util/HashMap;

    .line 10713
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 10714
    if-nez v1, :cond_5

    .line 10715
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10716
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10717
    const-string/jumbo v2, "count_limit"

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10718
    const-string/jumbo v2, "count_limit_tips"

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->u:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10720
    const-string/jumbo v2, "node"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10721
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10723
    new-instance v2, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-direct {v2}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;-><init>()V

    .line 10724
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10726
    :goto_1
    instance-of v1, v2, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 10727
    check-cast v1, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    .line 11478
    iput-object v3, v1, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->b:Lfhx;

    move-object v1, v2

    .line 10728
    check-cast v1, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    .line 12474
    iput-object v3, v1, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a:Lfhx;

    .line 10734
    :cond_1
    :goto_2
    iput-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    .line 10735
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->E:Lcoi;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcoi;->b(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 10737
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    if-eqz v0, :cond_4

    .line 10738
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->f()V

    :cond_2
    :goto_3
    return-void

    .line 10729
    :cond_3
    instance-of v1, v2, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 10730
    check-cast v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    .line 13139
    iput-object v3, v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a:Ljava/util/List;

    move-object v1, v2

    .line 10731
    check-cast v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    .line 13143
    iput-object v3, v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->b:Lfhx;

    move-object v1, v2

    .line 10732
    check-cast v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    .line 13147
    iput-object v3, v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c:Lfhx;

    goto :goto_2

    .line 10739
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    if-eqz v0, :cond_2

    .line 10740
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c()V

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
    .param p1, "x1"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 669
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 670
    .local v0, "breadCrumbCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 671
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 672
    .local v2, "view":Landroid/view/View;
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_1

    .line 673
    sget v3, Lezg$h;->tv_dept_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->text_color_bread_gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 675
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 676
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 684
    :goto_1
    if-nez v1, :cond_0

    if-le v0, v7, :cond_0

    .line 685
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 686
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 687
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 689
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 690
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :cond_1
    sget v3, Lezg$h;->tv_dept_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->text_color_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 680
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 681
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 692
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 838
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-ne v6, v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 862
    :goto_0
    return-void

    .line 840
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-ne v5, v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 842
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-nez v0, :cond_3

    .line 843
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 844
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    if-nez v0, :cond_2

    .line 845
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 850
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 851
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    if-nez v0, :cond_4

    .line 852
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    const-string/jumbo v1, "%s(%d)"

    new-array v2, v6, [Ljava/lang/Object;

    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 856
    :goto_1
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    if-nez v0, :cond_5

    .line 857
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    const-string/jumbo v1, "%s(%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 87
    .line 10240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 10241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 10242
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_1

    .line 10243
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y:J

    .line 10244
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    .line 10257
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    const-string/jumbo v1, "OrgContactFragment"

    invoke-virtual {p0, v4, v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 10260
    :goto_0
    return-void

    .line 10246
    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_0

    .line 10248
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 10249
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 10250
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 10251
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 10252
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 10253
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 10254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    .line 10255
    const-string/jumbo v0, "OrgContactFragment"

    invoke-virtual {p0, v1, v4, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10259
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 10260
    sget v0, Lezg$l;->select_org_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OrgSelectLocalDeptFragment"

    invoke-virtual {p0, v4, v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10262
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 901
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.choose.people.from.new.contact"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "choose_user_ids"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    invoke-interface {v4}, Lfhx;->b()[J

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 903
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    invoke-interface {v3}, Lfhx;->a()Ljava/util/List;

    move-result-object v2

    .line 904
    .local v2, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v3, "choose_user_identities"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 907
    const-string/jumbo v3, "choose_department_ids"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    invoke-interface {v4}, Lfhx;->b()[J

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 908
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    invoke-interface {v3}, Lfhx;->a()Ljava/util/List;

    move-result-object v0

    .line 909
    .local v0, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const-string/jumbo v3, "choose_department_array"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 912
    const-string/jumbo v3, "activity_identify"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string/jumbo v3, "choose_mode"

    iget v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    const-string/jumbo v3, "org_request_from_source_type"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 916
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 917
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    .line 918
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 940
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 941
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->cancel_create_conversation_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$5;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    .line 942
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$4;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    .line 949
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 953
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 954
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lfhx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lfhx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/user/widget/SelectorHorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    const/4 v2, 0x0

    .line 87
    .line 10434
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 10435
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 10436
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lezg$g;->icon_clear:I

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    :goto_0
    return-void

    .line 10438
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->G:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b()V

    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->H:I

    return v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->u:I

    return v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "fragmentKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 540
    const/4 v3, 0x0

    .line 541
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "choose_mode"

    iget v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    const-string/jumbo v6, "choose_enterprise_oid"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->w:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 544
    const-string/jumbo v6, "display_enterprise_oid"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 545
    const-string/jumbo v6, "display_department_oid"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 546
    const-string/jumbo v6, "node"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 547
    const-string/jumbo v6, "bread_node_name"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    invoke-static {v6, v7}, Lfxe;->a(J)Ljava/lang/String;

    move-result-object p2

    .line 554
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "OrgContactFragment"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 555
    :cond_1
    new-instance v3, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v3}, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;-><init>()V

    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    move-object v6, v3

    .line 556
    check-cast v6, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    .line 5478
    iput-object v7, v6, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->b:Lfhx;

    move-object v6, v3

    .line 557
    check-cast v6, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    .line 6474
    iput-object v7, v6, Lcom/alibaba/android/user/contact/org/fragment/OrgNewContactFragment;->a:Lfhx;

    .line 575
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 576
    .local v4, "key":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 578
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 579
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    const/4 v6, 0x0

    invoke-direct {p0, v6, p2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 583
    :cond_4
    const/4 v6, -0x1

    iget v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    if-eq v6, v7, :cond_8

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 584
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 585
    .local v5, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v5}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 586
    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-static {v5}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_5
    const-string/jumbo v6, "OrgSelectLocalDeptFragment"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 559
    new-instance v3, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v3}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;-><init>()V

    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    move-object v6, v3

    .line 560
    check-cast v6, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    .line 7139
    iput-object v7, v6, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a:Ljava/util/List;

    move-object v6, v3

    .line 561
    check-cast v6, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    .line 7143
    iput-object v7, v6, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->b:Lfhx;

    move-object v6, v3

    .line 562
    check-cast v6, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    .line 7147
    iput-object v7, v6, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c:Lfhx;

    goto/16 :goto_0

    .line 564
    :cond_6
    const-string/jumbo v6, "CrmCustomerFollower"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 565
    new-instance v3, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v3}, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;-><init>()V

    .line 566
    .restart local v3    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v6, :cond_7

    .line 567
    const-string/jumbo v6, "intent_key_filter_model"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 569
    :cond_7
    const-string/jumbo v6, "intent_key_appId"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string/jumbo v6, "intent_key_showSubEmp"

    iget-boolean v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->p:Z

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v6, v3

    .line 571
    check-cast v6, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    .line 7472
    iput-object v7, v6, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->b:Lfhx;

    move-object v6, v3

    .line 572
    check-cast v6, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    .line 8468
    iput-object v7, v6, Lcom/alibaba/android/user/crm/follower/CustomerFollowerFragment;->a:Lfhx;

    goto/16 :goto_0

    .line 591
    .restart local v4    # "key":Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 592
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-static {p1}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 600
    :cond_9
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 601
    .local v0, "MEAN_WIDTH":I
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    const-string/jumbo v7, "scrollX"

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    mul-int/2addr v10, v0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 602
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit16 v6, v6, 0xfa

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 603
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 625
    .end local v0    # "MEAN_WIDTH":I
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :goto_2
    if-eqz v3, :cond_a

    .line 626
    invoke-virtual {v3, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 627
    iput-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->F:Landroid/support/v4/app/Fragment;

    .line 628
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->E:Lcoi;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v3, v7}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 630
    :cond_a
    return-void

    .line 606
    :cond_b
    invoke-static {p1}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 607
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 608
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 609
    const-string/jumbo v4, "default"

    .line 614
    :cond_c
    :goto_3
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->f:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 617
    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    new-instance v7, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$12;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$12;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 611
    :cond_d
    move-object v4, p2

    goto :goto_3
.end method

.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 866
    iget v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    if-lt v2, v3, :cond_1

    .line 867
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    iget v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->u:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 877
    :goto_0
    return v0

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->v:Ljava/lang/String;

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 874
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    .line 875
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c()V

    .line 876
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .line 9119
    if-eqz p1, :cond_3

    .line 9120
    invoke-virtual {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->c()V

    .line 9121
    iget-object v2, v0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;

    .line 9352
    if-eqz p1, :cond_2

    .line 9353
    iget-object v3, v2, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9354
    invoke-virtual {v2}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$a;->notifyDataSetChanged()V

    .line 9122
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a()V

    :cond_3
    move v0, v1

    .line 877
    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 882
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    if-lez v0, :cond_0

    .line 883
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c()V

    .line 886
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V

    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d()V

    .line 898
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 925
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v0, v1, :cond_1

    .line 926
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    if-lez v0, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e()V

    .line 934
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    goto :goto_0

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    sget v0, Lezg$j;->activity_org_new_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->setContentView(I)V

    .line 149
    new-instance v0, Lcoi;

    sget v2, Lezg$h;->ll_fragment_container:I

    invoke-direct {v0, p0, v2}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->E:Lcoi;

    .line 150
    new-instance v0, Lfie;

    invoke-direct {v0, p0}, Lfie;-><init>(Lfhw;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    .line 151
    new-instance v0, Lfic;

    invoke-direct {v0, p0}, Lfic;-><init>(Lfhw;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    .line 1447
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1448
    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->k:Ljava/lang/String;

    .line 1449
    const-string/jumbo v0, "intent_key_appId"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->o:Ljava/lang/String;

    .line 1450
    const-string/jumbo v0, "intent_key_showSubEmp"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->p:Z

    .line 1451
    const-string/jumbo v0, "intent_key_filter_model"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 1453
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    .line 1455
    const-string/jumbo v0, "intent_key_is_need_search"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->I:Z

    .line 1456
    const-string/jumbo v0, "choose_enterprise_oid"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->w:J

    .line 1457
    const-string/jumbo v0, "display_enterprise_oid"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    .line 1458
    const-string/jumbo v0, "display_department_oid"

    invoke-virtual {v2, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y:J

    .line 1459
    const-string/jumbo v0, "fragment_key"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n:Ljava/lang/String;

    .line 1460
    const-string/jumbo v0, "bread_node_name"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    .line 1461
    const-string/jumbo v0, "org_start_type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    .line 1462
    const-string/jumbo v0, "node"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1463
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->m:Ljava/lang/String;

    .line 1464
    const-string/jumbo v0, "org_request_from_source_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->l:Ljava/lang/String;

    .line 1465
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v0, v6, :cond_0

    .line 1466
    const-string/jumbo v0, "count_limit"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->t:I

    .line 1467
    const-string/jumbo v0, "count_limit_tips"

    sget v3, Lezg$l;->create_conversation_choose_limit:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->u:I

    .line 1468
    const-string/jumbo v0, "count_limit_str"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->v:Ljava/lang/String;

    .line 1471
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v0, v6, :cond_4

    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v0, v10, :cond_4

    .line 1472
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "unchecked_users"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1473
    const-string/jumbo v3, "filter_myself"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1475
    const-string/jumbo v4, "msg_forward"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "from_share"

    .line 1476
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 1477
    if-nez v0, :cond_1

    .line 1478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->H:I

    .line 1484
    :cond_2
    const-string/jumbo v3, "seleced_members"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1485
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    invoke-interface {v3, v0}, Lfhx;->b(Ljava/util/List;)V

    .line 1486
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a:Lfhx;

    invoke-interface {v0, v2}, Lfhx;->a(Ljava/util/List;)V

    .line 1487
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1488
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    .line 1491
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "unchecked_departments"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1492
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    invoke-interface {v2, v0}, Lfhx;->b(Ljava/util/List;)V

    .line 1494
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "seleced_departments"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1495
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b:Lfhx;

    invoke-interface {v2, v0}, Lfhx;->a(Ljava/util/List;)V

    .line 1496
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1497
    iget v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    .line 2162
    :cond_4
    sget v0, Lezg$h;->horizontal_scroller_bread_crumbs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    .line 2163
    sget v0, Lezg$h;->ll_bread_crumbs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e:Landroid/widget/LinearLayout;

    .line 2270
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v6, v0, :cond_5

    .line 2271
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-ne v10, v0, :cond_7

    .line 2800
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->z:Landroid/view/View;

    .line 2801
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->z:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    .line 2802
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    sget v1, Lezg$l;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2803
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$2;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2396
    :cond_5
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2166
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3506
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3507
    const-string/jumbo v1, "com.workapp.add.new.fragment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3508
    const-string/jumbo v1, "com.workapp.add.new.search_fragment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3509
    const-string/jumbo v1, "com.workapp.add.new.local_contact_fragment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3510
    const-string/jumbo v1, "com.workapp.org.employee.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3511
    const-string/jumbo v1, "com.workapp.org.employee.remove.last_bread_crumb"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3512
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4178
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    .line 4179
    sget v0, Lezg$l;->select_org_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4180
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    .line 4183
    :cond_6
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 4184
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->j:Ljava/util/List;

    .line 4202
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->showLoadingDialog()V

    .line 4203
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->x:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4204
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$1;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4203
    invoke-interface {v1, v2, v3, v0}, Lezt;->a(JLcma;)V

    .line 4190
    :goto_2
    return-void

    .line 2813
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "fiter_uncheck"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2814
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lezg$j;->actbar_button:I

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->z:Landroid/view/View;

    .line 2815
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->z:Landroid/view/View;

    sget v3, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    .line 2816
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->A:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$3;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2276
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2277
    sget v0, Lezg$h;->edt_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2278
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->I:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setVisibility(I)V

    .line 2279
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v2, Lezg$l;->search:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setHint(I)V

    .line 2280
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v2, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$6;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2298
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v2, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$7;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2309
    new-instance v0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$8;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->C:Ljava/lang/Runnable;

    .line 2327
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v2, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$9;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3424
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_8

    .line 3425
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 3426
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v2, Lezg$g;->icon_clear:I

    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2357
    :cond_8
    :goto_4
    sget v0, Lezg$h;->horizontal_scroller:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .line 2358
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2359
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->setMaxWidth(I)V

    .line 2360
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->setItemWidth(I)V

    .line 2362
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->d:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    new-instance v1, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$10;-><init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->setOnItemRemovedListener(Lcom/alibaba/android/user/widget/SelectorHorizontalListView$b;)V

    .line 2392
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a()V

    .line 2393
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_0

    .line 2278
    :cond_9
    const/16 v0, 0x8

    goto/16 :goto_3

    .line 3428
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->B:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 2169
    :cond_b
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v6, v0, :cond_c

    .line 2170
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->select_contact_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 2172
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->bread_crumbs_default:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 4186
    :cond_d
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    if-nez v0, :cond_e

    .line 4187
    iput-wide v8, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->y:J

    .line 4188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v7, v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4189
    :cond_e
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    if-ne v0, v10, :cond_f

    .line 4190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v7, v0, v1}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4191
    :cond_f
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->r:I

    .line 4194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 773
    iget v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v4, v1, :cond_0

    .line 774
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 775
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->z:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 776
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 777
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->c()V

    .line 779
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 958
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 959
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 960
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 784
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 785
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->s:I

    if-eq v0, v1, :cond_1

    .line 786
    iget v0, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->K:I

    if-lez v0, :cond_0

    .line 787
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->e()V

    .line 794
    :goto_0
    const/4 v0, 0x0

    .line 796
    :goto_1
    return v0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    goto :goto_0

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->finish()V

    goto :goto_0

    .line 796
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method
