.class public Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MsgForwardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lccp;


# static fields
.field private static final V:Ljava/lang/String;


# instance fields
.field protected A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

.field protected B:Landroid/widget/ListView;

.field protected C:Lcvm;

.field protected D:Z

.field protected E:Z

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:Z

.field K:Landroid/content/BroadcastReceiver;

.field L:Landroid/widget/SearchView$OnQueryTextListener;

.field protected M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

.field protected N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

.field protected O:Ljava/lang/Object;

.field protected P:I

.field protected Q:Ljava/lang/String;

.field protected R:Lcom/alibaba/wukong/im/Message;

.field protected S:Ljava/lang/String;

.field protected T:I

.field protected U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private W:Landroid/view/View;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/view/View;

.field private Z:Landroid/os/Handler;

.field protected a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

.field private aA:Landroid/widget/SearchView;

.field private aB:Z

.field private aC:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

.field private aD:Landroid/content/BroadcastReceiver;

.field private aE:Ljava/lang/Runnable;

.field private aF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Z

.field private aK:Ljava/lang/String;

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private aO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private aP:Ljava/lang/String;

.field private aQ:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

.field private aR:Lcvm$a;

.field private aS:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

.field private aa:I

.field private ab:Ljava/lang/String;

.field private ac:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

.field private ad:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

.field private ae:Z

.field private af:Ljava/lang/String;

.field private ag:I

.field private ah:Ljava/lang/String;

.field private ai:[J

.field private aj:Ljava/lang/String;

.field private ak:J

.field private al:I

.field private am:I

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

.field private ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

.field private as:Landroid/widget/Button;

.field private at:Z

.field private au:[Ljava/lang/String;

.field private av:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Landroid/widget/TextView;

.field private ax:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private ay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private az:Landroid/view/View;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Landroid/widget/RelativeLayout;

.field protected d:Landroid/widget/RelativeLayout;

.field protected e:Landroid/widget/RelativeLayout;

.field protected f:Landroid/widget/RelativeLayout;

.field protected g:Landroid/widget/RelativeLayout;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/ListView;

.field protected k:Lcvm;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

.field protected t:Z

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Z

.field protected y:J

.field protected z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Z:Landroid/os/Handler;

    .line 167
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    .line 169
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    .line 171
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->r:Z

    .line 174
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ae:Z

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    .line 204
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    .line 221
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    .line 222
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->E:Z

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ax:Ljava/util/List;

    .line 242
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aD:Landroid/content/BroadcastReceiver;

    .line 250
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->K:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->L:Landroid/widget/SearchView$OnQueryTextListener;

    .line 395
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aE:Ljava/lang/Runnable;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aF:Ljava/util/List;

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aN:Ljava/util/ArrayList;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aO:Ljava/util/ArrayList;

    .line 638
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    .line 2238
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aR:Lcvm$a;

    .line 2246
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aS:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 707
    .local v17, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v23

    .line 708
    .local v23, "type":Ljava/lang/String;
    const-string/jumbo v2, "count_limit"

    const/16 v3, 0x32

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    .line 709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    if-gtz v2, :cond_0

    .line 710
    const/16 v2, 0x32

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    .line 712
    :cond_0
    const-string/jumbo v2, "im_navigator_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->af:Ljava/lang/String;

    .line 713
    const-string/jumbo v2, "intent_key_time_stamp"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->i:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_functional_ding_mail:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 715
    const-string/jumbo v2, "intent_key_pick_org_contact"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->at:Z

    .line 716
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    .line 717
    const-string/jumbo v2, "intent_key_menu_seed"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    .line 718
    const-string/jumbo v2, "intent_key_filter_shopping"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->an:Z

    .line 719
    const-string/jumbo v2, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v23, :cond_8

    .line 720
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v21, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "to"

    const-string/jumbo v3, "dingfriend"

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "share_to"

    move-object/from16 v0, v21

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 725
    const-string/jumbo v2, "from_share"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 726
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ab:Ljava/lang/String;

    .line 727
    const-string/jumbo v2, "text/plain"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5154
    const-string/jumbo v2, "message_id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    .line 5155
    const-string/jumbo v2, "message"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    .line 5156
    const-string/jumbo v2, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->S:Ljava/lang/String;

    .line 5157
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    .line 5160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->S:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5161
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Landroid/content/Intent;)V

    .line 6889
    .end local v21    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-eqz v2, :cond_2

    .line 6890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onDestroy()V

    .line 6891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .line 6894
    :cond_2
    const-string/jumbo v2, "intent_key_im_forward_mode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    .line 6896
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    if-eqz v2, :cond_22

    .line 6897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$UseEmotionPackageDelegate;

    if-eqz v2, :cond_21

    .line 6898
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/EmotionConversationPickerHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .line 6965
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v2, :cond_37

    .line 6966
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    .line 873
    :cond_4
    :goto_2
    const-string/jumbo v2, "intent_key_im_forward_edit_mode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ag:I

    .line 875
    const-string/jumbo v2, "intent_key_pick_conv_choose_mode"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3a

    .line 877
    const/4 v2, 0x1

    .line 879
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Z)V

    .line 881
    return-void

    .line 5163
    .restart local v21    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v2, "im_share_callback_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ah:Ljava/lang/String;

    .line 5164
    const-string/jumbo v2, "im_at_id_list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ai:[J

    .line 5165
    const-string/jumbo v2, "im_share_biz_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aj:Ljava/lang/String;

    goto/16 :goto_0

    .line 729
    :cond_6
    const-string/jumbo v2, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5171
    const-string/jumbo v2, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aN:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5173
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    goto/16 :goto_0

    .line 732
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 734
    .end local v21    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v23, :cond_a

    .line 735
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 736
    .restart local v21    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "to"

    const-string/jumbo v3, "dingfriend"

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "share_to"

    move-object/from16 v0, v21

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 740
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 741
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ab:Ljava/lang/String;

    .line 742
    const-string/jumbo v2, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5177
    const-string/jumbo v2, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aN:Ljava/util/ArrayList;

    .line 5178
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    goto/16 :goto_0

    .line 745
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 747
    .end local v21    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string/jumbo v2, "outShare"

    const-string/jumbo v3, "android.intent.ding.EXTRA_ACTION_TYPE"

    .line 748
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 749
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    .line 750
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ad:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    goto/16 :goto_0

    .line 5884
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 5885
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "remind_type"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6150
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 5885
    if-lez v2, :cond_c

    const/4 v2, 0x1

    .line 752
    :goto_4
    if-eqz v2, :cond_d

    .line 753
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aB:Z

    goto/16 :goto_0

    .line 5885
    :cond_c
    const/4 v2, 0x0

    goto :goto_4

    .line 754
    :cond_d
    const-string/jumbo v2, "intent_key_share_emotion_action_type"

    const-string/jumbo v3, "android.intent.ding.EXTRA_ACTION_TYPE"

    .line 755
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 756
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    .line 757
    const-string/jumbo v2, "intent_key_emotion_package_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->u:Ljava/lang/String;

    .line 758
    const-string/jumbo v2, "intent_key_emotion_package_full_desc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->v:Ljava/lang/String;

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "intent_key_emotion_share_delegate"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    goto/16 :goto_0

    .line 760
    :cond_e
    const-string/jumbo v2, "intent_key_send_emotion_action_type"

    const-string/jumbo v3, "android.intent.ding.EXTRA_ACTION_TYPE"

    .line 761
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 762
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    .line 763
    const-string/jumbo v2, "intent_key_choose_limit_tip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    .line 764
    .local v19, "emotionObject":Ljava/io/Serializable;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    if-eqz v2, :cond_1

    .line 765
    check-cast v19, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    .end local v19    # "emotionObject":Ljava/io/Serializable;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ac:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    goto/16 :goto_0

    .line 767
    :cond_f
    const-string/jumbo v2, "intent_key_send_mail_to_chat_action_type"

    const-string/jumbo v3, "android.intent.mail.EXTRA_ACTION_TYPE"

    .line 768
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 767
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 769
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 771
    const-string/jumbo v2, "intent_key_mail_server_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->F:Ljava/lang/String;

    .line 772
    const-string/jumbo v2, "intent_key_mail_msg_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->G:Ljava/lang/String;

    .line 773
    const-string/jumbo v2, "intent_key_mail_account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->I:Ljava/lang/String;

    .line 774
    const-string/jumbo v2, "mail_title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->H:Ljava/lang/String;

    goto/16 :goto_0

    .line 775
    :cond_10
    const-string/jumbo v2, "intent_key_mail_operation_type"

    const-string/jumbo v3, "android.intent.mail.EXTRA_ACTION_TYPE"

    .line 776
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 775
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 777
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->E:Z

    goto/16 :goto_0

    .line 778
    :cond_11
    const-string/jumbo v2, "intent_action_forward_doclens"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 779
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->r:Z

    goto/16 :goto_0

    .line 782
    :cond_12
    const-string/jumbo v2, "message_id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    .line 783
    const-string/jumbo v2, "message"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    .line 784
    const-string/jumbo v2, "intent_key_forward_count"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->P:I

    .line 785
    const-string/jumbo v2, "conversation_id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Q:Ljava/lang/String;

    .line 786
    const-string/jumbo v2, "share_pic_url"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aG:Ljava/lang/String;

    .line 787
    const-string/jumbo v2, "share_text"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->S:Ljava/lang/String;

    .line 788
    const-string/jumbo v2, "share_title"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aH:Ljava/lang/String;

    .line 789
    const-string/jumbo v2, "share_url"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aI:Ljava/lang/String;

    .line 790
    const-string/jumbo v2, "from_share"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 792
    const-string/jumbo v2, "intent_key_share_source_from_inner"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 797
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->af:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 798
    const-string/jumbo v2, "share"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->af:Ljava/lang/String;

    .line 800
    :cond_14
    const-string/jumbo v2, "share_pic_url_to_ding"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aM:Ljava/lang/String;

    .line 801
    const-string/jumbo v2, "file_name"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->m:Ljava/lang/String;

    .line 802
    const-string/jumbo v2, "file_url"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n:Ljava/lang/String;

    .line 803
    const-string/jumbo v2, "file_private_tag"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aa:I

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 805
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    .line 812
    :cond_15
    :goto_5
    const-string/jumbo v2, "msg_entity_list"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 813
    .local v20, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v20, :cond_16

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 814
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    .line 817
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    if-eqz v2, :cond_17

    .line 818
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 821
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 822
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 825
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aa:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 826
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 829
    :cond_19
    const-string/jumbo v2, "need_space_copy"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aJ:Z

    .line 832
    const-string/jumbo v2, "person_name_card"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 833
    const-string/jumbo v2, "intent_key_for_miniapp_msg"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .line 834
    const-string/jumbo v2, "corpid"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->w:Ljava/lang/String;

    .line 835
    const-string/jumbo v2, "is_confirm"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->x:Z

    .line 837
    const-string/jumbo v2, "message_favorite_key"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->U:Ljava/util/List;

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->U:Ljava/util/List;

    if-eqz v2, :cond_1a

    .line 840
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    .line 842
    :cond_1a
    const-string/jumbo v2, "space_transfer_src"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aK:Ljava/lang/String;

    .line 843
    const-string/jumbo v2, "space_statistic_key"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aL:Ljava/lang/String;

    .line 845
    const-string/jumbo v2, "ding_text_content"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aP:Ljava/lang/String;

    .line 847
    const-string/jumbo v2, "conversation_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 848
    const-string/jumbo v2, "conversation_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1e

    .line 850
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->av:Ljava/util/HashSet;

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_1e

    aget-object v18, v3, v2

    .line 852
    .local v18, "cid":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 853
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->av:Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 806
    .end local v18    # "cid":Ljava/lang/String;
    .end local v20    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aM:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 807
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    goto/16 :goto_5

    .line 808
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aa:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 809
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aO:Ljava/util/ArrayList;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 859
    .restart local v20    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_1f

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 861
    .local v22, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 868
    .end local v22    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1f
    :goto_7
    const-string/jumbo v2, "conversation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ay:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 864
    .restart local v22    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 6900
    .end local v20    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v22    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_21
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6902
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aB:Z

    if-eqz v2, :cond_23

    .line 6903
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aC:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    .line 6904
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aC:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;-><init>(Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6905
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    if-eqz v2, :cond_24

    .line 6906
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ac:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;-><init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6907
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    if-eqz v2, :cond_25

    .line 6909
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ad:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareSdkForwardHandler;-><init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6910
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->r:Z

    if-eqz v2, :cond_26

    .line 6911
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6912
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v2, :cond_27

    .line 6913
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->I:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->F:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6914
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    .line 6915
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->S:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ai:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ah:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aj:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;-><init>(Ljava/lang/String;Z[JLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6916
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    if-ltz v2, :cond_29

    .line 6918
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.workapp.choose.pictire.orientation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 6919
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aa:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aN:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aO:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->S:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aM:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ab:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aH:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;-><init>(Lcom/alibaba/wukong/im/Message;IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6923
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    if-eqz v2, :cond_2b

    .line 6925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_2a

    .line 6926
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    check-cast v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 6927
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.workapp.choose.pictire.orientation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 6928
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aJ:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->x:Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aa:I

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;-><init>(ZLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6929
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v2, :cond_3

    .line 6930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->O:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 6931
    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->x:Z

    invoke-direct {v3, v2, v4}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6933
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v2, :cond_2c

    .line 6934
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6935
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-eqz v2, :cond_2d

    .line 6936
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;-><init>(Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6937
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 6939
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.workapp.choose.pictire.orientation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 6940
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aa:I

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6941
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->U:Ljava/util/List;

    if-eqz v2, :cond_2f

    .line 6942
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->U:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6943
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 6944
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/PickForwardHandler;-><init>(Landroid/content/Intent;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .line 6945
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->W:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->at:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6946
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_1

    .line 6945
    :cond_30
    const/16 v2, 0x8

    goto :goto_8

    .line 6947
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    .line 6949
    :cond_32
    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->P:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/wukong/im/Message;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .line 6950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->setForwardTimeStamp(J)V

    goto/16 :goto_1

    .line 6951
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_34

    .line 6953
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/ForwardCombineHandler;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkim/forward/ForwardCombineHandler;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    .line 6954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->setForwardTimeStamp(J)V

    goto/16 :goto_1

    .line 6955
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_35

    .line 6956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->i:Landroid/widget/TextView;

    sget v3, Lctk$i;->dt_mail_picker_editmailcontent:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6958
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->P:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/forward/MessageForwardMailStyleHandler;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6960
    :cond_35
    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->x:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-direct {v3, v2, v4, v6, v7}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;-><init>(ZLjava/lang/String;J)V

    .line 6961
    const-string/jumbo v2, "intent_key_pick_conv_choose_mode"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkim/forward/ConversationPickHandler;->setSupportMultiple(Z)V

    .line 6963
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    goto/16 :goto_1

    .line 6961
    :cond_36
    const/4 v2, 0x0

    goto :goto_9

    .line 6969
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-eqz v2, :cond_38

    .line 6970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->isSupportMultiple()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    .line 6974
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    if-eqz v2, :cond_4

    .line 6978
    if-eqz p1, :cond_39

    const-string/jumbo v2, "intent_key_enable_forward_multiple"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_39

    .line 6979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    goto/16 :goto_2

    .line 6972
    :cond_38
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    goto :goto_a

    .line 6982
    :cond_39
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "csconfig_trans_multi_select"

    const/4 v4, 0x1

    .line 6983
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    .line 6984
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    if-eqz v2, :cond_4

    .line 6987
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "im_trans_multi_enable_ios"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6988
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6989
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    goto/16 :goto_2

    .line 879
    :cond_3a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ag:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_3b
    const/4 v2, 0x0

    goto/16 :goto_3
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 13
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 585
    if-nez p1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    if-eqz p1, :cond_0

    .line 589
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 590
    .local v7, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 591
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 592
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 593
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v8, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    invoke-static {v8, v12}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "icon":Ljava/lang/String;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$21;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 615
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v12

    .line 596
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Landroid/content/Intent;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 144
    .line 16192
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16195
    const-string/jumbo v0, "intent_key_dialog_params_object"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;

    .line 16197
    if-eqz v0, :cond_0

    .line 16201
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16203
    :try_start_0
    iget v2, v0, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;->titleResId:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;->messageResId:I

    .line 16204
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;->negativeResId:I

    const/4 v4, 0x0

    .line 16205
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;->positiveResId:I

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;

    invoke-direct {v4, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;Landroid/content/Intent;)V

    .line 16206
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$14;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalkim/models/DialogParamsObject;Landroid/content/Intent;)V

    .line 16223
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16233
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16235
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "x3"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "sendMailConfirm"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aQ:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->setMsgForwardStatistics(Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;)V

    .line 1907
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    if-eqz v0, :cond_2

    .line 1908
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    check-cast v0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    invoke-virtual {v0, p0, p2, p1, p3}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1910
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v0, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->share2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 11
    .param p1, "isMultipleMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 996
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    .line 998
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v5, :cond_7

    .line 999
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1000
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1001
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1002
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1003
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1004
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h:Landroid/widget/TextView;

    sget v8, Lctk$i;->dt_im_transmit_select_group:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g()V

    .line 1026
    const/4 v5, 0x0

    .line 7457
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Z)V

    .line 1027
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->supportInvalidateOptionsMenu()V

    .line 1028
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v5, :cond_0

    .line 1029
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    iget-boolean v8, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    invoke-virtual {v5, v8}, Lcvm;->a(Z)V

    .line 1032
    :cond_0
    const/4 v1, 0x0

    .line 1033
    .local v1, "init":Z
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v5, :cond_f

    .line 1034
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-nez v5, :cond_2

    .line 1035
    new-instance v5, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .line 1036
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aS:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setCallback(Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView$a;)V

    .line 1037
    sget v5, Lctk$f;->ll_rootview:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1038
    .local v3, "llRootView":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ay:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    .line 1043
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ay:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/util/List;)Z

    .line 1111
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1113
    .end local v3    # "llRootView":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setVisibility(I)V

    .line 1114
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setRecipientsLimitCount(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "intent_key_choose_limit_tip"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1116
    .local v2, "limitTipAT":I
    if-lez v2, :cond_3

    .line 1117
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setLimitTipAT(I)V

    .line 1123
    .end local v2    # "limitTipAT":I
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v5, :cond_6

    .line 1124
    if-nez v1, :cond_4

    .line 1125
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a()V

    .line 1127
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->as:Landroid/widget/Button;

    if-nez v5, :cond_5

    .line 1128
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    sget v7, Lctk$f;->btn_finish_select:I

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->as:Landroid/widget/Button;

    .line 1130
    :cond_5
    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    if-ne v5, v10, :cond_10

    .line 1131
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->as:Landroid/widget/Button;

    sget v6, Lctk$i;->sure:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 1132
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Z)V

    .line 1133
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Z)V

    .line 1140
    :cond_6
    :goto_3
    return-void

    .line 1006
    .end local v1    # "init":Z
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1007
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v5, :cond_9

    .line 1008
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1009
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1010
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1022
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1023
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h:Landroid/widget/TextView;

    sget v8, Lctk$i;->chat_forward_group:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1011
    :cond_9
    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_a

    .line 1012
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1013
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1014
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 1016
    :cond_a
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1017
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1018
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v5

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v5, v8}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1019
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    :cond_b
    move v5, v7

    .line 1022
    goto :goto_5

    .line 1044
    .restart local v1    # "init":Z
    .restart local v3    # "llRootView":Landroid/widget/LinearLayout;
    :cond_c
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    .line 1045
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v4, "selectedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_6
    if-ge v5, v8, :cond_e

    aget-object v0, v7, v5

    .line 1047
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1048
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1051
    .end local v0    # "cid":Ljava/lang/String;
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1052
    const-class v5, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$22;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    invoke-interface {v5, v7, v4}, Lcom/alibaba/wukong/im/ConversationService;->getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1120
    .end local v3    # "llRootView":Landroid/widget/LinearLayout;
    .end local v4    # "selectedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v5, :cond_3

    .line 1121
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1135
    :cond_10
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->as:Landroid/widget/Button;

    sget v7, Lctk$i;->dt_im_trans_to_multiple_action_send:I

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 1136
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Z)V

    .line 1137
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Z)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "x2"    # Z

    .prologue
    .line 144
    .line 17180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 17181
    if-eqz p2, :cond_0

    .line 17182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)Z

    move-result v0

    .line 17186
    :goto_0
    return v0

    .line 17184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->n(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/lang/String;)Z

    .line 17186
    const/4 v0, 0x1

    goto :goto_0

    .line 17188
    :cond_1
    const/4 v0, 0x0

    .line 144
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "clipData":Landroid/content/ClipData;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 1189
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 1191
    :cond_0
    if-eqz v0, :cond_1

    .line 1192
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 1193
    .local v1, "clipDataLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1194
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 1195
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 1196
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aO:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "clipDataLength":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-static {p1, v5}, Lcoy;->c(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1200
    .restart local v4    # "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 1201
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aO:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aO:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1205
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    .line 1208
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Landroid/content/Intent;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 144
    .line 16317
    const-string/jumbo v0, "conversation"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 16319
    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_1

    .line 16320
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 16324
    :goto_0
    if-eqz v0, :cond_0

    .line 16326
    const-string/jumbo v2, "from_mail"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "choose_mode"

    const/4 v3, -0x1

    .line 16327
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 16328
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 16330
    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;

    invoke-direct {v6, p0, v3, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    .line 16364
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->F:Ljava/lang/String;

    const-string/jumbo v5, "EVENTBUTLER"

    .line 16365
    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v7, Lcma;

    invoke-interface {v5, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 16364
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V

    .line 16368
    :cond_0
    :goto_1
    return-void

    .line 16321
    :cond_1
    instance-of v2, v0, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_4

    .line 16322
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    goto :goto_0

    .line 16367
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "action_choose_group_conversation"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16368
    invoke-virtual {p0, v1, v0, v4}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V

    goto :goto_1

    .line 16851
    :cond_3
    invoke-virtual {p0, v1, v0, v5}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    return v0
.end method

.method protected static e()Z
    .locals 3

    .prologue
    .line 2285
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_reusing_search_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ae:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aE:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    return-object v0
.end method

.method private h()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 1143
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    .line 8109
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1147
    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1148
    :cond_1
    const/4 v0, 0x1

    .line 1150
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1693
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1701
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->an:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aF:Ljava/util/List;

    return-object v0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1960
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->az:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->az:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1963
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    if-nez v0, :cond_6

    .line 15991
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 15992
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1971
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    if-eqz v0, :cond_2

    .line 1972
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1985
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1986
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1988
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 1961
    goto :goto_0

    .line 1967
    :cond_6
    const-string/jumbo v0, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->X:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v0, :cond_6

    .line 2272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ldhy;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    if-eqz v0, :cond_4

    .line 2276
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v3

    .line 16084
    const/4 v0, 0x0

    .line 16085
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 16086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16087
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 16088
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v4, :cond_1

    .line 16089
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2276
    :cond_3
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->setChoosedList(Ljava/util/ArrayList;)V

    .line 2278
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v0, :cond_6

    .line 2279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->f()V

    .line 2282
    :cond_6
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->av:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ax:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aw:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aB:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aC:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->i()V

    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 144
    .line 18169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-nez v0, :cond_1

    .line 18170
    :cond_0
    :goto_0
    return-void

    .line 18172
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    .line 18173
    if-eqz v0, :cond_0

    .line 18176
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2065
    .line 15997
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    if-eqz v5, :cond_0

    .line 15999
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 16000
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 16002
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Z:Landroid/os/Handler;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$11;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2066
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v1

    .line 2067
    .local v1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v4

    .line 2068
    .local v4, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2070
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2071
    .local v0, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v0, :cond_1

    .line 2072
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2076
    .end local v0    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2077
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2078
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_3

    .line 2079
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromUserIdentitiyObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2083
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v5, :cond_5

    .line 2084
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a()V

    .line 2085
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/util/List;)Z

    .line 2087
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v5, :cond_6

    .line 2088
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-static {v3}, Ldhy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcvm;->a(Ljava/util/List;)V

    .line 2090
    :cond_6
    return-void
.end method

.method public final a(Ljava/io/Serializable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2094
    .local p1, "t":Ljava/io/Serializable;, "TT;"
    instance-of v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v2, :cond_0

    .line 2124
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 2098
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2099
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v1, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2102
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 2103
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$13;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    const-class v5, Lcma;

    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 2102
    invoke-virtual {v3, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 2122
    .end local v1    # "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Z)V

    .line 458
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1851
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1852
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "sendMailConfirm"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1855
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1900
    :cond_0
    :goto_0
    return-void

    .line 1861
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1862
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1863
    .local v2, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1864
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$8;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Z)V

    const-class v4, Lcma;

    invoke-static {v1, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1894
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 1897
    .end local v0    # "apiEventListener":Lcma;
    .end local v2    # "uid":J
    :cond_2
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "allowEmptySearchKeyword"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 462
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 467
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "needCommit":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v3, :cond_2

    .line 471
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 472
    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 473
    const/4 v2, 0x1

    .line 475
    :cond_2
    if-eqz v2, :cond_3

    .line 476
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 479
    .end local v2    # "needCommit":Z
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_a

    .line 480
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ae:Z

    if-nez v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 482
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 483
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 484
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 485
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 486
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 489
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aw:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 491
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-nez v3, :cond_9

    .line 492
    sget v3, Lctk$f;->ll_search_fragment_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "keyword"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 496
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 497
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 498
    :cond_5
    const-string/jumbo v3, "show_org_contact"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    :cond_6
    const-string/jumbo v3, "show_local_contact"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    const-string/jumbo v3, "show_group_conversation"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    const-string/jumbo v3, "show_public_groupconversation"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    const-string/jumbo v3, "choose_mode"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    const-string/jumbo v3, "intent_key_search_tab_show_flag"

    const/16 v5, 0x27

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v3, "intent_key_search_show_global_homepage"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->q()Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 512
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b()I

    move-result v3

    if-nez v3, :cond_8

    .line 513
    const-string/jumbo v3, "count_limit"

    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2451
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v3, :cond_7

    .line 2452
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k()V

    .line 519
    :cond_7
    :goto_1
    const-string/jumbo v3, "intent_key_search_entry"

    sget-object v5, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 521
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 522
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-virtual {v3}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 524
    sget v3, Lctk$f;->ll_search_fragment_container:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v3, v5}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 525
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 529
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_2
    sget v3, Lctk$f;->ll_search_fragment_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 516
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_8
    const-string/jumbo v3, "count_limit"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 527
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 532
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 534
    const/4 v2, 0x0

    .line 535
    .restart local v2    # "needCommit":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v3, :cond_b

    .line 536
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 537
    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    .line 538
    const/4 v2, 0x1

    .line 540
    :cond_b
    if-eqz v2, :cond_c

    .line 541
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 544
    .end local v2    # "needCommit":Z
    :cond_c
    sget v3, Lctk$f;->ll_search_fragment_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v3, :cond_f

    .line 546
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 549
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    :cond_d
    move v8, v5

    move-object v5, v3

    move v3, v8

    .line 568
    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v3, :cond_13

    .line 571
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 572
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ax:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 573
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aw:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->B:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 579
    :cond_e
    :goto_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->X:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 552
    :cond_f
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 553
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v3, :cond_11

    .line 554
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 555
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    :cond_10
    :goto_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h()Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v5, v3

    move v3, v4

    goto :goto_3

    .line 557
    :cond_11
    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_12

    .line 558
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 562
    :cond_12
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 563
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 564
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 565
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 577
    :cond_13
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    if-nez v0, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    invoke-virtual {v0, v1}, Lcvm;->a(Z)V

    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aR:Lcvm$a;

    .line 9088
    iput-object v1, v0, Lcvm;->c:Lcvm$a;

    .line 1443
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ldhy;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcvm;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 1954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    .line 1955
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j()V

    .line 1956
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->supportInvalidateOptionsMenu()V

    .line 1957
    return-void
.end method

.method public final onBackPressed()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1929
    .line 15023
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v2, :cond_1

    .line 15024
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g()V

    .line 15025
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    .line 15026
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 15028
    :cond_0
    const/4 v2, 0x0

    .line 15457
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Z)V

    .line 15029
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->supportInvalidateOptionsMenu()V

    .line 1929
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    if-eqz v0, :cond_4

    .line 1930
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    .line 1931
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j()V

    .line 1932
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->supportInvalidateOptionsMenu()V

    .line 1938
    :goto_1
    return-void

    .line 15032
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    if-nez v0, :cond_2

    .line 15034
    const-string/jumbo v0, ""

    const-string/jumbo v2, ""

    .line 15915
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.conversation.FORWARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15917
    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15918
    const-string/jumbo v0, "conversation_title"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15919
    const-string/jumbo v0, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15920
    const-string/jumbo v0, "message_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15921
    const-string/jumbo v0, "corpid"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->w:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15922
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15924
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 15036
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-eqz v0, :cond_3

    .line 15037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    :cond_3
    move v0, v1

    .line 15039
    goto :goto_0

    .line 1935
    :cond_4
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1450
    .line 9710
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_forward_group:I

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v4, :cond_1

    .line 9711
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/group_conversation.html"

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    .line 9712
    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 9748
    const/4 v4, 0x1

    .line 1450
    :goto_0
    if-eqz v4, :cond_2

    .line 1690
    :cond_0
    :goto_1
    return-void

    .line 9750
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1453
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_forward_new:I

    if-ne v4, v5, :cond_9

    .line 1454
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1455
    .local v11, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "title"

    sget v5, Lctk$i;->act_create_conversation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string/jumbo v4, "choose_people_action"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1457
    const-string/jumbo v4, "intent_key_menu_seed"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-virtual {v11, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->M:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v4, :cond_4

    .line 1459
    const-string/jumbo v4, "name_card_forward"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1474
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 1475
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "mail_chat2_creatnew"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1477
    :cond_3
    const-string/jumbo v4, "intent_key_im_forward_mode"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1478
    const-string/jumbo v4, "intent_key_menu_seed"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->y:J

    invoke-virtual {v11, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1479
    const-string/jumbo v4, "hide_org_external"

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1480
    const-string/jumbo v4, "show_local_contact"

    invoke-static {}, Ldjl;->f()Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1481
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    sget v9, Lctk$i;->create_conversation_choose_limit:I

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1460
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->t:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->q:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->N:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-eqz v4, :cond_6

    .line 1461
    :cond_5
    const-string/jumbo v4, "from_share"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1462
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->D:Z

    if-eqz v4, :cond_7

    .line 1463
    const-string/jumbo v4, "from_mail"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1464
    const-string/jumbo v4, "intent_key_mail_msg_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->G:Ljava/lang/String;

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string/jumbo v4, "conversation_title"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->H:Ljava/lang/String;

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "mail_2chat_creatnew"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1467
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->o:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->p:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1468
    const-string/jumbo v4, "message_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string/jumbo v4, "msg_forward"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1471
    :cond_8
    const-string/jumbo v4, "from_share"

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1472
    const-string/jumbo v4, "extra_share_type"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->T:I

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1485
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_forward_contact:I

    if-ne v4, v5, :cond_d

    .line 1486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Ldhy;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1487
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1488
    .restart local v11    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "seleced_members"

    invoke-virtual {v11, v4, v14}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_c

    .line 1490
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v20, "unCheckList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->au:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_b

    aget-object v13, v5, v4

    .line 1492
    .local v13, "cid":Ljava/lang/String;
    if-eqz v13, :cond_a

    const-string/jumbo v7, ":"

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1494
    invoke-static {v13}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v18

    .line 1495
    .local v18, "uid":J
    const-wide/16 v8, 0x0

    cmp-long v7, v18, v8

    if-lez v7, :cond_a

    .line 1496
    new-instance v21, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1497
    .local v21, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1498
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    .end local v18    # "uid":J
    .end local v21    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1502
    .end local v13    # "cid":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 1503
    const-string/jumbo v4, "key_request_select_user_list"

    move-object/from16 v0, v20

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1506
    .end local v20    # "unCheckList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_c
    const-string/jumbo v4, "hide_org_external"

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1507
    const-string/jumbo v4, "show_local_contact"

    invoke-static {}, Ldjl;->f()Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1508
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->am:I

    sget v9, Lctk$i;->create_conversation_choose_limit:I

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V

    .line 1511
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1512
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "contact_chooser_pickfromcontact"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1514
    .end local v11    # "bundle":Landroid/os/Bundle;
    .end local v14    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_forward_group:I

    if-ne v4, v5, :cond_f

    .line 1515
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/group_conversation.html"

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$24;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    .line 1516
    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1546
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 1547
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "contact_chooser_pickfromconversation"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1548
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1549
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "mail_chat2_selectgroup"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1551
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->file_helper:I

    if-ne v4, v5, :cond_10

    .line 1552
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v6, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-static {v4}, Ldjl;->a(Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 1570
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_forward_circle:I

    if-ne v4, v5, :cond_11

    .line 1571
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1572
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_1

    .line 1574
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_mail_participant:I

    if-ne v4, v5, :cond_12

    .line 1575
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1576
    .restart local v11    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "count_limit"

    const/16 v5, 0x1e

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1577
    const-string/jumbo v4, "activity_identify"

    const-string/jumbo v5, "mail_detail_chat"

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string/jumbo v4, "title"

    sget v5, Lctk$i;->act_create_conversation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->I:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->F:Ljava/lang/String;

    new-instance v12, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    move-object/from16 v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V

    .line 1599
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "mail_2chat_part"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1600
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lctk$f;->rl_ding_mail:I

    if-ne v4, v5, :cond_0

    .line 1601
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_13

    .line 1602
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "mail_chat2_cmail"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1604
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->l:Ljava/lang/String;

    .line 10109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1605
    .local v16, "messageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_14

    .line 1606
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .local v15, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->R:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v4, v15}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 1687
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->i()V

    goto/16 :goto_1

    .line 1610
    .end local v15    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_14
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_17

    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "conversation_id"

    invoke-static {v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1612
    .restart local v13    # "cid":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1614
    .restart local v11    # "bundle":Landroid/os/Bundle;
    if-eqz v11, :cond_15

    .line 1615
    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1618
    .end local v11    # "bundle":Landroid/os/Bundle;
    :cond_15
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1619
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const-string/jumbo v6, " forward cmail cid null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    sget v4, Lctk$i;->im_encrypt_message_forward_error:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1623
    :cond_16
    const-class v4, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;J)V

    invoke-interface {v4, v5, v13}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1681
    .end local v13    # "cid":Ljava/lang/String;
    :cond_17
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    invoke-virtual {v4, v6, v7}, Ldvi;->b(J)Ljava/util/List;

    move-result-object v15

    .line 1682
    .restart local v15    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz v15, :cond_18

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_18

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1683
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v4, v15}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    goto/16 :goto_4

    .line 1685
    :cond_18
    sget v4, Lctk$i;->msg_forward_failed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 654
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ae:Z

    .line 655
    sget v1, Lctk$i;->dt_select_contact_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3211
    sget v1, Lctk$g;->activity_msg_forward:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->setContentView(I)V

    .line 3212
    sget v1, Lctk$g;->activity_msg_forward_header:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    .line 3213
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->rl_forward_new:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    .line 3214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->rl_forward_contact:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->W:Landroid/view/View;

    .line 3215
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->rl_forward_group:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    .line 3216
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    sget v2, Lctk$f;->tv_select_group:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h:Landroid/widget/TextView;

    .line 3217
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->file_helper:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    .line 3218
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->rl_ding_mail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    .line 3219
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->tv_ding_mail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->i:Landroid/widget/TextView;

    .line 3220
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->rl_mail_participant:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    .line 3221
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->rl_forward_circle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    .line 3222
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->W:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3224
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3226
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3227
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3228
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3230
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->tv_recent_conversation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->X:Landroid/widget/TextView;

    .line 3231
    sget v1, Lctk$f;->lv_recent_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    .line 3233
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->tv_recent_mail_conversation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aw:Landroid/widget/TextView;

    .line 3234
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->lv_recent_mail_conversation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->B:Landroid/widget/ListView;

    .line 3941
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->Y:Landroid/view/View;

    sget v2, Lctk$f;->view_search:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->az:Landroid/view/View;

    .line 3943
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->az:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3944
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->az:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Landroid/content/Intent;)V

    .line 4240
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$23;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V

    const/16 v3, 0x1f4

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 659
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 660
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string/jumbo v1, "com.workapp.conversation.forward.NAMECARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string/jumbo v1, "action_share"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string/jumbo v1, "action_choose_group_conversation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string/jumbo v1, "intent_action_show_confirm_dialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string/jumbo v1, "intent_action_show_loading_dialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string/jumbo v1, "intent_action_dismiss_loading_dialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 670
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aD:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "action_message_multi_forward_completed"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 673
    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->af:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aK:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aL:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aQ:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    .line 674
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aQ:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->enterPageStatistics()V

    .line 4680
    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;-><init>(Lccp;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->z:Lcom/alibaba/android/dingtalkim/impls/MsgForwardContactChooseControl;

    .line 4681
    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;-><init>(Lccp;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->A:Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;

    .line 676
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 410
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    if-eqz v2, :cond_3

    .line 411
    const-string/jumbo v2, ""

    invoke-interface {p1, v5, v6, v6, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 412
    .local v1, "searchInput":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    if-nez v2, :cond_0

    .line 413
    sget v2, Lctk$i;->search:I

    invoke-static {p0, v2}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    .line 414
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->L:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 417
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 418
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 419
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    invoke-static {p0, v2}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 425
    .end local v1    # "searchInput":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ag:I

    if-nez v2, :cond_2

    .line 427
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v2, :cond_4

    .line 428
    sget v2, Lctk$i;->dt_im_trans_to_multiple_menu_single_select:I

    invoke-interface {p1, v5, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 432
    .local v0, "menuItem":Landroid/view/MenuItem;
    :goto_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 435
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    invoke-static {p0, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 422
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aA:Landroid/widget/SearchView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 430
    :cond_4
    sget v2, Lctk$i;->dt_im_trans_multiple:I

    invoke-interface {p1, v5, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .restart local v0    # "menuItem":Landroid/view/MenuItem;
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ae:Z

    .line 2129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a:Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcif;)V

    .line 2132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->K:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 2133
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2136
    :cond_1
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aD:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    if-eqz v0, :cond_2

    .line 2138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->aq:Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onDestroy()V

    .line 2141
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 2142
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ak:J

    invoke-virtual {v0, v2, v3}, Ldvi;->b(J)Ljava/util/List;

    .line 2145
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->dismissLoadingDialog()V

    .line 2147
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 2148
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1755
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v5

    sget v6, Lctk$f;->lv_recent_mail_conversation:I

    if-ne v5, v6, :cond_2

    .line 1756
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    if-nez v3, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1759
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v5, "mail_2chat_recentchat"

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1760
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    invoke-virtual {v3}, Lcvm;->getCount()I

    move-result v3

    if-ge p3, v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    invoke-virtual {v3, p3}, Lcvm;->a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1763
    sget v3, Lctk$f;->session_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1764
    .local v2, "itemView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1765
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->C:Lcvm;

    invoke-virtual {v5, p3}, Lcvm;->a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 10851
    invoke-virtual {p0, v3, v5, v4}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V

    goto :goto_0

    .line 1769
    .end local v2    # "itemView":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v5, :cond_0

    .line 1772
    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->al:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1773
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "mail_chat2_recentchat"

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1776
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, p3, v5

    .line 1777
    .local v0, "adapterPosition":I
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-virtual {v5}, Lcvm;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1781
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    invoke-virtual {v5, v0}, Lcvm;->a(I)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 1782
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 1786
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1787
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 11808
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v5, "https://qr.dingtalk.com/group_conversation.html"

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;

    invoke-direct {v6, p0, v4}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 11809
    invoke-interface {v3, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 1791
    :cond_4
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v5, :cond_8

    .line 1792
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->av:Ljava/util/HashSet;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->av:Ljava/util/HashSet;

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1793
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12151
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    if-eqz v5, :cond_0

    .line 12152
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldjl;->m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 12153
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v6}, Ldjl;->n(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v6

    .line 12154
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    .line 13102
    iget-object v7, v7, Lcvm;->a:Ljava/util/HashSet;

    .line 12154
    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 12155
    :goto_1
    if-eqz v3, :cond_7

    .line 12156
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12157
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    .line 14064
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14065
    iget-object v4, v3, Lcvm;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14066
    invoke-virtual {v3}, Lcvm;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 12154
    goto :goto_1

    .line 12160
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ar:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12161
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->k:Lcvm;

    .line 14072
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14073
    iget-object v4, v3, Lcvm;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 14074
    invoke-virtual {v3}, Lcvm;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1798
    :cond_8
    sget v4, Lctk$f;->session_title:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1799
    .restart local v2    # "itemView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1800
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, v4, v5, v3}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Z)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 686
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4698
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->W:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Landroid/content/Intent;)V

    .line 689
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 2045
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ao:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2046
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    .line 2047
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Z)V

    .line 2048
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->ap:Z

    if-eqz v0, :cond_1

    .line 2049
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "chat_forward_mutiple_clicked"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2060
    :goto_1
    return v1

    .line 2046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2051
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "chat_forward_mutiple_exit_clicked"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 2055
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2060
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1

    .line 2057
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->onBackPressed()V

    goto :goto_1

    .line 2055
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
