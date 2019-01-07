.class public Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ConfirmCreatingConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:J

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:I

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/GridView;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field private t:J

.field private u:J

.field private v:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

.field private w:Ljava/lang/String;

.field private final x:I

.field private final y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 102
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a:Ljava/lang/String;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b:I

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    .line 128
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->x:I

    .line 129
    const-string/jumbo v0, "confirm"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->y:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    .line 131
    const-string/jumbo v0, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_lt&questionId=201602057932"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->A:Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->G:Landroid/content/BroadcastReceiver;

    .line 670
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sufix"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->text_color_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 575
    .local v1, "colorInt":I
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 576
    .local v3, "textContent":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 577
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 578
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$12;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;I)V

    .line 588
    .local v0, "clickableSpan":Lebd;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x21

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    return-object v3

    .line 592
    :catch_0
    move-exception v2

    .line 593
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;)Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->v:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 417
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 418
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->t:J

    .line 419
    const-wide/16 v2, 0x2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u:J

    .line 420
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->H:I

    .line 423
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->H:I

    .line 424
    .local v0, "sn":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 425
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->c()Ldxx;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$11;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;I)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v3, v1}, Ldxx;->b(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x1

    .line 101
    .line 6875
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6877
    invoke-static {}, Lder;->a()Lder;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->C:Ljava/lang/String;

    invoke-static {p1, v0}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 6879
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->dismissLoadingDialog()V

    .line 6880
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_on_conversation_create"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 6881
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v1, :cond_1

    .line 6882
    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 6884
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->finish()V

    .line 6885
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 3364
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3365
    const-string/jumbo v2, "avatar"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3366
    const-string/jumbo v2, "use_enterprise_icon"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3367
    const-string/jumbo v2, "enterprise_name"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3368
    const-string/jumbo v2, "enterprise_name_suffix_icon_res_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3369
    const-string/jumbo v0, "enterprise_icon"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3370
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x4

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 389
    .local v0, "iconUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 390
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 392
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->generateGroupIcon(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 411
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # J

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->t:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 496
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 497
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    .line 1667
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lccr;->e(J)Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->k:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_im_conversation_confirm_enterprise_group:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-boolean v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->E:Z

    if-eqz v6, :cond_1

    .line 502
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_create_open_group_enterprise_desc:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 506
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 507
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 509
    const-wide/16 v6, 0x2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7, v8}, Ldjl;->b(JLjava/util/Map;)I

    move-result v5

    .line 510
    .local v5, "res":I
    if-eqz v5, :cond_0

    .line 511
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "res":I
    :cond_0
    :goto_1
    return-void

    .line 504
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_im_conversation_confirm_enterprise_desc:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lctk$i;->dt_create_group_enterprise_link:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 513
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u:J

    invoke-static {v6, v7}, Ldjl;->a(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 514
    const-string/jumbo v1, ""

    .line 515
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 516
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    .line 518
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->k:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_im_conversation_confirm_enterprise_group:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_im_conversation_confirm_enterprise_desc:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lctk$i;->dt_create_group_enterprise_link:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 522
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const-wide/16 v6, 0x2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7, v8}, Ldjl;->b(JLjava/util/Map;)I

    move-result v5

    .line 525
    .restart local v5    # "res":I
    if-eqz v5, :cond_0

    .line 526
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 528
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "res":I
    :cond_4
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u:J

    invoke-static {v6, v7}, Ldjl;->b(J)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 529
    const-string/jumbo v1, ""

    .line 530
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 531
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 532
    .local v2, "nameStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget v6, Lctk$i;->dt_group_type_cooperative:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 533
    const-string/jumbo v6, "("

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "index":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 536
    .local v3, "orgExistSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 537
    .local v4, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v4, :cond_6

    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-wide v8, v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 538
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 539
    goto :goto_2

    .line 541
    :cond_7
    iget-wide v8, v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v7, v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 543
    add-int/lit8 v0, v0, 0x1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 544
    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 547
    .end local v4    # "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_8
    const-string/jumbo v6, ")"

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 548
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .end local v0    # "index":I
    .end local v2    # "nameStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "orgExistSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_group_cooperative_feature_desc:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 554
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 556
    const-wide/16 v6, 0xd

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7, v8}, Ldjl;->b(JLjava/util/Map;)I

    move-result v5

    .line 557
    .restart local v5    # "res":I
    if-eqz v5, :cond_0

    .line 558
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 562
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "res":I
    :cond_a
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_b

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->v:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->v:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->canShowSelect()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 564
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :goto_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->k:Landroid/widget/TextView;

    sget v7, Lctk$i;->dt_im_conversation_confirm_normal_group:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 569
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 566
    :cond_c
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
    .param p1, "x1"    # J

    .prologue
    .line 101
    .line 2667
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccr;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    .line 2228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->f:Landroid/widget/TextView;

    sget v1, Lctk$i;->member_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->p:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

    if-eqz v0, :cond_1

    .line 2232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->p:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;->notifyDataSetChanged()V

    .line 2234
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a()V

    .line 2236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Ljava/util/List;)V

    .line 101
    :cond_2
    return-void
.end method

.method private c()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 599
    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    sget-object v5, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v5}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 600
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 601
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->t:J

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    .line 602
    .local v2, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 603
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 604
    .local v1, "icon":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v6, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v1    # "icon":Ljava/lang/String;
    .end local v2    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return v3

    .line 607
    .restart local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .restart local v2    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 610
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v2    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->w:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->t:J

    return-wide v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    return-wide v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->v:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    .line 3910
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_type_select.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    .line 3911
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 101
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    .line 4746
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_fix_bad_net_create_group"

    .line 5083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4746
    if-eqz v0, :cond_0

    .line 4747
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4748
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->F:Ljava/lang/String;

    .line 4751
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->showLoadingDialog()V

    .line 4752
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 101
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->H:I

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->p:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    .line 5890
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5891
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 5892
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5893
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 5894
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5897
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5898
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 5900
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5901
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5902
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5904
    :cond_2
    :goto_1
    return-object v0

    .line 5906
    :cond_3
    const/4 v0, 0x0

    .line 101
    goto :goto_1
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->E:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 922
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 923
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 924
    const-string/jumbo v3, "avatar"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "avatar":Ljava/lang/String;
    const-string/jumbo v3, "use_enterprise_icon"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 926
    .local v2, "useEnterPriseIcon":Z
    if-eqz v2, :cond_1

    .line 927
    sget-object v3, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    .line 928
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c()Z

    .line 950
    .end local v0    # "avatar":Ljava/lang/String;
    .end local v2    # "useEnterPriseIcon":Z
    :cond_0
    :goto_0
    return-void

    .line 930
    .restart local v0    # "avatar":Ljava/lang/String;
    .restart local v2    # "useEnterPriseIcon":Z
    :cond_1
    sget-object v3, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    .line 931
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->w:Ljava/lang/String;

    .line 932
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c()Z

    goto :goto_0

    .line 934
    .end local v0    # "avatar":Ljava/lang/String;
    .end local v2    # "useEnterPriseIcon":Z
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 935
    if-eqz p3, :cond_0

    .line 936
    const-string/jumbo v3, "intent_key_group_desc"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 938
    const-string/jumbo v1, ""

    .line 940
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 941
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    :goto_1
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->o:Ljava/lang/String;

    goto :goto_0

    .line 943
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->n:Landroid/widget/TextView;

    sget v4, Lctk$i;->dt_conversation_desc_update_desc:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 243
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    sget v2, Lctk$g;->activity_confirm_create_conversation:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->setContentView(I)V

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "org_id"

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    .line 247
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_public_group"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->E:Z

    .line 249
    sget v2, Lctk$f;->img_enterprise_icon:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h:Landroid/widget/ImageView;

    .line 250
    sget v2, Lctk$f;->img_right_arrow:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i:Landroid/view/View;

    .line 251
    sget v2, Lctk$f;->rl_type:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d:Landroid/view/View;

    .line 252
    sget v2, Lctk$f;->conversation_history_toggle:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e:Landroid/widget/ToggleButton;

    .line 253
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 254
    sget v2, Lctk$f;->tv_conversation_tips:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->g:Landroid/widget/TextView;

    .line 255
    sget v2, Lctk$f;->single_avatar:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Lctk$e;->default_group_icon:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 257
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    sget v2, Lctk$f;->tv_type:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->k:Landroid/widget/TextView;

    .line 272
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    sget v2, Lctk$f;->edt_conversation_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->m:Landroid/widget/EditText;

    .line 285
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 286
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->m:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 307
    sget v2, Lctk$f;->group_desc_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->n:Landroid/widget/TextView;

    .line 308
    sget v2, Lctk$f;->rl_desc_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, "descContainer":Landroid/view/View;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->E:Z

    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "conversation_id"

    invoke-static {v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->C:Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "im_navigator_from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->B:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_mem_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    .line 327
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 331
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 336
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    :cond_3
    sget v2, Lctk$f;->btn_create:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1355
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1356
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v3, "action_select_contact_result"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1358
    const-string/jumbo v3, "action_group_type_selected"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1360
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 349
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a()V

    .line 1375
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->D:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->E:Z

    if-eqz v2, :cond_4

    .line 1376
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    .line 1378
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1379
    sget-object v2, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->z:I

    .line 1383
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->r:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Ljava/util/List;)V

    .line 1616
    :cond_5
    sget v2, Lctk$f;->grid_view:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->l:Landroid/widget/GridView;

    .line 1617
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->l:Landroid/widget/GridView;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1618
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 1619
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    .line 1620
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42100000    # 36.0f

    .line 1621
    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    sub-int/2addr v3, v4

    .line 1622
    if-lez v3, :cond_6

    .line 1623
    div-int/lit8 v2, v3, 0x7

    .line 1625
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->l:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1627
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->p:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

    .line 1628
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->l:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->p:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$a;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1630
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->l:Landroid/widget/GridView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1662
    sget v2, Lctk$f;->tv_conversation_mem_count:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->f:Landroid/widget/TextView;

    .line 1663
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->f:Landroid/widget/TextView;

    sget v3, Lctk$i;->member_count:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 954
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 955
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 956
    return-void
.end method
