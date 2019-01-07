.class public Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectedContactsActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

.field private h:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/organization/select/SelectModel;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:Landroid/support/v7/app/AlertDialog;

.field private o:Lfki;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 77
    const-string/jumbo v0, "SelectedContactsActivity"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a:Ljava/lang/String;

    .line 78
    iput v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->b:I

    .line 79
    iput v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c:I

    .line 80
    iput v3, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->d:I

    .line 82
    iput v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->e:I

    .line 84
    iput v3, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->f:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k:Ljava/util/List;

    .line 96
    iput v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    .line 98
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->m:Z

    .line 428
    new-instance v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$6;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->o:Lfki;

    .line 514
    new-instance v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$7;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->n:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .prologue
    .line 75
    .line 9476
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9483
    :cond_0
    :goto_0
    return-void

    .line 9480
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 9481
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 9482
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 75
    .line 9490
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9497
    :cond_0
    :goto_0
    return-void

    .line 9494
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 9495
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 9496
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    const-wide/16 v4, -0x1

    .line 75
    .line 9574
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 9575
    :cond_0
    :goto_0
    return-void

    .line 9578
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9579
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 9580
    if-eqz v0, :cond_2

    .line 9584
    const/4 v3, 0x0

    invoke-static {v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9587
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9592
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 9593
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 9594
    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 9595
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9597
    new-instance v1, Lcfi;

    invoke-direct {v1}, Lcfi;-><init>()V

    .line 9598
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getDisplayOid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcfi;->a:Ljava/lang/Long;

    .line 9600
    new-instance v3, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$8;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V

    .line 9627
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->showLoadingDialog()V

    .line 9628
    new-instance v4, Lcom/alibaba/android/user/model/OrgAttachObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/model/OrgAttachObject;-><init>()V

    .line 9629
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    .line 9630
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    invoke-interface {v0, v3, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9631
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    invoke-interface {v3, v1, v2, v4, v0}, Lezt;->a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .param p2, "isClick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 420
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    return-void

    .line 423
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 424
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/alibaba/android/user/contact/organization/select/SelectModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Ljava/lang/String;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    .line 8206
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "f_identify_select_add_from_local_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 210
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 211
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$2;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    .line 212
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 219
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 75
    .line 9638
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9639
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->dismissLoadingDialog()V

    .line 9640
    :goto_0
    return-void

    .line 9643
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9644
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 9645
    if-eqz v0, :cond_2

    .line 9648
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9651
    :cond_3
    new-instance v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$9;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V

    .line 9691
    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9692
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getDisplayOid()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v1, v0}, Lezt;->b(JLjava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 225
    sget v0, Lezg$l;->dt_choose_kit_dept_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    sget v0, Lezg$l;->contact_select_user_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7355
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v0

    .line 7356
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g()V

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->a(Ljava/util/List;Z)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->a(Ljava/util/List;)V

    .line 286
    return-void

    .line 7360
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 7363
    if-eqz v0, :cond_2

    .line 7367
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7368
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-direct {v5, v0, v6}, Lcom/alibaba/android/user/contact/organization/select/SelectModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7369
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7371
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7375
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->m:Z

    .line 7380
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->supportInvalidateOptionsMenu()V

    .line 7381
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$5;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V

    const-class v2, Lcma;

    invoke-interface {v0, v4, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v1, v0}, Lezt;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    .line 9153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getChooseMode()I

    move-result v0

    .line 9154
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getDisplayOid()J

    move-result-wide v2

    invoke-static {v2, v3}, Lfls;->c(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 9157
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9158
    sget v1, Lezg$l;->choose_add_people_dlg_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9159
    sget v1, Lezg$c;->selected_contacts_choose_add_people_mode_items:I

    new-instance v2, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$1;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9196
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 9197
    :goto_0
    return-void

    .line 9198
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->b()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->h:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    return-object v0
.end method

.method private g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 290
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getRequestDeptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 291
    .local v1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v3, "noNameDepts":Ljava/util/List;, "Ljava/util/List<Lcen;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v2, "hasNameDepts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 298
    .local v0, "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_2

    .line 302
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 304
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    .end local v0    # "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->m:Z

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->supportInvalidateOptionsMenu()V

    .line 316
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v5

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    new-instance v6, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$4;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;Ljava/util/ArrayList;)V

    const-class v7, Lcma;

    invoke-interface {v4, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    invoke-interface {v5, v3, v4}, Lezt;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->d()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->finish()V

    .line 139
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget v0, Lezg$j;->activity_selected_contacts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->setContentView(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1237
    const-string/jumbo v1, "intent_key_contact_choose_request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    .line 1238
    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->getContactChooseRequest()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1240
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->f:I

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-nez v0, :cond_3

    .line 1244
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->h:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->h:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2053
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1245
    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 2456
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2460
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2461
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    .line 2464
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2465
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2466
    if-eqz v0, :cond_2

    .line 2469
    iget v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->l:I

    goto :goto_1

    .line 1247
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->builder()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->h:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto :goto_0

    .line 111
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->c()V

    .line 3254
    sget v0, Lezg$h;->ic_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3255
    iget v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 3256
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3257
    new-instance v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity$3;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3268
    :goto_2
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 3269
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 3270
    new-instance v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->f:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    .line 3271
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    if-eqz v0, :cond_5

    .line 3272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->hasDeleteNeedConfirm()Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->deleteConfirmTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->deleteConfirmDesc()Ljava/lang/String;

    move-result-object v3

    .line 4212
    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->b:Z

    .line 4213
    iput-object v2, v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->c:Ljava/lang/String;

    .line 4214
    iput-object v3, v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->d:Ljava/lang/String;

    .line 3274
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->o:Lfki;

    .line 5208
    iput-object v1, v0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->a:Lfki;

    .line 3275
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->j:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5697
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5698
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5699
    const-string/jumbo v1, "com.workapp.org.employee.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5700
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->d()V

    .line 115
    return-void

    .line 3264
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 120
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 122
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->m:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 123
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
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->n:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->n:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->n:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 149
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 6505
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_selected_contacts_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6506
    const-string/jumbo v1, "choose_user_identities"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedUserList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6507
    const-string/jumbo v1, "choose_department_array"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getSelectedDeptList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6508
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getIdentifyFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6509
    const-string/jumbo v1, "org_request_from_source_type"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->g:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getFromSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6510
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 6511
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsActivity;->finish()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
