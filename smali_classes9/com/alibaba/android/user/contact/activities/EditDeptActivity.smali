.class public Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "EditDeptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lfru;

.field private c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lfrt;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/widget/EditText;

.field private m:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

.field private n:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

.field private o:Landroid/widget/ToggleButton;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Lfru;

.field private v:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 106
    new-instance v0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfrt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Lfrt;)Lfrt;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
    .param p1, "x1"    # Lfrt;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Lfru;)Lfru;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
    .param p1, "x1"    # Lfru;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->k:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "identifyTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p3, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 665
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v3, :cond_0

    .line 708
    .end local p3    # "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :goto_0
    return-void

    .line 669
    .restart local p3    # "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v1, "selectUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p2, :cond_1

    .line 671
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 672
    .local v2, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 676
    .end local v2    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 677
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    const-string/jumbo v3, "title"

    sget v4, Lezg$l;->select_contact_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string/jumbo v3, "choose_people_action"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    const-string/jumbo v3, "filter_myself"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 685
    const-string/jumbo v3, "show_common_friends"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 687
    const-string/jumbo v3, "can_choose_current_user"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 689
    const-string/jumbo v3, "intent_key_is_need_search"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 692
    const-string/jumbo v3, "choose_enterprise_oid"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 693
    const-string/jumbo v3, "display_enterprise_oid"

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 694
    const-string/jumbo v3, "org_request_from_source_type"

    sget-object v4, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v3, "org_start_type"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    const-string/jumbo v3, "seleced_members"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 698
    if-eqz p3, :cond_2

    .line 699
    const-string/jumbo v3, "seleced_departments"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 701
    :cond_2
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/org_new_contact.html"

    new-instance v5, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$9;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Landroid/os/Bundle;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lfru;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    .line 3495
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3496
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 3495
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3496
    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    const/4 v4, 0x0

    .line 62
    .line 4278
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4280
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 4281
    if-eqz v0, :cond_0

    .line 4284
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4286
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 4287
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 4288
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 62
    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->o:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    .line 4387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_1

    .line 4388
    :cond_0
    :goto_0
    return-void

    .line 4392
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v2, v2, Lfrt;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4397
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v0, v0, Lfrt;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 4398
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 4399
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    if-eqz v0, :cond_3

    .line 4400
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    iput-object v1, v0, Lfrt;->g:Lfru;

    .line 4402
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    if-eqz v0, :cond_4

    .line 4403
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    iput-object v1, v0, Lfrt;->f:Lfru;

    .line 4405
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->showLoadingDialog()V

    .line 4406
    new-instance v1, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$14;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 4434
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4435
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    invoke-interface {v1, v2, v3, v4, v0}, Lezt;->a(JLfrt;Lcma;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/EditDeptActivity;

    .prologue
    .line 62
    .line 4440
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->showLoadingDialog()V

    .line 4441
    new-instance v1, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$15;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 4467
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 4468
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-interface/range {v1 .. v6}, Lezt;->e(JJLcma;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 512
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    if-nez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->manager_name:I

    if-ne v1, v2, :cond_2

    .line 516
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/org/dept_member.html"

    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$17;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->parent_name:I

    if-ne v1, v2, :cond_3

    .line 540
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/select_department.html"

    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 552
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->group_chat:I

    if-ne v1, v2, :cond_4

    .line 553
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v1, v1, Lfrt;->d:Lfpb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->j:Lfrt;

    iget-object v1, v1, Lfrt;->d:Lfpb;

    iget-object v1, v1, Lfpb;->a:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 554
    if-nez v1, :cond_0

    .line 557
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    new-instance v7, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JJZLcma;)V

    goto :goto_0

    .line 579
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->rl_delete:I

    if-ne v1, v2, :cond_5

    .line 580
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->delete_dept_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 582
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 588
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 594
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->item_hide:I

    if-ne v1, v2, :cond_6

    .line 595
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    if-eqz v1, :cond_0

    .line 596
    const-string/jumbo v1, "select_tag_hide"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    iget-object v2, v2, Lfru;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->u:Lfru;

    iget-object v3, v3, Lfru;->d:Ljava/util/List;

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 598
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->item_outer:I

    if-ne v1, v2, :cond_7

    .line 599
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    if-eqz v1, :cond_0

    .line 600
    const-string/jumbo v1, "select_tag_outer"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    iget-object v2, v2, Lfru;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a:Lfru;

    iget-object v3, v3, Lfru;->d:Ljava/util/List;

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 602
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->toggle_include_sub:I

    if-ne v1, v2, :cond_0

    .line 603
    instance-of v1, p1, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 604
    check-cast v1, Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    .line 605
    .local v8, "checked":Z
    if-eqz v8, :cond_8

    .line 606
    sget v1, Lezg$l;->include_sub_dept_loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->showLoadingDialog(I)V

    .line 607
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    const/4 v6, 0x1

    new-instance v7, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;

    invoke-direct {v7, p0, p1, v8}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Landroid/view/View;Z)V

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(JJZLcma;)V

    goto/16 :goto_0

    .line 626
    :cond_8
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->exclude_sub_dept_confirm_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 628
    sget v1, Lezg$l;->exclude_sub_dept_confirm_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;

    invoke-direct {v3, p0, p1, v8}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;Landroid/view/View;Z)V

    .line 629
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 651
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 656
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, 0x14

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget v1, Lezg$j;->activity_edit_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->setContentView(I)V

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lezg$l;->edit_current_dept:I

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1198
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "dept_object"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1372
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lezg$j;->actbar_button:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1373
    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e:Landroid/widget/Button;

    .line 1374
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e:Landroid/widget/Button;

    sget v4, Lezg$l;->finish:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 1375
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1376
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->e:Landroid/widget/Button;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$13;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$13;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->d:Landroid/view/View;

    .line 1295
    sget v1, Lezg$h;->et_dept_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    .line 1296
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1297
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    .line 1472
    new-instance v3, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$16;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$16;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 1297
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1298
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1300
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v3, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1302
    :cond_1
    sget v1, Lezg$h;->tv_hide_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->r:Landroid/widget/TextView;

    .line 1303
    sget v1, Lezg$h;->tv_outer_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->s:Landroid/widget/TextView;

    .line 1305
    sget v1, Lezg$h;->item_hide:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1306
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 1307
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    sget v2, Lezg$l;->title_activity_settings:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 1308
    sget v1, Lezg$h;->item_outer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1309
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 1310
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    sget v2, Lezg$l;->title_activity_settings:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 1312
    sget v1, Lezg$h;->cell_hide_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    .line 1313
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$11;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1329
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getModel()Lcnk;

    move-result-object v1

    .line 1330
    sget v2, Lezg$l;->setting_hide_dept:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcnk;->a(Ljava/lang/String;)V

    .line 1331
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->m:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Lcnk;)V

    .line 1334
    sget v1, Lezg$h;->cell_outer_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    .line 1335
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$12;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1351
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->getModel()Lcnk;

    move-result-object v1

    .line 1352
    sget v2, Lezg$l;->setting_see_myself_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcnk;->a(Ljava/lang/String;)V

    .line 1353
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->n:Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/ToggleCell;->a(Lcnk;)V

    .line 1356
    sget v1, Lezg$h;->toggle_include_sub:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->o:Landroid/widget/ToggleButton;

    .line 1357
    sget v1, Lezg$h;->ll_include_sub_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->t:Landroid/view/View;

    .line 1358
    sget v1, Lezg$h;->manager_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1359
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1360
    sget v1, Lezg$h;->parent_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1361
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1362
    sget v1, Lezg$h;->group_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1363
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1364
    sget v1, Lezg$h;->rl_delete:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->i:Landroid/widget/RelativeLayout;

    .line 1365
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1368
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2207
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 2208
    new-instance v2, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity$10;-><init>(Lcom/alibaba/android/user/contact/activities/EditDeptActivity;)V

    .line 2272
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 2273
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-interface/range {v1 .. v6}, Lezt;->d(JJLcma;)V

    .line 100
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.dept"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "com.workapp.choose.org.department"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 105
    return-void

    .line 1298
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    const-string/jumbo v1, ""

    goto/16 :goto_0

    .line 1300
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 190
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 191
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 192
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 194
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 506
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/EditDeptActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 509
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 501
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 502
    return-void
.end method
