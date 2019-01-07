.class public Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ConversationMembersActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:Z

.field private I:Landroid/os/Handler;

.field private J:Lcom/alibaba/wukong/im/Conversation;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ldha;

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private O:Landroid/content/BroadcastReceiver;

.field private P:Z

.field private Q:Z

.field private R:J

.field private S:Lcif;

.field private final T:I

.field private final U:I

.field a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

.field public b:J

.field c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

.field private m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/TextView;

.field private final t:F

.field private final u:F

.field private v:Lcoi;

.field private w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->n:I

    .line 94
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->o:I

    .line 95
    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->p:I

    .line 103
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->t:F

    .line 104
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->u:F

    .line 108
    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->F:Ljava/util/List;

    .line 131
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->O:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    .line 981
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->T:I

    .line 982
    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->U:I

    return-void
.end method

.method private a(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "sortType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 656
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string/jumbo v1, "count_limit"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const-string/jumbo v1, "count_limit_tips"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 661
    const-string/jumbo v1, "filter_myself"

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->y:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 662
    const-string/jumbo v1, "filter_list"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 663
    const-string/jumbo v1, "can_choose_current_user"

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->z:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 664
    const-string/jumbo v1, "intent_key_sort_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    const-string/jumbo v1, "key_request_select_user_list"

    .line 666
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "key_request_select_user_list"

    invoke-static {v2, v3}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 667
    const-string/jumbo v1, "need_check_all"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "need_check_all"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v1, 0x1

    .line 80
    .line 5471
    if-nez p1, :cond_0

    .line 5472
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 5473
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(JZ)V

    .line 5475
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a()V

    .line 5476
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 5482
    :goto_0
    return-object v0

    .line 5477
    :cond_0
    if-ne p1, v1, :cond_1

    .line 5478
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 5479
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5480
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(JZ)V

    .line 5481
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a()V

    .line 5482
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    goto :goto_0

    .line 5484
    :cond_1
    const/4 v0, 0x0

    .line 80
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 674
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;)V

    .line 676
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$3;

    sget v1, Lcif;->b:I

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->S:Lcif;

    .line 690
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->S:Lcif;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcif;)V

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;)V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;)V

    .line 700
    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 9
    .param p1, "selectOrgId"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1056
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1057
    .local v7, "bundle":Landroid/os/Bundle;
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->P:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    if-eqz v0, :cond_0

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    .line 1058
    const-string/jumbo v0, "choose_enterprise_oid"

    invoke-virtual {v7, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1059
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1068
    :goto_0
    const-string/jumbo v0, "intent_key_is_memory_mode"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1069
    const-string/jumbo v0, "show_local_contact"

    invoke-static {}, Ldjl;->f()Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1071
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->p(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    sget v5, Lctk$i;->create_conversation_choose_limit:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V

    .line 1073
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    .line 1062
    const-string/jumbo v0, "choose_enterprise_oid"

    invoke-virtual {v7, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1064
    :cond_1
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1066
    :cond_2
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 875
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 876
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 877
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 282
    const-string/jumbo v7, "key_pick_member_title"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->K:Ljava/lang/String;

    .line 283
    const-string/jumbo v7, "key_pick_member_btn_txt"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->L:Ljava/lang/String;

    .line 284
    const-string/jumbo v7, "choose_mode"

    const/4 v8, 0x2

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    .line 285
    const-string/jumbo v7, "filter_myself"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->y:Z

    .line 286
    const-string/jumbo v7, "can_choose_current_user"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->z:Z

    .line 287
    const-string/jumbo v7, "conversation_id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->A:Ljava/lang/String;

    .line 288
    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    .line 289
    const-string/jumbo v7, "count_limit"

    const/16 v8, 0x9

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->B:I

    .line 290
    const-string/jumbo v7, "count_limit_tips"

    sget v8, Lctk$i;->choose_limit:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->C:I

    .line 291
    const-string/jumbo v7, "intent_key_at_seed"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b:J

    .line 293
    const-string/jumbo v7, "filter_list"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 294
    .local v1, "s":Ljava/io/Serializable;
    instance-of v7, v1, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 295
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "s":Ljava/io/Serializable;
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->N:Ljava/util/ArrayList;

    .line 297
    :cond_0
    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->y:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->N:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 298
    new-instance v3, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->N:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->y:Z

    .line 302
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->y:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->z:Z

    if-nez v7, :cond_2

    .line 303
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "unchecked_users"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 306
    .local v5, "uncheckedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v5, :cond_4

    .line 307
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 308
    .local v6, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 309
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v6    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "seleced_members"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 314
    .local v2, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_5

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 316
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->F:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->K:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 322
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->K:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    :goto_2
    const-class v7, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->A:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 367
    return-void

    .line 324
    :cond_6
    const-string/jumbo v7, "ACTIVITY_IDENTIFY_CONFERENCE"

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 326
    sget v7, Lctk$i;->home_menu_item_conference:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v7, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 328
    .end local v4    # "title":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "ACTIVITY_IDENTIFY_AT"

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 329
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v8, Lctk$i;->conversation_title_at:I

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_2

    .line 330
    :cond_8
    const-string/jumbo v7, "activity_identify_remove"

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 331
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v8, Lctk$i;->conversation_title_remove:I

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_2

    .line 332
    :cond_9
    const-string/jumbo v7, "ACTIVITY_IDENTIFY_TRANSMIT"

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 333
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v8, Lctk$i;->conversation_title_transmit:I

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_2

    .line 335
    :cond_a
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v8, Lctk$i;->act_member:I

    invoke-virtual {v7, v8}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # J

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    const/4 v3, 0x0

    .line 80
    .line 5913
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5918
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->b(Ljava/lang/Object;)V

    .line 5919
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5920
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5921
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5931
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 5932
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 5933
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lctk$e;->edt_left_drawable:I

    sget v2, Lctk$e;->icon_clear:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 5924
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c()V

    .line 5925
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_1

    .line 5926
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 80
    :cond_1
    return-void

    .line 5935
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lctk$e;->edt_left_drawable:I

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    .line 6880
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 6881
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6885
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 6888
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6893
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6895
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6897
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6908
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b()V

    .line 6909
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Ljava/lang/Object;)V

    .line 6899
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c()V

    .line 6900
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_1

    .line 6901
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g()V

    .line 80
    :cond_1
    return-void

    .line 6889
    :catch_0
    move-exception v0

    .line 6890
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    const/4 v1, 0x0

    .line 80
    .line 2167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2189
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    .line 2171
    invoke-static {v0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2172
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2173
    new-instance v0, Ldha;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-direct {v0, p0, v1, v2}, Ldha;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->M:Ldha;

    .line 2174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->M:Ldha;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 3058
    iput-object v1, v0, Ldha;->c:Ldha$a;

    .line 2189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->M:Ldha;

    invoke-virtual {v0, p1}, Ldha;->a(Ljava/util/List;)V

    goto :goto_0

    .line 2191
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_3

    .line 2192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/List;Z)V

    .line 2195
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->F:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lctk$e;->icon_clear:I

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    .line 3261
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 3262
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3263
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->P:Z

    .line 3268
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 3269
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    .line 3270
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3271
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    .line 3273
    :cond_0
    :goto_1
    return-void

    .line 3265
    :cond_1
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->P:Z

    goto :goto_0

    .line 3272
    :cond_2
    const-string/jumbo v0, "orgId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3273
    const-string/jumbo v0, "orgId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    goto :goto_1

    .line 3276
    :cond_3
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    .line 3277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->G:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 951
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int v0, v2, v5

    .line 952
    .local v0, "currentSize":I
    const-string/jumbo v2, "activity_identify_remove"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "identify_ban_words_black"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    .line 953
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "identify_ban_words_white"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    .line 954
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    sget v2, Lctk$i;->select_num_count_format:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    sget v2, Lctk$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object v7, v5

    move-object v8, v6

    move-object v6, v3

    move-object v5, v3

    move v3, v4

    .line 967
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    .line 965
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 970
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 971
    const-string/jumbo v2, "ACTIVITY_IDENTIFY_AT"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    if-nez v2, :cond_7

    .line 974
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 979
    :goto_2
    return-void

    .line 956
    :cond_2
    const-string/jumbo v2, "ACTIVITY_IDENTIFY_AT"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 958
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    if-ne v2, v3, :cond_3

    .line 959
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    sget v3, Lctk$i;->dt_im_trans_to_multiple_menu_multi_select:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 961
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    sget v2, Lctk$i;->select_num_count_format:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    sget v2, Lctk$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object v7, v5

    move-object v8, v6

    move-object v6, v3

    move-object v5, v3

    move v3, v4

    goto :goto_0

    .line 964
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lctk$i;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, "text":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    const-string/jumbo v6, "%s(%d/%d)"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v9

    .line 966
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->B:I

    iget v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->G:I

    if-le v2, v8, :cond_6

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->G:I

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_0

    .line 964
    .end local v1    # "text":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->L:Ljava/lang/String;

    goto :goto_3

    .line 966
    .restart local v1    # "text":Ljava/lang/String;
    :cond_6
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->B:I

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_0

    .line 977
    .end local v1    # "text":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ldjl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->S:Lcif;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    .line 3370
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    if-ne v0, v4, :cond_0

    const-string/jumbo v0, "ACTIVITY_IDENTIFY_AT"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "activity_identify_remove"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ACTIVITY_IDENTIFY_TRANSMIT"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3371
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_conversation_setting"

    .line 4083
    invoke-virtual {v0, v1, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3371
    if-nez v0, :cond_8

    .line 4638
    :cond_0
    new-instance v0, Lcoi;

    sget v1, Lctk$f;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->v:Lcoi;

    .line 4639
    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(I)Landroid/os/Bundle;

    move-result-object v0

    .line 4641
    const-string/jumbo v1, "ACTIVITY_IDENTIFY_AT"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4642
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 4648
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4649
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a()V

    .line 4650
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->S:Lcif;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->F:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->E:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcif;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 4651
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->v:Lcoi;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 5082
    invoke-virtual {v0, v1, v2, v6}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 3374
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_1

    .line 3375
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->Q:Z

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(JZ)V

    .line 3378
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->t(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "ACTIVITY_IDENTIFY_AT"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3379
    sget v0, Lctk$f;->rl_all_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->r:Landroid/widget/RelativeLayout;

    .line 3380
    sget v0, Lctk$f;->tv_all_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->s:Landroid/widget/TextView;

    .line 5404
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 5407
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 5408
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 5409
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5410
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 5411
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 3383
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3395
    :cond_3
    :goto_2
    return-void

    .line 4643
    :cond_4
    const-string/jumbo v1, "activity_identify_show_member"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4644
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    goto/16 :goto_0

    .line 4646
    :cond_5
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    goto/16 :goto_0

    .line 5415
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 3386
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3387
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->s:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_im_group_member_view_org_member_AT:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 5419
    :cond_8
    sget v0, Lctk$f;->ll_tab_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->j:Landroid/widget/LinearLayout;

    .line 5420
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5421
    sget v0, Lctk$f;->ll_tab_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 5422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v1, Lctk$c;->color_pager_tab_text_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 5423
    sget v0, Lctk$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 5426
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$b;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcn;)V

    .line 5427
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 5428
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 5430
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 5431
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 5432
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m:I

    if-gez v1, :cond_9

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m:I

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$b;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_9

    .line 5433
    iput v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m:I

    .line 5435
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    goto/16 :goto_2
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    return-wide v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    .line 6631
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.workapp.member.change.choose.mode"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6633
    const-string/jumbo v2, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6634
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 80
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->B:I

    return v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->C:I

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b:J

    return-wide v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b()V

    return-void
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c()V

    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->I:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 7871
    const-string/jumbo v0, "Conversation_Member"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 80
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->M:Ldha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->M:Ldha;

    invoke-virtual {v0}, Ldha;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1102
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    sget v2, Lctk$g;->activity_group_chat_member:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->setContentView(I)V

    .line 247
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->I:Landroid/os/Handler;

    .line 248
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Landroid/content/Intent;)V

    .line 1491
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->actbar_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    .line 1492
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    sget v3, Lctk$f;->btn_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    .line 1493
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1494
    sget v2, Lctk$f;->edt_search:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1495
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1508
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1542
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1553
    sget v2, Lctk$f;->horizontal_scroller:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .line 1554
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1555
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setMaxWidth(I)V

    .line 1556
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setItemWidth(I)V

    .line 1558
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setOnItemRemovedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;)V

    .line 1568
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setAvatarDataGenerator(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;)V

    .line 1587
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->e:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1623
    const/4 v2, 0x2

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x:I

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "ACTIVITY_IDENTIFY_AT"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "activity_identify_remove"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1624
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v2, "com.workapp.member.change.choose.mode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 255
    return-void

    .line 1626
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 986
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 987
    sget v2, Lctk$i;->action_add:I

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 988
    .local v1, "menuItemAdd":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 989
    sget v2, Lctk$e;->actbar_contact_add:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 990
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 991
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 992
    sget v2, Lctk$i;->ok:I

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 993
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 994
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 995
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->G:I

    if-nez v2, :cond_1

    .line 996
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1001
    :goto_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1011
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 998
    .restart local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 999
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c()V

    goto :goto_0

    .line 1003
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->H:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_3

    .line 1004
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1007
    :cond_3
    const-string/jumbo v2, "ACTIVITY_IDENTIFY_AT"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "activity_identify_remove"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->O:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1078
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1084
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 1085
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1026
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->J:Lcom/alibaba/wukong/im/Conversation;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 1044
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->d()Z

    move-result v2

    .line 1028
    invoke-static {p0, v0, v1, v2}, Ldjl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcma;Z)V

    .line 1052
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1046
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->R:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(J)V

    goto :goto_0

    .line 1048
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1050
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->finish()V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 204
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m:I

    .line 209
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1016
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onWindowFocusChanged(Z)V

    .line 1017
    if-eqz p1, :cond_0

    .line 1018
    const-string/jumbo v0, "ACTIVITY_IDENTIFY_CONFERENCE"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    .line 1022
    :cond_0
    return-void
.end method
