.class public Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.super Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldep$b;
.implements Ldhm$a;
.implements Ldix;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# static fields
.field private static final Z:Ljava/lang/String;

.field public static final a:Ljava/lang/String;


# instance fields
.field private aA:Landroid/net/wifi/WifiInfo;

.field private aB:Ldop;

.field private aC:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

.field private aD:J

.field private aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field private aF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private aG:Lcjo$a;

.field private aH:Ljava/lang/String;

.field private aI:Ldql;

.field private aJ:Ldbw;

.field private aK:Ldrw;

.field private aL:Ldlx;

.field private aM:Ldhm;

.field private aN:Z

.field private aO:Z

.field private aP:Ljava/lang/String;

.field private aQ:Ljava/lang/String;

.field private aR:Z

.field private aS:I

.field private aT:J

.field private aU:Z

.field private aV:Z

.field private aW:J

.field private aX:J

.field private aY:J

.field private aZ:I

.field private aa:Z

.field private ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

.field private ac:Ldq;

.field private ad:Ldfc;

.field private ae:Z

.field private af:Landroid/os/Handler;

.field private ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private ah:Landroid/widget/TextView;

.field private ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

.field private aj:Landroid/widget/RelativeLayout;

.field private ak:I

.field private al:Landroid/view/View;

.field private am:Landroid/view/View;

.field private an:Landroid/widget/FrameLayout;

.field private ao:Landroid/widget/LinearLayout;

.field private ap:Landroid/widget/ImageView;

.field private aq:Landroid/view/View;

.field private ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

.field private as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

.field private at:Lcom/alibaba/wukong/im/Message;

.field private au:I

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:Ldey;

.field private ay:Ldev;

.field private az:Landroid/net/wifi/WifiManager;

.field public b:I

.field private bA:Z

.field private bB:Z

.field private bC:Z

.field private bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private bE:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private bF:Lcom/alibaba/wukong/im/ConversationListener;

.field private bG:Lcom/alibaba/wukong/im/GroupNickListener;

.field private bH:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

.field private bI:Ldps$a;

.field private bJ:Ldpt$a;

.field private bK:Landroid/view/View$OnClickListener;

.field private bL:Landroid/view/View$OnClickListener;

.field private bM:Landroid/view/View$OnClickListener;

.field private bN:Landroid/view/View$OnClickListener;

.field private bO:Landroid/view/View$OnClickListener;

.field private bP:Landroid/view/View$OnClickListener;

.field private bQ:Landroid/view/View$OnClickListener;

.field private bR:Lfzk;

.field private bS:Landroid/view/View$OnClickListener;

.field private bT:Landroid/view/View$OnClickListener;

.field private bU:Landroid/view/View$OnClickListener;

.field private bV:Lckj$a;

.field private bW:Landroid/view/View$OnClickListener;

.field private bX:Landroid/view/View$OnClickListener;

.field private bY:Landroid/view/View$OnClickListener;

.field private bZ:Landroid/view/View$OnClickListener;

.field private ba:J

.field private bb:Ljava/lang/Runnable;

.field private bc:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private bd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private be:Landroid/os/Handler;

.field private bf:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

.field private bg:Ldle;

.field private bh:Landroid/widget/ImageView;

.field private bi:Landroid/widget/ImageView;

.field private bj:Ldmg;

.field private bk:Z

.field private bl:J

.field private bm:Ldie;

.field private bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

.field private bo:Z

.field private bp:Ljava/lang/String;

.field private bq:Ljava/lang/String;

.field private br:Ljava/lang/String;

.field private bs:Ldfk;

.field private bt:Ldep$a;

.field private bu:Z

.field private bv:Ljava/lang/String;

.field private bw:Ljava/lang/String;

.field private bx:Ljava/lang/String;

.field private by:J

.field private bz:Ljava/lang/String;

.field c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

.field private final cA:I

.field private cB:Landroid/view/View$OnClickListener;

.field private cC:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

.field private cE:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

.field private cF:Z

.field private cG:Landroid/support/v7/widget/RecyclerView;

.field private cH:Lcws;

.field private cI:Leci;

.field private cJ:Z

.field private cK:Z

.field private ca:Landroid/view/View$OnClickListener;

.field private cb:Landroid/view/View$OnClickListener;

.field private cc:Landroid/content/BroadcastReceiver;

.field private cd:Ljava/lang/String;

.field private ce:Lcom/alibaba/wukong/im/MessageChangeListener;

.field private cf:Landroid/content/BroadcastReceiver;

.field private cg:Landroid/content/BroadcastReceiver;

.field private ch:Landroid/content/BroadcastReceiver;

.field private ci:Landroid/content/BroadcastReceiver;

.field private cj:Landroid/content/BroadcastReceiver;

.field private ck:Landroid/content/BroadcastReceiver;

.field private cl:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

.field private cm:Ljava/lang/Runnable;

.field private cn:Landroid/view/View;

.field private co:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private cp:I

.field private cq:Ldjx;

.field private cr:Z

.field private cs:I

.field private ct:I

.field private final cu:Ljava/lang/String;

.field private cv:Ljava/lang/String;

.field private final cw:I

.field private final cx:I

.field private final cy:I

.field private final cz:I

.field d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

.field e:Landroid/view/ViewStub;

.field f:Landroid/animation/ObjectAnimator;

.field public g:Ldew;

.field public h:Ldeu;

.field public i:Ldiz;

.field j:Landroid/view/View;

.field protected k:Ldvw;

.field l:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field m:Lcom/alibaba/dingtalk/oabase/OAInterface;

.field n:I

.field public o:Landroid/view/View$OnClickListener;

.field protected p:Lcom/alibaba/wukong/im/MessageListener;

.field protected q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 397
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "empty_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;-><init>()V

    .line 435
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aa:Z

    .line 444
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 515
    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aD:J

    .line 533
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN:Z

    .line 534
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO:Z

    .line 543
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV:Z

    .line 550
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aZ:I

    .line 551
    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ba:J

    .line 552
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$62;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$62;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb:Ljava/lang/Runnable;

    .line 565
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be:Landroid/os/Handler;

    .line 566
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bf:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 574
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 575
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->m:Lcom/alibaba/dingtalk/oabase/OAInterface;

    .line 578
    iput-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bl:J

    .line 610
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_fix_auto_translate_at_string"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bC:Z

    .line 618
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$73;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$73;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 625
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$84;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$84;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bE:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 949
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$106;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$106;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bF:Lcom/alibaba/wukong/im/ConversationListener;

    .line 973
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$117;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$117;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bG:Lcom/alibaba/wukong/im/GroupNickListener;

    .line 982
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$128;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$128;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bH:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    .line 996
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$139;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$139;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bI:Ldps$a;

    .line 1003
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bJ:Ldpt$a;

    .line 1036
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bK:Landroid/view/View$OnClickListener;

    .line 1045
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$24;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$24;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bL:Landroid/view/View$OnClickListener;

    .line 1055
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$35;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$35;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bM:Landroid/view/View$OnClickListener;

    .line 1074
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bN:Landroid/view/View$OnClickListener;

    .line 1095
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$57;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$57;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bO:Landroid/view/View$OnClickListener;

    .line 1109
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$58;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$58;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bP:Landroid/view/View$OnClickListener;

    .line 1125
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$59;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$59;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bQ:Landroid/view/View$OnClickListener;

    .line 1136
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$60;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$60;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bR:Lfzk;

    .line 1159
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$61;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$61;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bS:Landroid/view/View$OnClickListener;

    .line 1179
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$63;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$63;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bT:Landroid/view/View$OnClickListener;

    .line 1186
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$64;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$64;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bU:Landroid/view/View$OnClickListener;

    .line 1194
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$65;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$65;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bV:Lckj$a;

    .line 1222
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$66;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o:Landroid/view/View$OnClickListener;

    .line 1271
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$67;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$67;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bW:Landroid/view/View$OnClickListener;

    .line 1280
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$68;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$68;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bX:Landroid/view/View$OnClickListener;

    .line 1296
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$69;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$69;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bY:Landroid/view/View$OnClickListener;

    .line 1305
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$70;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bZ:Landroid/view/View$OnClickListener;

    .line 1320
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$71;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$71;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ca:Landroid/view/View$OnClickListener;

    .line 1335
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$72;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$72;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cb:Landroid/view/View$OnClickListener;

    .line 1389
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$74;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cc:Landroid/content/BroadcastReceiver;

    .line 1940
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$79;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$79;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ce:Lcom/alibaba/wukong/im/MessageChangeListener;

    .line 1947
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    .line 5257
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$136;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$136;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cm:Ljava/lang/Runnable;

    .line 6200
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->co:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 6263
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cp:I

    .line 7788
    const-string/jumbo v0, "sync_status"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cu:Ljava/lang/String;

    .line 8602
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cw:I

    .line 8603
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cx:I

    .line 8604
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cy:I

    .line 8605
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cz:I

    .line 8606
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cA:I

    .line 8849
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cB:Landroid/view/View$OnClickListener;

    .line 9065
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$50;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$50;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cC:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 9240
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$51;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$51;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cE:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aY:J

    return-wide v0
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const/4 v1, 0x0

    .line 392
    .line 52942
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 52945
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v3

    .line 52946
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 52947
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 52948
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52949
    if-eqz v0, :cond_0

    .line 52950
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v4, v5, :cond_0

    .line 52956
    :goto_1
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->S:Lcom/alibaba/wukong/im/Message;

    .line 52958
    :goto_2
    return-void

    .line 52947
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 52958
    :cond_1
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->S:Lcom/alibaba/wukong/im/Message;

    goto :goto_2

    .line 52961
    :cond_2
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->S:Lcom/alibaba/wukong/im/Message;

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldey;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax:Ldey;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldev;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay:Ldev;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->az()V

    return-void
.end method

.method static synthetic G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const-wide/16 v4, 0x0

    .line 392
    .line 53028
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53029
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    :goto_0
    return-void

    .line 53031
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a()V

    .line 53032
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x()V

    .line 53037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lddq;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53038
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cl:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cl:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 53039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_1

    .line 53040
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cl:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {v1}, Lddw;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldvw;->a(Ljava/lang/String;)V

    .line 53089
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Z)V

    goto :goto_0

    .line 53043
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$101;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 53058
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 53061
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 53062
    new-instance v0, Lddw$1;

    invoke-direct {v0, v1}, Lddw$1;-><init>(Lddw$a;)V

    .line 53083
    if-eqz p0, :cond_3

    .line 53084
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 53086
    :cond_3
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Ldxu;->g(JLcma;)V

    goto :goto_1
.end method

.method static synthetic I(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb()V

    return-void
.end method

.method static synthetic J(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cF:Z

    return v0
.end method

.method static synthetic K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    return-object v0
.end method

.method static synthetic K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au()V

    return-void
.end method

.method static synthetic M(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->w:Z

    .line 53124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 53127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 53129
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 53130
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic N(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53133
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV()V

    .line 53134
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU()V

    .line 392
    return-void
.end method

.method static synthetic O(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->by:J

    return-wide v0
.end method

.method static synthetic P(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bC:Z

    return v0
.end method

.method static synthetic T(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cl:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object v0
.end method

.method static synthetic U(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be()Z

    move-result v0

    return v0
.end method

.method static synthetic V(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic W(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const-wide/16 v4, 0x0

    .line 392
    .line 53262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 53263
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 53266
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;

    invoke-direct {v6, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$119;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)V

    const-class v7, Lcma;

    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au:I

    return v0
.end method

.method static synthetic Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->av:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aS:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aZ:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX:J

    return-wide p1
.end method

.method private a(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "iconRes"    # I
    .param p2, "withDot"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8745
    sget v3, Lctk$c;->ui_common_theme_icon_bg_color:I

    invoke-static {v3}, Leda;->b(I)I

    move-result v0

    .line 8746
    .local v0, "color":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleIconColor:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 8747
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleIconColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8749
    :cond_0
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 8750
    .local v2, "size":I
    new-instance v1, Lecw;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 52232
    .local v1, "drawable":Lecw;
    iput v2, v1, Lecw;->b:I

    .line 52234
    iput v2, v1, Lecw;->a:I

    .line 8753
    if-eqz p2, :cond_1

    .line 8754
    invoke-static {v1}, Lecx;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8756
    .end local v1    # "drawable":Lecw;
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cl:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation$TypingCommand;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bf:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ldbw;)Ldbw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ldbw;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bd:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6266
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cp:I

    if-nez v1, :cond_0

    .line 6267
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$d;->keyboard_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cp:I

    .line 6269
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cp:I

    if-ge p1, v1, :cond_1

    .line 6270
    iget p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cp:I

    .line 6272
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak:I

    if-eq v1, p1, :cond_2

    .line 6273
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak:I

    .line 6274
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6276
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setLayoutParamsOfFooterView(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 6277
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(I)V

    .line 6278
    const-string/jumbo v1, "pref_keyboard_height"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak:I

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6281
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 4
    .param p1, "res"    # I
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 5675
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v1, :cond_1

    .line 5676
    invoke-direct {p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;I)V

    .line 5702
    :cond_0
    :goto_0
    return-void

    .line 5678
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5681
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5682
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al:Landroid/view/View;

    sget v2, Lctk$f;->enterprise_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5683
    .local v0, "titleIcon":Landroid/widget/ImageView;
    if-lez p1, :cond_3

    .line 5684
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 5685
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5687
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5688
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$146;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$146;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5695
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5698
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 5699
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(JZ)V
    .locals 5
    .param p1, "messageId"    # J
    .param p3, "jumpToNewWhenNotFound"    # Z

    .prologue
    .line 4914
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    .line 5005
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3548
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 3549
    .local v20, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v3, "handle_intent"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const-string/jumbo v2, "im_navigator_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ:Ljava/lang/String;

    .line 3553
    const-string/jumbo v2, "local_contact"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN:Z

    .line 3554
    const-string/jumbo v2, "intent_key_send_pre_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP:Ljava/lang/String;

    .line 3555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mIsLocalContact:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    if-eqz v2, :cond_0

    .line 3557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN:Z

    .line 40797
    iput-boolean v3, v2, Ldjb;->f:Z

    .line 3559
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_1

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    invoke-interface {v2}, Ldfc;->e()V

    .line 3561
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    .line 3563
    :cond_1
    const-string/jumbo v2, "conversation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 3564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 3565
    const-string/jumbo v2, "intent_key_clear_unread_count"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bo:Z

    .line 3568
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_4

    .line 3569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->sync()V

    .line 3571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v10, 0x10

    cmp-long v2, v2, v10

    if-nez v2, :cond_b

    .line 3572
    new-instance v2, Ldfe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bM:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bZ:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v9, v10}, Ldfe;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    .line 3573
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cJ:Z

    .line 3581
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aB()V

    .line 3583
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap()V

    .line 3585
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    .line 3586
    .local v8, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Ljava/lang/String;)V

    .line 3587
    invoke-static {v8}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 3589
    .local v4, "uid":J
    :try_start_0
    const-string/jumbo v2, "chat_float_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3594
    :goto_1
    :try_start_1
    const-string/jumbo v2, "chat_sw_float_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3598
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u()V

    .line 41387
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l()V

    .line 41388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$102;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$102;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v2, v3}, Ldvw;->a(Landroid/view/View$OnClickListener;)V

    .line 41398
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-eqz v2, :cond_e

    .line 41399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ldvw;->b(Z)V

    .line 3600
    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG()V

    .line 3602
    new-instance v2, Ldrk;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$110;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$110;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v10, Lctk$f;->menu_input_view:I

    .line 3607
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v11, Lctk$f;->fl_bottom_menu:I

    .line 3608
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-direct {v2, v3, v9, v10, v11}, Ldrk;-><init>(Ldrk$a;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A:Ldrk;

    .line 3611
    const-string/jumbo v2, "anchor_id"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 3612
    .local v22, "tempAnchorId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3613
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "anchor_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 3615
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-nez v2, :cond_7

    .line 3617
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 3618
    .local v21, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "msgId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42109
    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v22

    .line 3623
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_4
    invoke-static {}, Lder;->a()Lder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    .line 43091
    iput-object v3, v2, Lder;->a:Lcom/alibaba/wukong/im/MessageListener;

    .line 3624
    move-wide/from16 v6, v22

    .line 3625
    .local v6, "anchorId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v2, :cond_f

    .line 3626
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    check-cast v20, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 3627
    .restart local v20    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v3, "get_conversation"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3630
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$111;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v10, v2, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v9, v2, v8}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 3694
    :goto_5
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$112;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$112;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v3, v10, v11}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3701
    const-string/jumbo v2, "intent_key_chat_bottom_menu_mode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v16

    .line 3702
    .local v16, "menuMode":I
    new-instance v2, Ldru;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    new-instance v9, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$113;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v2, v0, v3, v1, v9}, Ldru;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ILdru$a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    .line 3744
    sget v2, Lctk$f;->fl_bottom_menu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 3745
    .local v17, "menuViewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    invoke-virtual {v2}, Ldru;->a()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3748
    const-string/jumbo v2, "intent_key_previous_conversation_id"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3749
    .local v18, "previousCid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    .line 43175
    move-object/from16 v0, v18

    iput-object v0, v2, Ldru;->f:Ljava/lang/String;

    .line 3750
    const-string/jumbo v2, "intent_key_chat_enter_menu_mode"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v15

    .line 3751
    .local v15, "enterMenuMode":Z
    if-eqz v15, :cond_8

    .line 3753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    invoke-virtual {v2}, Ldru;->c()V

    .line 44061
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bo:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_9

    .line 44062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 44063
    if-eqz v2, :cond_9

    .line 44066
    invoke-static {}, Licb;->a()Licb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Licb;->a(Ljava/lang/String;J)V

    .line 44067
    const-string/jumbo v3, "im"

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "force clear unreadcount cid:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " msg:"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v9, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3758
    :cond_9
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v3, "handle_intent"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3761
    const-string/jumbo v2, "intent_key_click_live"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v19

    .line 3762
    .local v19, "startLive":Z
    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    if-eqz v2, :cond_a

    .line 3763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$114;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$114;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3774
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as()V

    .line 3777
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3778
    .end local v15    # "enterMenuMode":Z
    .end local v16    # "menuMode":I
    .end local v17    # "menuViewGroup":Landroid/view/ViewGroup;
    .end local v18    # "previousCid":Ljava/lang/String;
    .end local v19    # "startLive":Z
    :goto_6
    return-void

    .line 3574
    .end local v4    # "uid":J
    .end local v6    # "anchorId":J
    .end local v8    # "cid":Ljava/lang/String;
    .end local v22    # "tempAnchorId":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v10, 0x15

    cmp-long v2, v2, v10

    if-nez v2, :cond_c

    .line 3575
    new-instance v2, Ldfd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Ldfd;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    goto/16 :goto_0

    .line 3576
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_education_group_check_teacher_msg_entrance"

    invoke-virtual {v2, v3}, Lchx;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3577
    new-instance v2, Ldfb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Ldfb;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    goto/16 :goto_0

    .line 3578
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3579
    new-instance v2, Ldff;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Ldff;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    goto/16 :goto_0

    .line 41401
    .restart local v4    # "uid":J
    .restart local v8    # "cid":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k()V

    .line 41402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v2}, Ldvw;->c()V

    .line 41404
    sget v2, Lctk$f;->all_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$103;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$103;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 41414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 41415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 41416
    sget v2, Lctk$f;->filter_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    .line 41417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    .line 41420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_3

    .line 3657
    .restart local v6    # "anchorId":J
    .restart local v22    # "tempAnchorId":J
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3658
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    goto/16 :goto_6

    .line 3661
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v2, :cond_11

    .line 3662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3663
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a()V

    .line 3664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3666
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI()V

    .line 3667
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ()V

    .line 3668
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL()V

    .line 3669
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aA()V

    .line 3670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3672
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Z)V

    .line 3673
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM()V

    .line 3674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3675
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v2, :cond_12

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(J)V

    .line 3680
    :cond_12
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-wide v10, v6

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JJZ)V

    .line 3681
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x()V

    .line 3682
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK()V

    .line 3683
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay()V

    .line 3684
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aY()V

    .line 3685
    invoke-static {}, Ldyu;->a()Ldyu;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3}, Ldyu;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3686
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF()V

    .line 3687
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bd()V

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Leba;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 3689
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC()V

    .line 3690
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE()V

    .line 3691
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aD()V

    goto/16 :goto_5

    .end local v6    # "anchorId":J
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .end local v22    # "tempAnchorId":J
    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method

.method private a(Landroid/view/MenuItem;IZ)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "iconRes"    # I
    .param p3, "withDot"    # Z

    .prologue
    .line 8760
    if-nez p1, :cond_0

    .line 8765
    :goto_0
    return-void

    .line 8763
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8764
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "wd"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2335
    if-eqz p0, :cond_0

    .line 2336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2337
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2339
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;IZ)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    const/4 v4, 0x0

    .line 392
    .line 52519
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52520
    sget v1, Lctk$i;->tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 52521
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 52522
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$33;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V

    .line 52523
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 52555
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 392
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 392
    .line 53216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v10

    .line 53218
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$134;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$134;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 53242
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    move-object v1, v8

    move-object v2, v0

    .line 53218
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 53243
    :goto_0
    return-void

    .line 53245
    :cond_0
    const-string/jumbo v0, "im"

    sget-object v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    const-string/jumbo v2, "chatmsg getConv fail"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53246
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53247
    sget v1, Lctk$i;->and_ding_conversation_not_exist:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 53248
    sget v1, Lctk$i;->dt_common_i_know:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 53249
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$135;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$135;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 53260
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 53255
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 392
    .line 52568
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 52569
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$88;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JLjava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v7, v0, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v6, v0, p3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;JJ)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 392
    .line 53139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 53140
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53141
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    .line 53142
    :goto_0
    return-void

    .line 53144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 53145
    new-instance v0, Ldfe;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bM:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bZ:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1, v2, v3}, Ldfe;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    .line 53151
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aB()V

    .line 53153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53154
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53155
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v0, :cond_2

    .line 53156
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a()V

    .line 53157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53160
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO()V

    .line 53161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    if-eqz v0, :cond_3

    .line 53162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    invoke-virtual {v0}, Ldmt;->b()V

    .line 53165
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    if-eqz v0, :cond_4

    .line 53166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 53212
    iput-object v1, v0, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 53169
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI()V

    .line 53170
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ()V

    .line 53171
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL()V

    .line 53172
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap()V

    .line 53173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Z)V

    .line 53174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Ljava/lang/String;)V

    .line 53175
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM()V

    .line 53176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53177
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v0, :cond_5

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 53179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(J)V

    .line 53181
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$120;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$120;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v1, p0

    move-wide v2, p4

    .line 53192
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JJZ)V

    .line 53193
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x()V

    .line 53194
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aA()V

    .line 53195
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53196
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK()V

    .line 53197
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay()V

    .line 53198
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aY()V

    .line 53199
    invoke-static {}, Ldyu;->a()Ldyu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldyu;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53200
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF()V

    .line 53201
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bd()V

    .line 53202
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG()V

    .line 53203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p0, v0}, Leba;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 53205
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as()V

    .line 53214
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Z)V

    .line 53208
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC()V

    .line 53209
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE()V

    .line 53210
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aD()V

    goto/16 :goto_0

    .line 53146
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x15

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 53147
    new-instance v0, Ldfd;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, v1}, Ldfd;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    goto/16 :goto_1

    .line 53148
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53149
    new-instance v0, Ldff;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, v1}, Ldff;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 392
    .line 53005
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 53010
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53011
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53012
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 53013
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xfc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 53016
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bA:Z

    if-eqz v0, :cond_1

    .line 53020
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 53021
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    if-eqz v0, :cond_1

    .line 53022
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->b()V

    .line 392
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;J)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 392
    .line 52964
    invoke-static {p1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 52965
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$90;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;JJ)V

    invoke-virtual {v6, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 392
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v4, 0x0

    .line 392
    .line 53367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 53368
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->at:Lcom/alibaba/wukong/im/Message;

    .line 53369
    sget v0, Lctk$f;->unread_tip_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53370
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53371
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$125;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$125;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53378
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 53379
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 53380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    .line 53382
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 53383
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53384
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 53386
    :cond_1
    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    .line 53387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 53388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 392
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .param p4, "x4"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 392
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 392
    .line 52724
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52725
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "checkAndSendLocalFileToSpace: fileUris is null or empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52726
    :goto_0
    return-void

    .line 52729
    :cond_1
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->showLoadingDialogDelay(J)V

    .line 52730
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 392
    .line 53091
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 53092
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53093
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 53094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53108
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aS()V

    .line 392
    return-void

    .line 53096
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53097
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 53098
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 53099
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53100
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 53102
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "@"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, "\u0007"

    aput-object v5, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 53103
    const-string/jumbo v0, " "

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 53106
    :cond_3
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLjava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(ZLjava/util/List;)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 8
    .param p1, "bannedInfo"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9257
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cF:Z

    if-nez v0, :cond_1

    .line 9258
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eqz v0, :cond_0

    .line 9259
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 9261
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 9262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 9263
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb()V

    .line 9264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 9265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getRootView()Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    move-result-object v0

    .line 52279
    iput-boolean v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;->a:Z

    .line 9266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceSwitcherButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 52281
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    .line 9272
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->BANNED_ALL:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    if-ne v0, v1, :cond_2

    .line 9273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_group_setting_all_silent_input_tips_all_member:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 9281
    :goto_0
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cF:Z

    .line 9282
    return-void

    .line 52282
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    .line 9274
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;->BANNED_ADVISE:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$BanMode;

    if-ne v0, v1, :cond_3

    .line 9275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_personal_assistant_close_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 9277
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lctk$i;->dt_group_setting_all_silent_input_tips:I

    new-array v2, v7, [Ljava/lang/Object;

    .line 52283
    iget-wide v4, p1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->b:J

    .line 9278
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcog;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 2720
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0, p1}, Ldvw;->c(Ljava/lang/String;)V

    .line 2722
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0, p2}, Ldvw;->a(I)V

    .line 2724
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 18
    .param p1, "atText"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1859
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 1860
    if-eqz p4, :cond_0

    .line 1861
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1865
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1866
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget v6, Lctk$i;->at_all_nick:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "@"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lctk$i;->at_all_nick:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "\u0007"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 1871
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v16, v0

    const-string/jumbo v4, "EVENTBUTLER"

    .line 1872
    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;

    move-object/from16 v5, p0

    move/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ILjava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v10, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/Callback;

    move-object v4, v12

    move-object v5, v13

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-object/from16 v10, p3

    .line 1871
    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "sendOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5342
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5384
    :cond_0
    :goto_0
    return-void

    .line 5346
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5347
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5348
    const-string/jumbo v2, "origin"

    if-eqz p2, :cond_2

    const-string/jumbo v1, "true"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5349
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_photo_button_quicksend_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 5355
    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$138;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;Z)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5348
    :cond_2
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method private a(ZLjava/util/List;)V
    .locals 3
    .param p1, "sendOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5289
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5339
    :cond_0
    :goto_0
    return-void

    .line 5293
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5294
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "count"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5295
    const-string/jumbo v2, "origin"

    if-eqz p1, :cond_2

    const-string/jumbo v1, "true"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5296
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_photo_button_quicksend_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 5300
    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$137;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;Z)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5295
    :cond_2
    const-string/jumbo v1, "false"

    goto :goto_1
.end method

.method private a(Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;)Z
    .locals 6
    .param p1, "festivalRedPacketsEntrance"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9156
    if-nez p1, :cond_1

    .line 9157
    const/4 v0, 0x0

    .line 9175
    :cond_0
    :goto_0
    return v0

    .line 9160
    :cond_1
    const/4 v0, 0x0

    .line 9161
    .local v0, "hasFestivalRedPacketEntry":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9162
    invoke-static {v1}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9163
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9164
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9165
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xd

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9166
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 9167
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 9168
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 9172
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU:Z

    return p1
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8587
    if-nez p0, :cond_1

    .line 8599
    :cond_0
    :goto_0
    return v2

    .line 8590
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 8591
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 8592
    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8593
    .local v1, "uids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 8594
    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v2

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 8595
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 24
    .param p1, "sendText"    # Ljava/lang/String;
    .param p2, "clearInfo"    # Z

    .prologue
    .line 7525
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7526
    .local v6, "atUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 7527
    .local v18, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7528
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 7529
    .local v16, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 7530
    .local v19, "key":Ljava/lang/Long;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 7531
    .local v23, "val":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7532
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7533
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7536
    .end local v16    # "entry":Ljava/util/Map$Entry;
    .end local v19    # "key":Ljava/lang/Long;
    .end local v23    # "val":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x7

    const/16 v3, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 7538
    .local v5, "sendString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 7540
    .local v7, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-eqz v2, :cond_3

    invoke-static {v5}, Lddq;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7542
    const-string/jumbo v2, "$-$+$+$-$"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 7543
    .local v21, "start":I
    add-int/lit8 v15, v21, 0x9

    .line 7544
    .local v15, "end":I
    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 7545
    .local v20, "original":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 7546
    .local v22, "trans":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 7547
    .restart local v7    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "msg_trans_original"

    move-object/from16 v0, v20

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7548
    const-string/jumbo v3, "msg_trans_provider"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->br:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->br:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7549
    move-object/from16 v5, v22

    .line 7551
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 7552
    .local v14, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    .line 7553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 7554
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "oto"

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7559
    :cond_2
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_auto_trans_send_msg"

    invoke-interface {v2, v3, v14}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 7562
    .end local v14    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "end":I
    .end local v20    # "original":Ljava/lang/String;
    .end local v21    # "start":I
    .end local v22    # "trans":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7563
    if-eqz p2, :cond_4

    .line 7564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 7565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 7568
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    .line 51729
    iget-object v3, v2, Lcro;->g:Lcom/alibaba/wukong/im/Message;

    .line 51730
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->showLoadingDialog()V

    .line 51731
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Message;)V

    .line 51760
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v8, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v4, v2, v8, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 51761
    const/4 v4, 0x0

    invoke-static {v3, v5, v6, v4, v2}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/util/Map;ZLcma;)V

    .line 7569
    const/4 v2, 0x1

    .line 7619
    :goto_3
    return v2

    .line 7548
    .restart local v15    # "end":I
    .restart local v20    # "original":Ljava/lang/String;
    .restart local v21    # "start":I
    .restart local v22    # "trans":Ljava/lang/String;
    :cond_5
    sget v2, Lctk$i;->msg_translate_power_by_ali:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 7556
    .restart local v14    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "group"

    invoke-virtual {v14, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 7570
    .end local v14    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "end":I
    .end local v20    # "original":Ljava/lang/String;
    .end local v21    # "start":I
    .end local v22    # "trans":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    .line 51763
    iget-boolean v2, v2, Lcrp;->h:Z

    .line 7571
    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    .line 51764
    iget-object v2, v2, Lcrp;->i:Lcrp$a;

    .line 7571
    instance-of v2, v2, Ldlz;

    if-eqz v2, :cond_b

    .line 7572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    .line 51765
    iget-object v0, v2, Lcrp;->i:Lcrp$a;

    move-object/from16 v17, v0

    .line 7572
    check-cast v17, Ldlz;

    .line 7573
    .local v17, "info":Ldlz;
    move-object/from16 v0, v17

    iget-object v2, v0, Ldlz;->d:Ldmb;

    if-eqz v2, :cond_8

    move-object/from16 v0, v17

    iget-object v2, v0, Ldlz;->d:Ldmb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v7}, Ldmb;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Ldiz;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7574
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    invoke-virtual {v2}, Lcrp;->a()V

    .line 7575
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G()V

    .line 7576
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 7577
    if-eqz p2, :cond_9

    .line 7578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    .line 7579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 7582
    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    .line 7584
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 7586
    .end local v17    # "info":Ldlz;
    :cond_b
    const/4 v2, 0x1

    goto :goto_3

    .line 7588
    :cond_c
    move-object v11, v5

    .line 7589
    .local v11, "finalSendString":Ljava/lang/String;
    move-object v13, v7

    .line 7590
    .local v13, "finalExtension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;

    move-object/from16 v9, p0

    move/from16 v10, p2

    move-object v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$32;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-interface {v2, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 7619
    const/4 v2, 0x1

    goto/16 :goto_3
.end method

.method static synthetic aA(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX:J

    return-wide v0
.end method

.method private aA()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3480
    .line 35468
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    .line 35472
    const-string/jumbo v1, "encrypt_guide_first_show"

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35473
    const-string/jumbo v1, "encrypt_guide_first_show"

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    move v1, v2

    .line 3480
    :goto_0
    if-eqz v1, :cond_2

    .line 3481
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 3482
    .local v0, "encryptGuideDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    sget v1, Lctk$e;->chat_conv_encrypt_guide:I

    .line 36243
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 3483
    sget v1, Lctk$i;->encrypt_conv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 37230
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 3485
    sget v5, Lctk$i;->guide_encrypt_chat_conv_tips:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    .line 37740
    const-string/jumbo v1, "id"

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37741
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 37742
    const-string/jumbo v1, "orgId"

    invoke-interface {v2, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 37744
    :goto_1
    const-string/jumbo v3, ""

    .line 37745
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 37746
    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 37747
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 37748
    if-eqz v2, :cond_3

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 37749
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    :goto_3
    move-object v3, v1

    .line 37751
    goto :goto_2

    .end local v0    # "encryptGuideDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :cond_0
    move v1, v4

    .line 35476
    goto :goto_0

    .line 3485
    .restart local v0    # "encryptGuideDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :cond_1
    aput-object v3, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 3486
    sget v1, Lctk$i;->guide_more:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 3487
    sget v1, Lctk$i;->guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 3488
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$105;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 39267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 3494
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$107;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$107;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 39271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 3499
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$108;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$108;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3505
    .end local v0    # "encryptGuideDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :cond_2
    return-void

    .restart local v0    # "encryptGuideDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :cond_3
    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic aB(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bf:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    return-object v0
.end method

.method private aB()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3520
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40087
    :cond_0
    :goto_0
    return-void

    .line 40039
    :cond_1
    invoke-static {}, Ldgz$a;->a()Ldgz;

    move-result-object v3

    .line 3522
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3523
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$109;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v5, Ldgz$b;

    .line 3524
    invoke-interface {v0, v1, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgz$b;

    .line 40062
    invoke-static {}, Ldgy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40065
    if-eqz v4, :cond_2

    invoke-static {v4}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 40066
    :cond_2
    if-eqz v0, :cond_0

    .line 40067
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 40068
    :goto_1
    invoke-interface {v0, v1, v2}, Ldgz$b;->a(Ljava/lang/String;Ldsd;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 40067
    goto :goto_1

    .line 40072
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 40073
    iget-object v1, v3, Ldgz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40076
    :cond_5
    iget-object v1, v3, Ldgz;->a:Lfq;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldsd;

    .line 40077
    if-eqz v1, :cond_6

    .line 40078
    if-eqz v0, :cond_0

    .line 40079
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ldgz$b;->a(Ljava/lang/String;Ldsd;)V

    goto :goto_0

    .line 40083
    :cond_6
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getEntranceCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 40084
    if-eqz v0, :cond_0

    .line 40085
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ldgz$b;->a(Ljava/lang/String;Ldsd;)V

    goto :goto_0

    .line 40089
    :cond_7
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v2, "EVENTBUTLER"

    .line 40090
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Ldgz$1;

    invoke-direct {v5, v3, v4, v0}, Ldgz$1;-><init>(Ldgz;Lcom/alibaba/wukong/im/Conversation;Ldgz$b;)V

    const-class v0, Lcom/alibaba/wukong/Callback;

    .line 40091
    invoke-interface {v2, v5, v0, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 40124
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getEntranceCid()Ljava/lang/String;

    move-result-object v2

    .line 40089
    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private aC()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3803
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3831
    :cond_0
    :goto_0
    return-void

    .line 3807
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3812
    :cond_2
    invoke-static {}, Liax;->a()Liax;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$115;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$115;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v1, v2, v0}, Liax;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic aC(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cr:Z

    return v0
.end method

.method static synthetic aD(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cs:I

    return v0
.end method

.method private aD()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 3838
    invoke-static {}, Lcms;->k()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3900
    :cond_0
    :goto_0
    return-void

    .line 3842
    :cond_1
    invoke-static {}, Lebc;->g()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3845
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3849
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 3850
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "remind_type"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3851
    .local v6, "remindType":I
    const-string/jumbo v8, "remind_ext"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3852
    .local v3, "extParam":Ljava/lang/String;
    const-string/jumbo v8, "source"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3854
    .local v7, "source":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 3855
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3856
    .local v2, "data":Landroid/net/Uri;
    if-nez v6, :cond_2

    .line 3857
    const-string/jumbo v8, "remind_type"

    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44150
    invoke-static {v8, v9}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    .line 3859
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3860
    const-string/jumbo v8, "remind_ext"

    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3862
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3863
    const-string/jumbo v8, "source"

    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3867
    .end local v2    # "data":Landroid/net/Uri;
    :cond_4
    if-nez v6, :cond_5

    .line 3868
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v8}, Ldez;->b(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/models/RemindIconModel;

    move-result-object v5

    .line 3869
    .local v5, "remindInfo":Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    if-eqz v5, :cond_0

    .line 3870
    const/4 v6, 0x1

    .line 3871
    iget-object v3, v5, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;->extParam:Ljava/lang/String;

    .line 3877
    .end local v5    # "remindInfo":Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    :cond_5
    new-instance v1, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;-><init>()V

    .line 3878
    .local v1, "attractModelObject":Lcom/alibaba/android/dingtalkim/models/AttractModelObject;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->cid:Ljava/lang/String;

    .line 3879
    iput v6, v1, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->type:I

    .line 3880
    iput-object v7, v1, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->source:Ljava/lang/String;

    .line 3881
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->extParam:Ljava/lang/String;

    .line 3882
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$116;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$116;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 3898
    .local v0, "apiEventListener":Lcma;
    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bz:Ljava/lang/String;

    .line 3899
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v8

    invoke-virtual {v8}, Ldyn;->j()Ldxz;

    move-result-object v9

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v8

    const-class v10, Lcma;

    invoke-interface {v8, v0, v10, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    invoke-interface {v9, v1, v8}, Ldxz;->a(Lcom/alibaba/android/dingtalkim/models/AttractModelObject;Lcma;)V

    goto/16 :goto_0
.end method

.method static synthetic aE(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ct:I

    return v0
.end method

.method private aE()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3943
    :cond_0
    :goto_0
    return-void

    .line 3907
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v2, "checkO2O"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3908
    invoke-static {}, Lddq;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44985
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3912
    :cond_2
    :goto_1
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->i()Ldxj;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$118;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v0}, Ldxj;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 44988
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ck:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 44989
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$97;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$97;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ck:Landroid/content/BroadcastReceiver;

    .line 45007
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ck:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "action_friend_request_status_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_1
.end method

.method static synthetic aF(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldie;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    return-object v0
.end method

.method private aF()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 4072
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 45145
    iget-object v1, v1, Ldiz;->a:Ldkh;

    .line 4072
    if-nez v1, :cond_1

    .line 4083
    :cond_0
    :goto_0
    return-void

    .line 4075
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 4079
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_robot_text"

    invoke-static {v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4080
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 4081
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 45413
    invoke-virtual {v1, v0, v6, v6}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_0
.end method

.method private aG()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4164
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v0, :cond_1

    .line 4165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ldfc;->a(Landroid/view/ViewGroup;)V

    .line 4166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-interface {v0, v1}, Ldfc;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V

    .line 4167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ldfc;->a(Landroid/widget/ImageView;)V

    .line 4169
    :cond_1
    return-void
.end method

.method static synthetic aG(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G()V

    return-void
.end method

.method static synthetic aH(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ba:J

    return-wide v0
.end method

.method private aH()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4172
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v3, :cond_1

    .line 4173
    const/4 v2, 0x1

    .line 4201
    :cond_0
    :goto_0
    return v2

    .line 4175
    :cond_1
    const/4 v2, 0x0

    .line 4177
    .local v2, "result":Z
    const/4 v1, 0x1

    .line 4178
    .local v1, "canClickOA":Z
    const-wide/16 v4, 0x7

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 4179
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldjl;->I(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 4181
    :cond_2
    const/4 v0, 0x1

    .line 4182
    .local v0, "canClickChannel":Z
    const-wide/16 v4, 0xa

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 4183
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lddi;->e(Ljava/lang/String;)Z

    move-result v0

    .line 4185
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v3, v4, :cond_6

    .line 4186
    const/4 v2, 0x1

    .line 4187
    sget v3, Lctk$i;->conversation_kickoff:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 4195
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 4196
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 4197
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 4199
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->remove()V

    goto :goto_0

    .line 4188
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v3, v4, :cond_7

    .line 4189
    const/4 v2, 0x1

    .line 4190
    sget v3, Lctk$i;->conversation_disband:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 4191
    :cond_7
    if-eqz v1, :cond_8

    if-nez v0, :cond_4

    .line 4192
    :cond_8
    const/4 v2, 0x1

    .line 4193
    sget v3, Lctk$i;->conversation_org_kickoff:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic aI(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    return-object v0
.end method

.method private aI()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4205
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 4206
    .local v0, "isEncryptConversation":Z
    if-eqz v0, :cond_0

    .line 4207
    const-string/jumbo v1, "crypto"

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Enter encrypt conversation, cid="

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    :goto_0
    return-void

    .line 4209
    :cond_0
    const-string/jumbo v1, "crypto"

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Enter unencrypted conversation, cid="

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private aJ()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 4267
    :cond_0
    :goto_0
    return-void

    .line 4217
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->O:Ldnw;

    if-nez v0, :cond_3

    .line 46062
    new-instance v0, Ldnw$a;

    invoke-direct {v0}, Ldnw$a;-><init>()V

    .line 4218
    const-string/jumbo v1, "IMAGE"

    .line 4219
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 46301
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v1, :cond_7

    .line 46302
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 4219
    :goto_1
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$121;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$122;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$122;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 46427
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->X:Ldnu$c;

    if-nez v1, :cond_2

    .line 46428
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->W:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p0, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->Y:Landroid/view/GestureDetector;

    .line 46429
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->X:Ldnu$c;

    .line 46438
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->X:Ldnu$c;

    move-object v1, p0

    .line 4218
    invoke-virtual/range {v0 .. v6}, Ldnw$a;->a(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)Ldnw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->O:Ldnw;

    .line 4253
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    if-nez v0, :cond_4

    .line 4254
    new-instance v0, Ldne;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ldne;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    .line 4256
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->M:Lldm;

    if-nez v0, :cond_5

    .line 4257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    invoke-static {v0}, Ldna;->a(Ldne;)Lldm;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->M:Lldm;

    .line 4261
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L:Ldnf;

    if-nez v0, :cond_6

    .line 4262
    new-instance v0, Ldnf;

    const-wide/16 v2, 0xc8

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    invoke-direct {v0, v2, v3, v1}, Ldnf;-><init>(JLdne;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L:Ldnf;

    .line 4264
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->P:Ldxc;

    if-nez v0, :cond_0

    .line 4265
    new-instance v0, Ldxc;

    const-string/jumbo v1, "md-instant-render"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v0, v1, v2, v3}, Ldxc;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->P:Ldxc;

    goto :goto_0

    .line 46304
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static synthetic aJ(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bc()V

    return-void
.end method

.method private aK()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    if-eqz v0, :cond_0

    .line 4312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    invoke-virtual {v0}, Ldrw;->b()V

    .line 4313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    .line 4315
    :cond_0
    new-instance v1, Ldrw;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v0, Lctk$f;->menu_input_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-direct {v1, p0, v2, v3, v0}, Ldrw;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    .line 4316
    return-void
.end method

.method static synthetic aK(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV()V

    return-void
.end method

.method static synthetic aL(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53608
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 392
    return-object v0
.end method

.method private aL()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4319
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 4320
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    if-eqz v0, :cond_0

    .line 4321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    invoke-virtual {v0}, Ldql;->b()V

    .line 4323
    :cond_0
    new-instance v0, Ldql;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$123;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$123;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-direct {v0, p0, v1, v2}, Ldql;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ldql$a;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    .line 4331
    :cond_1
    return-void
.end method

.method private aM()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5016
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_6

    .line 5017
    invoke-static {}, Ldho;->a()Ldho;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldho;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bB:Z

    .line 5018
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    .line 5019
    .local v3, "conversationType":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    .line 47521
    new-instance v0, Lcug;

    .line 47526
    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$126;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 47522
    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bB:Z

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L()Lcug$a;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcug;-><init>(Landroid/app/Activity;Ljava/util/List;IJLcts$b;ZLcug$a;)V

    .line 5019
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    .line 5020
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setAdapter(Lcqr;)V

    .line 5021
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcug;->a(Landroid/widget/ListView;)V

    .line 5022
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    .line 48098
    iput-object v1, v0, Lcug;->f:Ljava/lang/String;

    .line 5024
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bB:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setEncryptedMode(Z)V

    .line 5026
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 5027
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecordButton()Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$132;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object v4, p0

    .line 5026
    invoke-static/range {v4 .. v10}, Ldjb;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ListView;Lcug;Landroid/widget/Button;Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ldiz;Ldjb$a;)Ldjb;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    .line 5043
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bB:Z

    .line 48809
    iput-boolean v1, v0, Ldjb;->h:Z

    .line 5044
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 49805
    iput-object v1, v0, Ldjb;->d:Ldvw;

    .line 5045
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN:Z

    .line 50797
    iput-boolean v1, v0, Ldjb;->f:Z

    .line 5046
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->a()V

    .line 5047
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v1

    .line 50799
    iput-boolean v1, v0, Ldjb;->g:Z

    .line 5048
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setBackgroundColor(I)V

    .line 5053
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v4, 0x10

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 50801
    if-eqz v0, :cond_9

    .line 50805
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    .line 50806
    const-wide/16 v6, 0x5

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x8

    cmp-long v1, v4, v6

    if-nez v1, :cond_8

    .line 50810
    :cond_1
    const/4 v0, 0x1

    .line 5054
    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/alibaba/android/dingtalkim/IMConstant;->b:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5055
    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->o:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5057
    invoke-static {p0, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 5058
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getGroupLevel()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 5059
    :cond_3
    new-instance v0, Ldey;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-direct {v0, p0, v1, v2}, Ldey;-><init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax:Ldey;

    .line 5060
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax:Ldey;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 50818
    iput-object v1, v0, Ldey;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 5063
    :cond_4
    invoke-static {}, Lddq;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5064
    new-instance v0, Ldev;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-direct {v0, p0, v1, v2}, Ldev;-><init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay:Ldev;

    .line 5067
    :cond_5
    new-instance v0, Ldew;

    invoke-direct {v0}, Ldew;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g:Ldew;

    .line 5069
    new-instance v0, Ldeu;

    invoke-direct {v0}, Ldeu;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h:Ldeu;

    .line 5071
    .end local v3    # "conversationType":I
    :cond_6
    return-void

    .line 5018
    :cond_7
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 50813
    .restart local v3    # "conversationType":I
    :cond_8
    invoke-static {v0}, Lddq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50814
    const/4 v0, 0x1

    goto :goto_1

    .line 50817
    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic aM(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    .line 53609
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eq v0, v8, :cond_3

    .line 53610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53611
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 53612
    const-string/jumbo v1, "isretail"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53614
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "chat_plus_button_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 53617
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 53618
    iput v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 53619
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 53620
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 53621
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 53622
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 53623
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb()V

    .line 53624
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53625
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 53629
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i()V

    .line 53630
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 53631
    if-ne v0, v7, :cond_1

    .line 53632
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 53634
    :cond_1
    if-nez v0, :cond_2

    .line 53635
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP()V

    .line 53637
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au()V

    .line 53639
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_4

    .line 53640
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 53643
    invoke-virtual {v0, v6}, Ldvw;->c(Z)V

    .line 392
    :cond_4
    return-void

    .line 53627
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    goto :goto_0
.end method

.method private aN()Landroid/view/View;
    .locals 1

    .prologue
    .line 5637
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cn:Landroid/view/View;

    if-nez v0, :cond_0

    .line 5638
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cn:Landroid/view/View;

    .line 5640
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aN(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldlx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    return-object v0
.end method

.method private aO()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5938
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 5943
    :goto_0
    return-void

    .line 5941
    :cond_0
    new-instance v0, Ldmt;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, v1}, Ldmt;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    .line 5942
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    invoke-virtual {v0}, Ldmt;->a()V

    goto :goto_0
.end method

.method static synthetic aO(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53645
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 53646
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 53647
    const-string/jumbo v0, "pref_key_chat_live_tips"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53648
    const-string/jumbo v0, "pref_key_chat_live_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 392
    :cond_0
    return-void
.end method

.method private aP()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 6041
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6042
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6043
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 6044
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 6045
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6047
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method static synthetic aP(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 53652
    const-string/jumbo v0, "pref_key_group_bill_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 392
    return-void
.end method

.method private aQ()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 6050
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 6051
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6052
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 6053
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 6054
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6057
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method static synthetic aQ(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const/4 v0, 0x1

    .line 392
    .line 53654
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pref_key_group_bill_tips"

    .line 53655
    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53656
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 392
    goto :goto_0
.end method

.method static synthetic aR(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method private aR()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7095
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_1

    .line 7096
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 7097
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$c;->uidic_global_color_c11_7:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 7098
    .local v0, "color":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarIconColor:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 7099
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarIconColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7101
    :cond_0
    new-instance v1, Lcjz;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcig$j;->icon_im_camera:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 7103
    .local v1, "drawable":Lcjz;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7104
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$26;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$26;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddAppButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 7151
    .end local v0    # "color":I
    .end local v1    # "drawable":Lcjz;
    :cond_1
    :goto_0
    return-void

    .line 7111
    :cond_2
    invoke-static {}, Ldke;->a()Ldke;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51641
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ldke;->a(Z)V

    .line 51642
    invoke-static {v7}, Lddq;->l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v7

    .line 51643
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 51644
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v8

    .line 51645
    iget-object v6, v6, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 51646
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 51647
    :cond_3
    const/4 v3, 0x0

    .line 7112
    .local v3, "isShowMicroApp":Z
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v4

    .line 7113
    .local v4, "moreAppBtn":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 7114
    .local v5, "moreDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_4

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Z)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Z)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    .line 7115
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Z)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 51664
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x10

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    .line 51665
    const/4 v6, 0x0

    .line 7115
    :goto_2
    if-eqz v6, :cond_a

    .line 7116
    instance-of v6, v5, Lcjz;

    if-eqz v6, :cond_5

    .line 7117
    new-instance v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;-><init>(Landroid/content/Context;)V

    .line 51668
    .local v2, "drawableBuilder":Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a:Landroid/graphics/drawable/Drawable;

    .line 51670
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->d:Z

    .line 7119
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7126
    .end local v2    # "drawableBuilder":Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;
    .end local v5    # "moreDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$27;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddAppButtonOnClicker(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 51649
    .end local v3    # "isShowMicroApp":Z
    .end local v4    # "moreAppBtn":Landroid/widget/ImageView;
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 51650
    if-eqz v7, :cond_7

    iget-wide v10, v7, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_7

    .line 51654
    iget-wide v10, v7, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 51655
    iget-wide v10, v7, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v10, v8

    .line 51656
    iget-wide v12, v7, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v12, v13}, Ldke;->a(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v7

    .line 51657
    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-lez v7, :cond_7

    .line 51658
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 51663
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 51667
    .restart local v3    # "isShowMicroApp":Z
    .restart local v4    # "moreAppBtn":Landroid/widget/ImageView;
    .restart local v5    # "moreDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    const/4 v6, 0x1

    goto :goto_2

    .line 7122
    :cond_a
    instance-of v6, v5, Lcqw;

    if-eqz v6, :cond_5

    .line 7123
    check-cast v5, Lcqw;

    .line 51672
    .end local v5    # "moreDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, v5, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 7123
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method private aS()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 7260
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eq v0, v2, :cond_0

    .line 7261
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 7262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 7263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 7264
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au()V

    .line 7265
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 7266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 7267
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb()V

    .line 7268
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 7273
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 7274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 7275
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "retail_im_msglist_detail_keyboard"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_1

    .line 7279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 51673
    invoke-virtual {v0, v4}, Ldvw;->c(Z)V

    .line 7281
    :cond_1
    return-void

    .line 7271
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    goto :goto_0
.end method

.method static synthetic aS(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 392
    .line 53657
    const-string/jumbo v2, "pref_key_chat_live_tips"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53658
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53659
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 392
    goto :goto_0
.end method

.method static synthetic aT(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    return-object v0
.end method

.method private aT()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7304
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eq v1, v2, :cond_2

    .line 7305
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 7306
    .local v0, "old":I
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 7307
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d()V

    .line 7308
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 7309
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 7310
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb()V

    .line 7311
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7312
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 7316
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h()V

    .line 7317
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7318
    if-ne v0, v4, :cond_0

    .line 7319
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 7321
    :cond_0
    if-nez v0, :cond_1

    .line 7322
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP()V

    .line 7324
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au()V

    .line 7326
    .end local v0    # "old":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v1, :cond_3

    .line 7327
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 51675
    invoke-virtual {v1, v3}, Ldvw;->c(Z)V

    .line 7329
    :cond_3
    return-void

    .line 7314
    .restart local v0    # "old":I
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    goto :goto_0
.end method

.method static synthetic aU(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    return-object v0
.end method

.method private aU()V
    .locals 1

    .prologue
    .line 7392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    if-eqz v0, :cond_0

    .line 7393
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    .line 51677
    invoke-virtual {v0}, Ldjx;->a()V

    .line 7395
    :cond_0
    return-void
.end method

.method static synthetic aV(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldbw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    return-object v0
.end method

.method private aV()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 51679
    iget-object v0, v0, Ldiz;->a:Ldkh;

    .line 7405
    if-nez v0, :cond_2

    .line 7406
    :cond_0
    sget v0, Lctk$i;->chat_initing:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 7500
    :cond_1
    :goto_0
    return-void

    .line 7410
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW:J

    .line 7411
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 7432
    .local v12, "contString":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 7437
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v12, v1, v2}, Ldqm;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7438
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    if-eqz v0, :cond_3

    .line 7439
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 7440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    .line 7442
    :cond_3
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$30;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$30;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    .line 7453
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B()V

    goto :goto_0

    .line 7457
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 51680
    invoke-static {}, Ldec$a;->a()Ldec;

    .line 7460
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldec;->b(Lcom/alibaba/wukong/im/Conversation;)V

    .line 7463
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v14

    .line 7464
    .local v14, "sendText":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTranslateEditText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bx:Ljava/lang/String;

    .line 7466
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7467
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_a

    .line 7468
    const/4 v0, 0x1

    invoke-direct {p0, v14, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;Z)Z

    .line 7486
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B()V

    .line 7487
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    if-eqz v0, :cond_7

    .line 7488
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldjx;->a(Z)V

    .line 7490
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t()V

    .line 7493
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_internatoinal_upload_compiled_content_enabled"

    .line 51700
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v13

    .line 7494
    .local v13, "isFeatureOpen":Z
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bu:Z

    if-eqz v0, :cond_9

    if-eqz v13, :cond_9

    .line 51701
    const/4 v9, 0x0

    .line 51702
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 51703
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bw:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_2
    move v9, v0

    .line 51706
    :cond_8
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$56;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$56;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 51723
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcma;

    .line 51724
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->by:J

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bp:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bq:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bv:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bw:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bx:Ljava/lang/String;

    const-string/jumbo v10, ""

    invoke-static/range {v1 .. v11}, Lddq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcma;)V

    .line 7496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bu:Z

    .line 51727
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->by:J

    goto/16 :goto_0

    .line 7470
    .end local v13    # "isFeatureOpen":Z
    :cond_a
    sget v0, Lctk$i;->dt_msg_reaction_comment_too_long:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7473
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7474
    const/4 v0, 0x1

    invoke-direct {p0, v14, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 7478
    :cond_c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lddq;->d()I

    move-result v1

    if-gt v0, v1, :cond_d

    .line 7479
    const/4 v0, 0x1

    invoke-direct {p0, v14, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 7481
    :cond_d
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "dt_im_long_text_send"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 51681
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51682
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$31;

    invoke-direct {v1, p0, v14}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$31;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 51703
    .restart local v13    # "isFeatureOpen":Z
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method static synthetic aW(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Leci;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    return-object v0
.end method

.method private aW()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9034
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 9035
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 9036
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "setting_app_new"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9037
    const-string/jumbo v1, "setting_app_new"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9038
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 9039
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    .line 9042
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method static synthetic aX(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcws;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    return-object v0
.end method

.method private aX()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9202
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9203
    invoke-static {v0}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9204
    invoke-static {v0}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9205
    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9206
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9207
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9208
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9209
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9210
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9211
    invoke-static {v0}, Ldyq;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aY()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9217
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aZ()V

    .line 9218
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9219
    invoke-static {v1}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9220
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 9221
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cE:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;)V

    .line 9222
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a()Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    move-result-object v0

    .line 9223
    .local v0, "banInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9224
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V

    .line 9231
    .end local v0    # "banInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    :goto_0
    return-void

    .line 9226
    .restart local v0    # "banInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ba()V

    goto :goto_0

    .line 9229
    .end local v0    # "banInfo":Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ba()V

    goto :goto_0
.end method

.method private aZ()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    if-eqz v0, :cond_0

    .line 9235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cE:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->b(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;)V

    .line 9236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cD:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->b()V

    .line 9238
    :cond_0
    return-void
.end method

.method static synthetic aa(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->at:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic ab(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isUnreadCountFromServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53423
    :cond_0
    :goto_0
    return-void

    .line 53425
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$124;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic ac(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53538
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 53540
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 53541
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1

    .line 53542
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->iHaveRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53543
    const-string/jumbo v1, "sended_voice_translate_guide_message"

    invoke-static {p0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53544
    const-string/jumbo v1, "sended_voice_translate_guide_message"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 53545
    sget v1, Lctk$i;->voice_to_text_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53546
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 53547
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 53548
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const/4 v0, 0x0

    invoke-interface {v2, v1, v4, v5, v0}, Lcom/alibaba/wukong/im/Message;->sendToLocalAtTime(Lcom/alibaba/wukong/im/Conversation;JLcom/alibaba/wukong/Callback;)V

    .line 392
    :cond_1
    return-void
.end method

.method static synthetic ad(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53555
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53559
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53561
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 53562
    const/4 v0, 0x5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 53563
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    sub-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_1

    .line 53564
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 53565
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 53566
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-eq v0, v4, :cond_2

    .line 53563
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 53573
    :cond_1
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v2, "*#*##*#*"

    invoke-virtual {v0, v1, v2}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    :cond_2
    return-void
.end method

.method static synthetic ae(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    return-object v0
.end method

.method static synthetic af(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 53580
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 53582
    const-string/jumbo v1, "sendImage"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 53583
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "sendImage"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sending(\u53d1\u9001\u56fe\u7247-\u56fe\u7247\u6210\u529f) start :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    return-void
.end method

.method static synthetic ag(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aN:Z

    return v0
.end method

.method static synthetic ah(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53587
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/safety/encrypt.html?lwfrom=20160511153723743"

    const-string/jumbo v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method static synthetic ai(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    return-object v0
.end method

.method static synthetic aj(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    return-object v0
.end method

.method static synthetic al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    return-object v0
.end method

.method static synthetic am(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU:Z

    return v0
.end method

.method static synthetic an(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldop;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aB:Ldop;

    return-object v0
.end method

.method static synthetic ao(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private ao()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1797
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    .line 1798
    .local v2, "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v1

    .line 1799
    .local v1, "cursorIndex":I
    if-lez v1, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1800
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1803
    .local v0, "atText":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->AT_CONTENT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v4, v5}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v3

    .line 1804
    .local v3, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    const/4 v5, 0x0

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;

    invoke-direct {v6, p0, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$77;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    invoke-interface {v4, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-direct {p0, v0, v5, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 1854
    return-void
.end method

.method static synthetic ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    return v0
.end method

.method private ap()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 12325
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2127
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 13325
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2128
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->b()V

    .line 2130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-nez v0, :cond_2

    .line 2135
    new-instance v0, Ldqq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$81;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-direct {v0, p0, v1, v2}, Ldqq;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ldqq$e;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$82;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$82;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v0, v1}, Ldqq;->a(Ldqq$d;)V

    .line 2210
    :cond_1
    :goto_0
    return-void

    .line 2207
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 14325
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2207
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eq v0, v1, :cond_1

    .line 2208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldqq;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method private aq()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ci:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2577
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ci:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ci:Landroid/content/BroadcastReceiver;

    .line 2580
    :cond_0
    return-void
.end method

.method static synthetic aq(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP()V

    return-void
.end method

.method static synthetic ar(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldle;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    return-object v0
.end method

.method private ar()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ck:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2584
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ck:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ck:Landroid/content/BroadcastReceiver;

    .line 2587
    :cond_0
    return-void
.end method

.method private as()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldfk;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2889
    :cond_0
    :goto_0
    return-void

    .line 2885
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    if-nez v0, :cond_2

    .line 2886
    new-instance v0, Ldfk;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    invoke-direct {v0, p0, v1, v2, v3}, Ldfk;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;J)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    .line 2888
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    .line 33178
    invoke-static {}, Ldfm;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33181
    iget-object v1, v0, Ldfk;->e:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 33182
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpPresenter$1;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpPresenter$1;-><init>(Ldfk;)V

    iput-object v1, v0, Ldfk;->e:Landroid/content/BroadcastReceiver;

    .line 33203
    iget-object v1, v0, Ldfk;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v0, v0, Ldfk;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "ServiceGroupResultAction"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method static synthetic as(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ()V

    return-void
.end method

.method private at()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3121
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cj:Landroid/content/BroadcastReceiver;

    .line 3123
    return-void
.end method

.method static synthetic at(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO:Z

    return v0
.end method

.method private au()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3126
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_1

    .line 3127
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    .line 3133
    :cond_1
    :goto_0
    return-void

    .line 3129
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3130
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    goto :goto_0
.end method

.method static synthetic au(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const-wide/32 v8, 0xea60

    .line 392
    .line 53594
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 53589
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V

    .line 53595
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 53591
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const/4 v6, 0x0

    move-wide v2, v8

    move-wide v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V

    .line 392
    return-void
.end method

.method private av()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cg:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3158
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cg:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cg:Landroid/content/BroadcastReceiver;

    .line 3161
    :cond_0
    return-void
.end method

.method static synthetic av(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 53599
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 53596
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V

    .line 53600
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 53597
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V

    .line 392
    return-void
.end method

.method private aw()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ch:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3165
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ch:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ch:Landroid/content/BroadcastReceiver;

    .line 3168
    :cond_0
    return-void
.end method

.method static synthetic aw(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 53604
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 53601
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V

    .line 392
    return-void
.end method

.method private ax()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x2000

    .line 3328
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    .line 3329
    .local v0, "isInBurnMode":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 3330
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 3332
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 3333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_1

    .line 3334
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3341
    :cond_1
    :goto_1
    return-void

    .line 3330
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3337
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    .line 3338
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method static synthetic ax(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 53607
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 53605
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V

    .line 392
    return-void
.end method

.method static synthetic ay(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW:J

    return-wide v0
.end method

.method private ay()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3347
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    .line 3348
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3349
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "other"

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    const/4 v1, 0x0

    .line 3351
    .local v1, "statisticsKey":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-eqz v2, :cond_3

    .line 3352
    const-string/jumbo v1, "chat_msg_boss_page"

    .line 3358
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3359
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3362
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "statisticsKey":Ljava/lang/String;
    :cond_1
    return-void

    .line 3349
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ:Ljava/lang/String;

    goto :goto_0

    .line 3353
    .restart local v1    # "statisticsKey":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3354
    const-string/jumbo v1, "chat_msg_group_page"

    goto :goto_1

    .line 3355
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3356
    const-string/jumbo v1, "chat_msg_single_page"

    goto :goto_1
.end method

.method private az()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 3368
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR:Z

    if-nez v2, :cond_1

    .line 3369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3370
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "other"

    :goto_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    const/4 v1, 0x0

    .line 3372
    .local v1, "statisticsKey":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-eqz v2, :cond_3

    .line 3373
    const-string/jumbo v1, "chat_msg_boss_page_send"

    .line 3379
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3380
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR:Z

    .line 3381
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 3384
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "statisticsKey":Ljava/lang/String;
    :cond_1
    return-void

    .line 3370
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ:Ljava/lang/String;

    goto :goto_0

    .line 3374
    .restart local v1    # "statisticsKey":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3375
    const-string/jumbo v1, "chat_msg_group_page_send"

    goto :goto_1

    .line 3376
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 3377
    const-string/jumbo v1, "chat_msg_single_page_send"

    goto :goto_1
.end method

.method static synthetic az(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    return-object p1
.end method

.method private b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3781
    if-nez p1, :cond_1

    .line 3782
    const-string/jumbo v0, ""

    .line 3799
    :cond_0
    :goto_0
    return-object v0

    .line 3784
    :cond_1
    const-string/jumbo v3, "conversation_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3785
    .local v0, "cid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_2

    .line 3786
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 3789
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3791
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3792
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 3793
    const-string/jumbo v3, "cid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3795
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 3796
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bc:Ljava/util/LinkedList;

    return-object p1
.end method

.method private b(I)V
    .locals 4
    .param p1, "topMargin"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6754
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 6755
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6756
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v1, p1, :cond_0

    .line 6757
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6758
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->requestLayout()V

    .line 6761
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 6762
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6763
    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v1, p1, :cond_1

    .line 6764
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6765
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->requestLayout()V

    .line 6769
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    if-eqz v1, :cond_2

    .line 6770
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    .line 51580
    iget-object v1, v2, Ldmt;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v1, :cond_2

    iget-object v1, v2, Ldmt;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    .line 51581
    iget-object v1, v2, Ldmt;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51582
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v3, p1, :cond_2

    .line 51583
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 51584
    iget-object v1, v2, Ldmt;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->requestLayout()V

    .line 6772
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 392
    .line 53391
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 53392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 53393
    if-eqz v0, :cond_0

    const-string/jumbo v1, "announceUnread"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53394
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 53395
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "announceUnread"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53396
    const-string/jumbo v1, "announceUnread"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53397
    const-string/jumbo v1, "announceUnreadCreateTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53398
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 53399
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    :cond_0
    :goto_0
    return-void

    .line 53402
    :cond_1
    const-string/jumbo v1, "announceUnread"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53403
    const-string/jumbo v1, "announceUnreadCreateTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53404
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 53405
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ba()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    .line 52465
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-nez v2, :cond_1

    .line 52466
    :cond_0
    :goto_0
    return-void

    .line 52470
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52506
    invoke-virtual {v2, v1}, Ldvw;->d(Z)V

    .line 52471
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 52472
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 52474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52508
    iput v1, v0, Ldvw;->g:I

    .line 52475
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "org_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52477
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 52478
    cmp-long v0, v2, v6

    if-lez v0, :cond_2

    .line 52479
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0, v2, v3}, Ldvw;->b(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 52498
    :goto_1
    sget v2, Lctk$f;->all_view:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 52499
    if-eqz v2, :cond_3

    .line 52500
    sget v2, Lctk$f;->all_view:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 52501
    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(I)V

    .line 52503
    :cond_3
    if-eqz v0, :cond_4

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 52504
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(I)V

    goto :goto_0

    .line 52481
    :catch_0
    move-exception v0

    .line 52482
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 52483
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0, v1}, Ldvw;->b(Z)V

    move v0, v1

    .line 52485
    goto :goto_1

    :cond_5
    invoke-static {p1}, Ldwa;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 52486
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52510
    iput v0, v2, Ldvw;->g:I

    .line 52487
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52512
    invoke-virtual {v2}, Ldvw;->f()Z

    move-result v3

    if-nez v3, :cond_6

    move v2, v1

    .line 52487
    :goto_2
    if-eqz v2, :cond_8

    .line 52488
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v2, v0}, Ldvw;->a(Z)V

    goto :goto_1

    .line 52515
    :cond_6
    iput-object p1, v2, Ldvw;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 52516
    iget-object v2, v2, Ldvw;->b:Ldvt;

    invoke-interface {v2, p1}, Ldvt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    goto :goto_2

    .line 52492
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52517
    iput v1, v0, Ldvw;->g:I

    .line 52493
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 52494
    cmp-long v0, v2, v6

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_8

    .line 52495
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0, v2, v3}, Ldvw;->a(J)V

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 392
    .line 52774
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52775
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "sendLocalFileToSpace: fileUris is null or empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52776
    :goto_0
    return-void

    .line 52779
    :cond_1
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$76;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$76;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 392
    .line 52800
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52809
    :cond_0
    :goto_0
    return-void

    .line 52804
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bA:Z

    if-eqz v0, :cond_0

    .line 52808
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52811
    const/4 v1, 0x0

    .line 52812
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52813
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 52817
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52820
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    .line 52821
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/16 v4, 0xfc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_2

    .line 52825
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 52826
    const/4 v0, 0x1

    .line 52832
    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    if-eqz v0, :cond_0

    .line 52833
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->b()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Z)V

    return-void
.end method

.method private ba()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9287
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cF:Z

    if-eqz v0, :cond_0

    .line 9288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getRootView()Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;

    move-result-object v0

    .line 52284
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/DispatchableLinearLayout;->a:Z

    .line 9289
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 9290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 9291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceSwitcherButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 9294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setVisibility(I)V

    .line 9295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageBannedView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9297
    :cond_0
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cF:Z

    .line 9298
    return-void
.end method

.method private bb()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9479
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    if-eqz v0, :cond_0

    .line 9480
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    .line 52300
    iget-object v1, v0, Ldmg;->a:Ldmd;

    invoke-virtual {v1}, Ldmd;->f()V

    .line 52301
    iget-object v0, v0, Ldmg;->b:Ldmd;

    invoke-virtual {v0}, Ldmd;->f()V

    .line 9482
    :cond_0
    return-void
.end method

.method private bc()V
    .locals 1

    .prologue
    .line 9485
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    if-eqz v0, :cond_0

    .line 9486
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    invoke-virtual {v0}, Ldle;->b()V

    .line 9488
    :cond_0
    return-void
.end method

.method private bd()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 9516
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 9517
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 9518
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 52330
    if-eqz p0, :cond_0

    if-nez v1, :cond_1

    .line 52346
    :cond_0
    :goto_0
    return-void

    .line 52334
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "oto_todo_task_enabled"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52335
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setVisibility(I)V

    goto :goto_0

    .line 52339
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_single_chat_todo_task"

    .line 52355
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 52339
    if-nez v2, :cond_3

    .line 52340
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setVisibility(I)V

    goto :goto_0

    .line 52344
    :cond_3
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 52345
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->setVisibility(I)V

    goto :goto_0

    .line 52349
    :cond_4
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b:J

    .line 52350
    iput-object p0, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a:Landroid/app/Activity;

    .line 52356
    invoke-static {}, Layv;->a()Layv;

    move-result-object v1

    invoke-virtual {v1}, Layv;->b()V

    .line 52357
    invoke-static {}, Layv;->a()Layv;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b:J

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->f:Layv$b;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->g:Layv$c;

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->h:Layv$d;

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->i:Layv$f;

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->l:Layv$g;

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->m:Layv$e;

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->j:Layv$i;

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->k:Layv$a;

    .line 52362
    iput-wide v2, v1, Layv;->a:J

    .line 52364
    if-eqz v4, :cond_5

    .line 52365
    iget-object v2, v1, Layv;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52367
    :cond_5
    if-eqz v5, :cond_6

    .line 52368
    iget-object v2, v1, Layv;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52370
    :cond_6
    iput-object v6, v1, Layv;->d:Layv$d;

    .line 52371
    iput-object v7, v1, Layv;->e:Layv$f;

    .line 52372
    iput-object v8, v1, Layv;->f:Layv$g;

    .line 52373
    iput-object v9, v1, Layv;->g:Layv$e;

    .line 52374
    iput-object v10, v1, Layv;->h:Layv$i;

    .line 52375
    iput-object v11, v1, Layv;->i:Layv$a;

    .line 52377
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b:J

    new-instance v4, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView$1;-><init>(Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;)V

    const-class v5, Lcma;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->a:Landroid/app/Activity;

    invoke-static {v4, v5, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(JLcma;)V

    goto/16 :goto_0
.end method

.method private be()Z
    .locals 1

    .prologue
    .line 9531
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9532
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9533
    invoke-static {p0}, Lctm;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 9537
    :goto_0
    const/4 v0, 0x1

    .line 9539
    :goto_1
    return v0

    .line 52410
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    goto :goto_0

    .line 9539
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT:J

    return-wide p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bv:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 8
    .param p1, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6776
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    .line 6777
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v5

    .line 6776
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6778
    .local v2, "screenHeight":I
    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v4, v4, 0x4

    if-ge p1, v4, :cond_0

    .line 6779
    move p1, v2

    .line 6782
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 6783
    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int v1, p1, v4

    .line 6784
    .local v1, "mScrollMaxHeight":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 51588
    iput v1, v4, Ldvw;->d:I

    .line 6793
    .end local v1    # "mScrollMaxHeight":I
    :goto_0
    return-void

    .line 6785
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Ldwa;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6786
    const/high16 v4, 0x438c0000    # 280.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 6787
    .local v0, "height":I
    div-int/lit8 v4, p1, 0x2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6788
    .local v3, "scrollMaxHeight":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 51590
    iput v3, v4, Ldvw;->d:I

    goto :goto_0

    .line 6790
    .end local v0    # "height":I
    .end local v3    # "scrollMaxHeight":I
    :cond_2
    const/high16 v4, 0x428a0000    # 69.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int v1, p1, v4

    .line 6791
    .restart local v1    # "mScrollMaxHeight":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 51592
    iput v1, v4, Ldvw;->d:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 392
    .line 52442
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cn:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 52444
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 52445
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 52446
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 52450
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 52451
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 52453
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 52454
    if-eqz v1, :cond_3

    .line 52455
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_2

    .line 52458
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, v1

    .line 52462
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :cond_2
    return-void

    .line 52460
    :cond_3
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 392
    .line 53410
    if-eqz p1, :cond_0

    .line 53413
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 53414
    if-eqz v0, :cond_0

    .line 53417
    const-string/jumbo v1, "anchorType"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53418
    const-string/jumbo v1, "anchorMessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53419
    const-string/jumbo v1, "messageCreateTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53420
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 392
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 392
    .line 52837
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay:Ldev;

    if-eqz v0, :cond_0

    .line 52840
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52841
    :cond_0
    return-void

    .line 52843
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52844
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ay:Ldev;

    invoke-virtual {v2, v0}, Ldev;->b(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v2, 0x0

    .line 392
    .line 52557
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 52561
    const-string/jumbo v0, "live_im_start_live_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 52562
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 52563
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 52562
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52564
    if-eqz p1, :cond_0

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52565
    const-string/jumbo v0, "pref_key_start_live_first_entry"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 392
    :cond_0
    return-void
.end method

.method private c(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2706
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 2707
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2708
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 2709
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 2710
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 2711
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;I)V

    .line 2717
    .end local v0    # "uid":J
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW:J

    return-wide p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bw:Ljava/lang/String;

    return-object p1
.end method

.method private d(I)V
    .locals 5
    .param p1, "titleIconColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 9429
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 9430
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9431
    .local v2, "settingDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 9432
    .local v1, "realDrawable":Lcjz;
    instance-of v4, v2, Lcjz;

    if-eqz v4, :cond_4

    move-object v1, v2

    .line 9433
    check-cast v1, Lcjz;

    .line 9440
    .end local v2    # "settingDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 9441
    invoke-virtual {v1, p1}, Lcjz;->a(I)V

    .line 9444
    .end local v1    # "realDrawable":Lcjz;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 9445
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9446
    .local v3, "telDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 9447
    .restart local v1    # "realDrawable":Lcjz;
    instance-of v4, v3, Lcjz;

    if-eqz v4, :cond_5

    move-object v1, v3

    .line 9448
    check-cast v1, Lcjz;

    .line 9455
    .end local v3    # "telDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 9456
    invoke-virtual {v1, p1}, Lcjz;->a(I)V

    .line 9459
    .end local v1    # "realDrawable":Lcjz;
    :cond_3
    return-void

    .line 9434
    .restart local v1    # "realDrawable":Lcjz;
    .restart local v2    # "settingDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v4, v2, Lcqw;

    if-eqz v4, :cond_0

    .line 9435
    check-cast v2, Lcqw;

    .line 52286
    .end local v2    # "settingDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, v2, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 9436
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Lcjz;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 9437
    check-cast v1, Lcjz;

    goto :goto_0

    .line 9449
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "telDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    instance-of v4, v3, Lcqw;

    if-eqz v4, :cond_2

    .line 9450
    check-cast v3, Lcqw;

    .line 52287
    .end local v3    # "telDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, v3, Lcqw;->a:Landroid/graphics/drawable/Drawable;

    .line 9451
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Lcjz;

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 9452
    check-cast v1, Lcjz;

    goto :goto_1
.end method

.method private d(J)V
    .locals 11
    .param p1, "oid"    # J

    .prologue
    const/4 v8, 0x0

    .line 2345
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v5, :cond_0

    .line 2346
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2347
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_5

    .line 2348
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v3

    .line 2349
    .local v3, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v3, :cond_4

    iget-boolean v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupWaterMark:Z

    if-eqz v5, :cond_4

    .line 2350
    const/16 v5, 0x10

    invoke-static {v5}, Lcms;->b(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2351
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$c;->chat_bg_water_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lctk$c;->chat_bg_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {p0, v5, v6, v7, v8}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2352
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2353
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 2354
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    invoke-static {v5, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2378
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_0
    :goto_0
    return-void

    .line 2356
    .restart local v3    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_1
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 2357
    .local v4, "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->f()Ljava/lang/String;

    move-result-object v5

    .line 18217
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 2359
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundWatermarkColor:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 2360
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundWatermarkColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 19146
    .local v0, "bgColor":I
    :goto_1
    iput v0, v4, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    .line 2367
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->chat_bg_water_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 20142
    iput v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 2369
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2361
    .end local v0    # "bgColor":I
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-eqz v5, :cond_3

    .line 2362
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    iget v0, v5, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->waterMarkColor:I

    .restart local v0    # "bgColor":I
    goto :goto_1

    .line 2364
    .end local v0    # "bgColor":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->chat_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "bgColor":I
    goto :goto_1

    .line 2372
    .end local v0    # "bgColor":I
    .end local v4    # "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    invoke-static {v5, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2375
    .end local v3    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    invoke-static {v5, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 392
    .line 52858
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    .line 52861
    const/4 v0, 0x0

    .line 52862
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52863
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v4, 0x2bc

    if-ne v2, v4, :cond_5

    .line 52864
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    .line 52865
    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52866
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 52867
    if-nez v1, :cond_4

    .line 52868
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 52870
    :goto_1
    const-wide/16 v4, 0x0

    .line 52871
    const-string/jumbo v1, "announceUnread"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52873
    :try_start_0
    const-string/jumbo v1, "announceUnreadCreateTime"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 52877
    :cond_0
    :goto_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-lez v1, :cond_1

    .line 52878
    const-string/jumbo v1, "announceUnread"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52879
    const-string/jumbo v1, "announceUnreadCreateTime"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52881
    :cond_1
    invoke-interface {v6, v2}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 52882
    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    .line 52885
    goto/16 :goto_0

    .line 52886
    :cond_2
    if-eqz v1, :cond_3

    .line 52887
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    .line 392
    :cond_3
    return-void

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Z)V

    return-void
.end method

.method private d(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 4283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 4284
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4285
    invoke-static {p1}, Ldwa;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0, v4}, Ldvw;->a(Z)V

    .line 4287
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(I)V

    .line 4289
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    .line 2637
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjc;->a(Ljava/lang/String;)V

    .line 2638
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v0, :cond_5

    .line 2639
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2683
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    if-eqz v0, :cond_1

    .line 2684
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldmg;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 2685
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    invoke-virtual {v0, v1}, Ldmg;->a(Ldiz;)V

    .line 2687
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    if-eqz v0, :cond_2

    .line 2688
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 22117
    iput-object v1, v0, Ldle;->d:Ldiz;

    .line 2690
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    if-eqz v0, :cond_3

    .line 2691
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 23076
    iput-object v1, v0, Ldie;->m:Ldiz;

    .line 2693
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    if-eqz v0, :cond_4

    .line 2694
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 23334
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->q:Ldiz;

    .line 2696
    :cond_4
    return-void

    .line 2641
    :cond_5
    new-instance v0, Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 2642
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$91;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 21131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 2676
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    if-eqz v0, :cond_6

    .line 2677
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 21138
    iput-object v1, v0, Ldjb;->i:Ldiz;

    .line 2679
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    if-eqz v0, :cond_0

    .line 2680
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 22111
    iput-object v1, v0, Ldjx;->b:Ldiz;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->br:Ljava/lang/String;

    return-object p1
.end method

.method private e(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 7161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-nez v0, :cond_0

    .line 7162
    sget v0, Lctk$f;->view_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 7163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$28;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$28;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 7173
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 7174
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getAddAppButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bt:Ldep$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bt:Ldep$a;

    .line 7175
    invoke-interface {v0}, Ldep$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7177
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 7199
    :goto_0
    return-void

    .line 7181
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$29;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    .line 53575
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53576
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 53577
    sget v1, Lctk$i;->dt_common_i_know:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 53578
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 392
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 392
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(J)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 392
    .line 52890
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52891
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52892
    if-eqz v0, :cond_0

    .line 52897
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 52898
    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_0

    .line 52899
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 52900
    invoke-virtual {v0, v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->getMessageExtraProperty(Lcom/alibaba/wukong/im/Message;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    goto :goto_0

    .line 392
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v2, 0x0

    .line 392
    .line 53110
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Z)V

    .line 53111
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aa:Z

    if-eqz v0, :cond_3

    .line 53112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 53113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAutoTransEnable(Z)V

    .line 53114
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-nez v0, :cond_0

    .line 53115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    .line 53118
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-eqz v0, :cond_2

    sget v0, Lctk$i;->dt_conversation_autotranslate_input_placeholder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 53119
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-eqz v0, :cond_1

    .line 53120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Z)V

    goto :goto_1
.end method

.method private e(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4339
    invoke-static {}, Lebc;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 4340
    .local v0, "withGlobalOrDep":Z
    :goto_0
    invoke-static {}, Lder;->a()Lder;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lder;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 4341
    return-void

    .line 4339
    .end local v0    # "withGlobalOrDep":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Z)V
    .locals 15
    .param p1, "isEnterprise"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2237
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-nez v10, :cond_1

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2238
    :cond_1
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 2239
    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    const-wide/16 v12, 0x10

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 2240
    if-eqz p1, :cond_6

    .line 2241
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    const-wide/16 v12, 0x2

    const/4 v11, 0x1

    invoke-virtual {v10, v12, v13, v11}, Lcug;->a(JZ)V

    .line 2242
    const-wide/16 v2, 0x0

    .line 2243
    .local v2, "orgId":J
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v11, "id"

    invoke-interface {v10, v11}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 2244
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v11, "id"

    invoke-interface {v10, v11}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2248
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v10}, Lddq;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2249
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v10, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_3

    .line 2250
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v10, v2, v3, v11}, Ldvw;->a(JLcom/alibaba/wukong/im/Conversation;)V

    .line 2253
    :cond_3
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    .line 15090
    iput-wide v2, v10, Lcug;->e:J

    .line 2254
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v5

    .line 2255
    .local v5, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v5, :cond_4

    iget-boolean v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupRealName:Z

    if-eqz v10, :cond_4

    .line 2256
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    .line 16087
    const/4 v11, 0x1

    iput-boolean v11, v10, Lcug;->g:Z

    .line 2258
    :cond_4
    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bl:J

    .line 2259
    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(J)V

    goto :goto_0

    .line 2245
    .end local v5    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_5
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v11, "orgId"

    invoke-interface {v10, v11}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2246
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v11, "orgId"

    invoke-interface {v10, v11}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 2260
    .end local v2    # "orgId":J
    :cond_6
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v10}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2261
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {v10, v12, v13, v11}, Lcug;->a(JZ)V

    .line 2262
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v10}, Ldjl;->E(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    .line 2263
    .local v4, "orgSize":I
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v10, :cond_7

    .line 2264
    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v10, 0x1

    if-le v4, v10, :cond_8

    sget v10, Lctk$i;->dt_group_cooperative_org_count_AT:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 2266
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 2265
    invoke-virtual {p0, v10, v12}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    new-instance v12, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$83;

    invoke-direct {v12, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$83;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2264
    invoke-virtual {v11, v10, v12}, Ldvw;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 2281
    :cond_7
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(J)V

    goto/16 :goto_0

    .line 2265
    :cond_8
    const-string/jumbo v10, ""

    goto :goto_2

    .line 2283
    .end local v4    # "orgSize":I
    :cond_9
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {v10, v12, v13, v11}, Lcug;->a(JZ)V

    .line 2284
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v10}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2285
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v10, :cond_a

    .line 2286
    const-string/jumbo v10, "pref_key_im_industry_group_guide"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2287
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    .line 2288
    .local v7, "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$85;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lctk$c;->ui_common_theme_text_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v1, p0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$85;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V

    .line 2297
    .local v1, "linkClickableSpan":Lebd;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lctk$i;->dt_im_caht_industry_meeting_member_count:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2298
    .local v8, "subTitleText":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2299
    .local v6, "spannbleString":Landroid/text/SpannableString;
    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v12, 0x11

    invoke-virtual {v6, v1, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 16382
    iput-object v6, v7, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 2301
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lctk$i;->dt_im_chat_click_show_name_card_tips:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, "guideText":Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16402
    iput-object v10, v7, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->c:Landroid/text/SpannableString;

    .line 2303
    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$86;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$86;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 16410
    iput-object v10, v7, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->d:Landroid/view/View$OnClickListener;

    .line 2310
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 17364
    invoke-virtual {v10}, Ldvw;->f()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 17367
    iget-object v10, v10, Ldvw;->a:Ldvu;

    invoke-interface {v10, v7}, Ldvu;->setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V

    .line 2329
    .end local v0    # "guideText":Ljava/lang/String;
    .end local v1    # "linkClickableSpan":Lebd;
    .end local v6    # "spannbleString":Landroid/text/SpannableString;
    .end local v7    # "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    .end local v8    # "subTitleText":Ljava/lang/String;
    :cond_a
    :goto_3
    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(J)V

    goto/16 :goto_0

    .line 2312
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lctk$i;->dt_im_chat_industry_meeting_member_count_AT:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v14}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2313
    .local v9, "text":Ljava/lang/String;
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    new-instance v11, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$87;

    invoke-direct {v11, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$87;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v10, v9, v11}, Ldvw;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 2324
    .end local v9    # "text":Ljava/lang/String;
    :cond_c
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v10, :cond_a

    .line 2325
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ldvw;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aS:I

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ba:J

    return-wide p1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/16 v8, 0x8

    .line 392
    .line 52906
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52910
    :cond_0
    return-void

    .line 52909
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 52913
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52914
    if-eqz v0, :cond_2

    .line 52915
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v1, :cond_2

    .line 52920
    invoke-static {v0}, Ldwo;->e(Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    .line 52921
    invoke-static {v0}, Ldwo;->d(Lcom/alibaba/wukong/im/Message;)I

    move-result v3

    .line 52922
    invoke-static {v0}, Ldwo;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 52923
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    .line 52927
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52928
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->getData()Ljava/util/HashMap;

    move-result-object v3

    .line 52929
    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52930
    const-string/jumbo v1, "im"

    sget-object v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    const-string/jumbo v5, "Group bill banner refresh"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52932
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52933
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52934
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setVisibility(I)V

    goto :goto_0

    .line 52936
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/views/IMBanner;->setData(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private f(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7667
    if-nez p1, :cond_1

    .line 7679
    :cond_0
    :goto_0
    return-void

    .line 7670
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 7671
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Z)V

    .line 7676
    :goto_1
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7677
    sget v0, Lctk$e;->chat_safe_model_title:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 7673
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Z)V

    goto :goto_1
.end method

.method private f(Z)V
    .locals 11
    .param p1, "forceInit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3190
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lddo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3191
    :cond_0
    invoke-static {}, Lder;->a()Lder;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 33633
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-ne v3, v8, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-nez v3, :cond_7

    .line 3193
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lddo;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 34285
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->by:J

    .line 3196
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aa:Z

    .line 3197
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Z)V

    .line 3198
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAutoTransEnable(Z)V

    .line 3199
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 35249
    const-wide/16 v2, 0x12c

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j:J

    .line 35250
    const-wide/16 v2, 0x7d0

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k:J

    .line 3200
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lddo;->c(Lcom/alibaba/wukong/im/Conversation;)[Ljava/lang/String;

    move-result-object v0

    .line 3201
    .local v0, "translateLanguage":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-eq v1, v10, :cond_4

    .line 3202
    :cond_3
    invoke-static {}, Lddo;->a()[Ljava/lang/String;

    move-result-object v0

    .line 3204
    :cond_4
    if-eqz v0, :cond_5

    array-length v1, v0

    if-ne v1, v10, :cond_5

    .line 3205
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bp:Ljava/lang/String;

    .line 3206
    aget-object v1, v0, v8

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bq:Ljava/lang/String;

    .line 3207
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    aget-object v2, v0, v9

    aget-object v3, v0, v8

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v2, Lctk$i;->dt_conversation_autotranslate_input_placeholder:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    .line 3210
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setOnTranslateListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;)V

    .line 3279
    .end local v0    # "translateLanguage":[Ljava/lang/String;
    :cond_6
    return-void

    .line 33639
    :cond_7
    invoke-static {v2}, Lddo;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 33644
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v3, "locale"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33645
    :goto_1
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v3

    .line 33647
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 33648
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33652
    const-string/jumbo v1, "pref_key_auto_translate"

    invoke-static {v1, v9}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33653
    const-string/jumbo v1, "pref_key_auto_translate"

    invoke-static {v1, v8}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 33655
    invoke-static {v2}, Lder;->c(Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 33644
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bu:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(I)V

    return-void
.end method

.method private g(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7791
    if-eqz p1, :cond_1

    .line 7792
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7793
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {v0}, Ldho;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7794
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "sync_status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7795
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 7796
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$36;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 7822
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 7795
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->syncConversationProperties(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 7824
    :cond_1
    return-void
.end method

.method private g(Z)V
    .locals 11
    .param p1, "clearIfNonDraft"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7722
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_7

    .line 7723
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7724
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    .line 51772
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    .line 7726
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v10, :cond_8

    .line 7727
    iput-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 7728
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D:Ljava/lang/String;

    .line 7729
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;)V

    .line 7763
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->supportInvalidateOptionsMenu()V

    .line 51774
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_4

    .line 51776
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 51819
    invoke-static {}, Ldec$a;->a()Ldec;

    .line 51778
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldec;->a(Lcom/alibaba/wukong/im/Conversation;)Lded;

    move-result-object v2

    .line 51779
    if-eqz v2, :cond_4

    .line 51782
    iput-boolean v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO:Z

    .line 51783
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v4

    .line 51784
    invoke-virtual {v2}, Lded;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    .line 51786
    invoke-virtual {v2}, Lded;->a()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 51787
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v2}, Lded;->a()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51790
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B()V

    .line 51791
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Landroid/text/SpannableString;)V

    .line 51793
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-eqz v5, :cond_2

    .line 51795
    invoke-virtual {v2}, Lded;->d()Ljava/lang/String;

    move-result-object v5

    .line 51796
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 51797
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v9, v8, v8, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    .line 51801
    :cond_2
    invoke-virtual {v2}, Lded;->b()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 51802
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    if-eqz v5, :cond_3

    .line 51803
    check-cast v2, Ldef;

    .line 51820
    iget-wide v6, v2, Ldef;->e:J

    .line 51804
    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51821
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$40;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)V

    invoke-interface {v4, v6, v7, v5}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    .line 51808
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 51845
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51846
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-eq v2, v10, :cond_b

    .line 51849
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_6

    .line 51850
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$37;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$37;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v2, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 7767
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/wukong/im/Conversation;)V

    .line 51975
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 51976
    if-nez v2, :cond_d

    move v2, v3

    .line 7769
    :goto_3
    if-eqz v2, :cond_7

    .line 7770
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c()V

    .line 7771
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bc()V

    .line 7772
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU()V

    .line 7775
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax()V

    .line 7776
    return-void

    .line 7731
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 7732
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$34;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$34;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v2, v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_0

    .line 51810
    .end local v0    # "uid":J
    :cond_9
    if-eqz p1, :cond_a

    .line 51811
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 51813
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51814
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    goto :goto_1

    .line 51859
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-nez v2, :cond_6

    .line 51862
    :cond_c
    const-class v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$38;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 51979
    :cond_d
    const-string/jumbo v3, "voice_record_mode"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cs:I

    return p1
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldps$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bI:Ldps$a;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    .line 53136
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 53137
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 53138
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 392
    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO:Z

    return v0
.end method

.method private static h(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9491
    if-nez p0, :cond_1

    .line 9501
    :cond_0
    :goto_0
    return v1

    .line 9494
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    move v1, v2

    .line 9495
    goto :goto_0

    .line 9497
    :cond_2
    const-string/jumbo v3, "im_campus_is_authed"

    invoke-interface {p0, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52303
    invoke-static {v3, v1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 9498
    .local v0, "authed":I
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x15

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    if-eq v0, v2, :cond_0

    move v1, v2

    .line 9499
    goto :goto_0
.end method

.method private h(Z)Z
    .locals 4
    .param p1, "checkOverSeaUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 9179
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9189
    :cond_0
    :goto_0
    return v1

    .line 9182
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->B(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9185
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    .line 9186
    .local v0, "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9187
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pre_key_chat_festival_redpacket_clicked_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ct:I

    return p1
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldpt$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bJ:Ldpt$a;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->av:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cr:Z

    return p1
.end method

.method private static i(Z)Z
    .locals 1
    .param p0, "checkOverSeaUser"    # Z

    .prologue
    .line 9194
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9195
    const/4 v0, 0x0

    .line 9197
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lddq;->a()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cK:Z

    return v0
.end method

.method private j(Z)Z
    .locals 4
    .param p1, "checkLiveVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9312
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9319
    :cond_0
    :goto_0
    return v0

    .line 9315
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9318
    const-string/jumbo v2, "pref_key_start_live_first_entry"

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9319
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR()V

    return-void
.end method

.method private k(Z)Z
    .locals 2
    .param p1, "checkVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 9323
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9329
    :cond_0
    :goto_0
    return v0

    .line 9326
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9329
    :cond_2
    const-string/jumbo v0, "pref_key_group_bill_first_entry"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT:J

    return-wide v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao()V

    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aS()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bd:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bc:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 52712
    const/4 v0, 0x0

    .line 52713
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v1, :cond_1

    .line 52714
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52715
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52716
    instance-of v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v3, :cond_0

    .line 52717
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->updateDisplayType()V

    .line 52719
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 52721
    goto :goto_0

    :cond_1
    move v1, v0

    .line 392
    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT()V

    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aD:J

    return-wide v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    .line 52847
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 52848
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 52849
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    .line 52854
    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    .line 52850
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 52851
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const-wide/16 v2, 0x0

    .line 52856
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    goto :goto_0
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldmg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aZ:I

    return v0
.end method


# virtual methods
.method protected A()Z
    .locals 1

    .prologue
    .line 7401
    const/4 v0, 0x1

    return v0
.end method

.method public final B()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7623
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 7624
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditContent(Ljava/lang/String;)V

    .line 7625
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTranslateEditText(Ljava/lang/String;)V

    .line 7627
    :cond_0
    return-void
.end method

.method public final C()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 8145
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-nez v3, :cond_1

    .line 52044
    :cond_0
    :goto_0
    return-void

    .line 8148
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 8149
    .local v0, "inputText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 8150
    .local v1, "lastInput":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8151
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    .line 52036
    iget-object v3, v3, Lcro;->f:Ljava/lang/String;

    .line 8151
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 8154
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8156
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52037
    invoke-static {}, Ldec$a;->a()Ldec;

    .line 8157
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldec;->b(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 8161
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_1
    invoke-static {v3}, Ldeb;->a(I)Lded;

    move-result-object v2

    .line 8162
    .local v2, "model":Lded;
    if-eqz v2, :cond_0

    .line 8165
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    invoke-virtual {v2, v3, v1, v5}, Lded;->a(Ljava/lang/String;Ljava/lang/String;Z)Lded;

    .line 8166
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lded;->a(Ljava/util/Map;)Lded;

    .line 8167
    invoke-virtual {v2}, Lded;->b()I

    move-result v3

    if-ne v3, v4, :cond_4

    move-object v3, v2

    .line 8168
    check-cast v3, Ldef;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z:Lcrp;

    .line 52038
    iget-object v4, v4, Lcrp;->i:Lcrp$a;

    .line 52039
    iget-object v4, v4, Lcrp$a;->a:Lcom/alibaba/wukong/im/Message;

    .line 8168
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    .line 52040
    iput-wide v4, v3, Ldef;->e:J

    .line 52042
    :cond_4
    invoke-static {}, Ldec$a;->a()Ldec;

    .line 8170
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 52043
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lded;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52046
    invoke-virtual {v2}, Lded;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/alibaba/wukong/im/Conversation;->updateDraftMessage(Ljava/lang/String;)V

    .line 52048
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v3

    .line 52049
    if-nez v3, :cond_5

    .line 52050
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52052
    :cond_5
    const-string/jumbo v5, "draft_type"

    invoke-virtual {v2}, Lded;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52054
    invoke-virtual {v2}, Lded;->a()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 52055
    const-string/jumbo v5, "at_uids"

    invoke-virtual {v2}, Lded;->a()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v6}, Lcpt;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52058
    :cond_6
    invoke-virtual {v2}, Lded;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 52059
    const-string/jumbo v5, "translate_text"

    invoke-virtual {v2}, Lded;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52062
    :cond_7
    invoke-virtual {v2, v3}, Lded;->b(Ljava/util/Map;)V

    .line 52063
    invoke-interface {v4, v3}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 8161
    .end local v2    # "model":Lded;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method protected final D()Z
    .locals 1

    .prologue
    .line 8620
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-nez v0, :cond_0

    .line 8621
    const/4 v0, 0x0

    .line 8624
    :goto_0
    return v0

    .line 8623
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0}, Ldvw;->e()V

    .line 8624
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final E()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8887
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW()V

    .line 8888
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    .line 8889
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8890
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8891
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "mtm"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8892
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_setting_set_click"

    invoke-interface {v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 8899
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v3, :cond_2

    .line 8900
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    invoke-interface {v3}, Ldfc;->a()Z

    move-result v1

    .line 8901
    .local v1, "ret":Z
    if-eqz v1, :cond_2

    .line 8930
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "ret":Z
    :cond_0
    :goto_1
    return-void

    .line 8894
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8895
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "oto"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8896
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "chat_setting_set_click"

    invoke-interface {v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 8905
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldjl;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    .line 8906
    .local v2, "scheme":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ldjl;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 8907
    const-string/jumbo v2, "https://qr.dingtalk.com/fileshelper/settings.html"

    .line 8911
    :cond_3
    :goto_2
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$47;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$47;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-interface {v3, v2, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 8908
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 8909
    :cond_5
    const-string/jumbo v2, "https://qr.dingtalk.com/conversation/public_settings.html"

    goto :goto_2
.end method

.method protected final F()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8933
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_0

    .line 8934
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    invoke-interface {v2}, Ldfc;->d()Z

    move-result v0

    .line 8935
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 8941
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 8939
    :cond_0
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    .line 8940
    .local v1, "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method protected final G()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 9469
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->G()V

    .line 9470
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    if-eqz v0, :cond_0

    .line 9471
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    .line 52288
    invoke-virtual {v0}, Ldle;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52294
    cmp-long v1, v2, v2

    if-nez v1, :cond_1

    .line 52295
    invoke-virtual {v0}, Ldle;->a()V

    :cond_0
    :goto_0
    return-void

    .line 52297
    :cond_1
    iget-object v0, v0, Ldle;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public final H()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 9726
    return-object p0
.end method

.method public final H_()V
    .locals 1

    .prologue
    .line 9748
    .line 52413
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 9748
    if-eqz v0, :cond_0

    .line 9749
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->dismissLoadingDialog()V

    .line 9751
    :cond_0
    return-void
.end method

.method public final I()Lcom/alibaba/wukong/im/MessageListener;
    .locals 1

    .prologue
    .line 9731
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9798
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bz:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8628
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->D()Z

    move-result v5

    if-nez v5, :cond_1

    .line 8700
    :cond_0
    :goto_0
    return-void

    .line 8631
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldjl;->B(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8634
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    .line 52212
    iget-boolean v5, v5, Ldru;->e:Z

    .line 8634
    if-nez v5, :cond_0

    .line 8639
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "intent_key_hide_title_bar_right_button"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    .line 8642
    .local v2, "hideTitleBarRightButton":Z
    if-nez v2, :cond_0

    .line 8646
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v5, :cond_3

    .line 8647
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 8648
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v6, "url"

    invoke-interface {v5, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 8649
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v6, 0x0

    sget v7, Lctk$e;->ic_chat_menu_go_url:I

    invoke-virtual {v5, v6, v7}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 8650
    .local v1, "goView":Landroid/widget/ImageView;
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 8651
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8652
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v5, v1}, Ldvw;->a(Landroid/view/View;)V

    .line 8674
    .end local v1    # "goView":Landroid/widget/ImageView;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8675
    invoke-static {v5}, Lebf;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v5, :cond_f

    .line 8676
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 52213
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    .line 52214
    :cond_4
    const/4 v4, 0x0

    .line 8678
    .local v4, "withDot":Z
    :goto_2
    sget v5, Lctk$i;->icon_group:I

    invoke-direct {p0, v5, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8679
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    .line 8680
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    sget v6, Lctk$i;->dt_accessibility_conversation_group_chat_info:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8694
    .end local v4    # "withDot":Z
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 8695
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8696
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Ldvw;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 8655
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX()Z

    move-result v3

    .line 8656
    .local v3, "needShowCall":Z
    if-eqz v3, :cond_3

    .line 8658
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 8659
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    invoke-interface {v5}, Ldfc;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    const/4 v3, 0x1

    .line 8661
    :cond_7
    :goto_4
    if-eqz v3, :cond_3

    .line 8662
    sget v5, Lctk$i;->icon_phone:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8663
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    .line 8664
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 8665
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8667
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    sget v6, Lctk$i;->dt_accessibility_make_call:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8668
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bh:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Ldvw;->a(Landroid/view/View;)V

    goto/16 :goto_1

    .line 8659
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 52217
    .end local v3    # "needShowCall":Z
    :cond_9
    const-string/jumbo v5, "pref_key_live_records_first_entry"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_a

    .line 52218
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 52219
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 52220
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 52231
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 8682
    :cond_c
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8683
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8684
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    cmp-long v5, v6, v8

    if-nez v5, :cond_e

    .line 8685
    :cond_d
    sget v5, Lctk$i;->icon_setting:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8690
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    .line 8692
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    sget v6, Lctk$i;->conversation_setting_OTO:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 8688
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    sget v5, Lctk$i;->icon_signal:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 8698
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_f
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bi:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method protected final a(J)V
    .locals 7
    .param p1, "senderId"    # J

    .prologue
    .line 8418
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    .line 8419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$41;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$41;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "load_pre"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldqq;->b(Ldqq$d;JZLjava/lang/Object;)V

    .line 8468
    :cond_0
    return-void
.end method

.method protected final a(JJZ)V
    .locals 9
    .param p1, "anchorId"    # J
    .param p3, "senderId"    # J
    .param p5, "realRefresh"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4733
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 4734
    .local v7, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v0, "chat_load"

    const-string/jumbo v1, "load_message"

    invoke-interface {v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 4737
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 4739
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_4

    .line 4740
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_3

    .line 4741
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;

    invoke-direct {v1, p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$129;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/doraemon/statistics/Statistics;)V

    const-string/jumbo v5, "refresh"

    move-wide v2, p3

    invoke-virtual/range {v0 .. v5}, Ldqq;->a(Ldqq$d;JZLjava/lang/Object;)V

    .line 4909
    :cond_2
    :goto_0
    return-void

    .line 4832
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v8

    .line 4833
    .local v8, "unreadCount":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 4834
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 4835
    .local v6, "lastMsg":Lcom/alibaba/wukong/im/Message;
    add-int/lit8 v0, v8, -0x1

    neg-int v1, v0

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;

    invoke-direct {v3, p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$130;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v3, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v6, v1, v2, v4, v0}, Lcom/alibaba/wukong/im/Message;->getOffsetMessage(ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 4906
    .end local v6    # "lastMsg":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "unreadCount":I
    :cond_4
    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JZ)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;)V
    .locals 14
    .param p1, "vo"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 9370
    if-nez p1, :cond_1

    .line 9426
    :cond_0
    :goto_0
    return-void

    .line 9374
    :cond_1
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleBackgroundColor:Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 9375
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 9376
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ldvw;->b(I)V

    .line 9378
    :cond_2
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleIconColor:Ljava/lang/Integer;

    if-eqz v8, :cond_3

    .line 9379
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleIconColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ldvw;->c(I)V

    .line 9380
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleIconColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(I)V

    .line 9382
    :cond_3
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleTextColor:Ljava/lang/Integer;

    if-eqz v8, :cond_4

    .line 9383
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->titleTextColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ldvw;->d(I)V

    .line 9386
    :cond_4
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundMobileImageMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 9387
    const-string/jumbo v8, "IMAGE"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 9389
    .local v3, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    :try_start_0
    sget v8, Lctk$f;->iv_theme_image:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 9391
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundMobileImageMediaId:Ljava/lang/String;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9392
    .local v6, "url":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v3, v2, v6, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 9393
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9399
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v6    # "url":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->backgroundWatermarkColor:Ljava/lang/Integer;

    if-eqz v8, :cond_6

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bl:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 9400
    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bl:J

    invoke-direct {p0, v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(J)V

    .line 9404
    :cond_6
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarBackgroundColor:Ljava/lang/Integer;

    if-eqz v8, :cond_7

    .line 9405
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setBgColor(I)V

    .line 9407
    :cond_7
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarIconColor:Ljava/lang/Integer;

    if-eqz v8, :cond_8

    .line 9408
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarIconColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setIconColor(I)V

    .line 9410
    :cond_8
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecordButton()Landroid/widget/Button;

    move-result-object v7

    .line 9411
    .local v7, "voiceBtn":Landroid/widget/Button;
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnTextColor:Ljava/lang/Integer;

    if-eqz v8, :cond_9

    .line 9412
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnTextColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 9414
    :cond_9
    iget-object v8, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 9415
    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 9416
    .local v4, "rad":I
    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v8, 0x8

    new-array v8, v8, [F

    int-to-float v9, v4

    aput v9, v8, v13

    const/4 v9, 0x1

    int-to-float v10, v4

    aput v10, v8, v9

    const/4 v9, 0x2

    int-to-float v10, v4

    aput v10, v8, v9

    const/4 v9, 0x3

    int-to-float v10, v4

    aput v10, v8, v9

    const/4 v9, 0x4

    int-to-float v10, v4

    aput v10, v8, v9

    const/4 v9, 0x5

    int-to-float v10, v4

    aput v10, v8, v9

    const/4 v9, 0x6

    int-to-float v10, v4

    aput v10, v8, v9

    const/4 v9, 0x7

    int-to-float v10, v4

    aput v10, v8, v9

    invoke-direct {v5, v8, v12, v12}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 9418
    .local v5, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9419
    .local v0, "bg":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 9420
    invoke-static {v7, v0}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9421
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v8, :cond_0

    .line 9422
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T:Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    iget-object v9, v9, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;->toolbarAudioBtnBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setBgColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 9394
    .end local v0    # "bg":Landroid/graphics/drawable/ShapeDrawable;
    .end local v4    # "rad":I
    .end local v5    # "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    .end local v7    # "voiceBtn":Landroid/widget/Button;
    .restart local v3    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    :catch_0
    move-exception v1

    .line 9395
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public final a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 1
    .param p1, "chatApp"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    .prologue
    .line 7066
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p0, v0, p1}, Ldkd;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 7067
    return-void
.end method

.method protected final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 8519
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v1, :cond_0

    .line 8520
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$43;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$43;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-string/jumbo v3, "jump"

    invoke-virtual {v1, p1, v2, v4, v3}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I

    move-result v0

    .line 8575
    .local v0, "result":I
    if-ltz v0, :cond_0

    .line 8576
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v1, :cond_0

    .line 8577
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v4, v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    .line 8581
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 8040
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8042
    sget v4, Lctk$e;->chat_safe_model_title:I

    invoke-direct {p0, v4, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(ILjava/lang/String;)V

    .line 8058
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v4, :cond_2

    .line 8059
    const/4 v3, 0x0

    .line 8060
    .local v3, "mediaId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    .line 8061
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 8063
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8064
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v4, p1, v3}, Ldvw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8067
    .end local v3    # "mediaId":Ljava/lang/String;
    :cond_2
    return-void

    .line 8044
    :cond_3
    const/4 v1, 0x0

    .line 8045
    .local v1, "hasGroupTagSettings":Z
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 51980
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v4

    .line 8046
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldik;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v2

    .line 8047
    .local v2, "iconUrl":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 51981
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v4, :cond_b

    .line 52010
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v4, :cond_5

    .line 52011
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v4, p1}, Ldvw;->c(Ljava/lang/String;)V

    .line 52012
    if-eqz v2, :cond_5

    .line 52013
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52027
    invoke-virtual {v4}, Ldvw;->f()Z

    move-result v5

    if-nez v5, :cond_8

    move-object v4, v6

    .line 52014
    :goto_1
    if-eqz v4, :cond_4

    .line 52015
    const/high16 v5, 0x42e60000    # 115.0f

    invoke-static {p0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 52017
    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52018
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae:Z

    if-eqz v4, :cond_9

    sget v4, Lctk$d;->im_group_tag_width:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 52019
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae:Z

    if-eqz v4, :cond_a

    sget v4, Lctk$d;->im_group_tag_height:I

    :goto_3
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 52020
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v7, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52021
    const-string/jumbo v4, "IMAGE"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 52022
    invoke-interface {v4, v5, v2, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 52023
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52031
    invoke-virtual {v4}, Ldvw;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 52034
    iget-object v4, v4, Ldvw;->a:Ldvu;

    invoke-interface {v4, v5}, Ldvu;->a(Landroid/view/View;)V

    .line 8049
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 8052
    .end local v2    # "iconUrl":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 8053
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 8054
    .local v0, "conversationDesIconResId":I
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(ILjava/lang/String;)V

    .line 8056
    .end local v0    # "conversationDesIconResId":I
    :cond_7
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cv:Ljava/lang/String;

    goto/16 :goto_0

    .line 52030
    .restart local v2    # "iconUrl":Ljava/lang/String;
    :cond_8
    iget-object v4, v4, Ldvw;->a:Ldvu;

    invoke-interface {v4}, Ldvu;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    goto :goto_1

    .line 52018
    :cond_9
    sget v4, Lctk$d;->im_group_tag_size_for_global:I

    goto :goto_2

    .line 52019
    :cond_a
    sget v4, Lctk$d;->im_group_tag_size_for_global:I

    goto :goto_3

    .line 51984
    :cond_b
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 51987
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51988
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al:Landroid/view/View;

    sget v5, Lctk$f;->enterprise_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 51989
    if-eqz v2, :cond_d

    .line 51990
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 51991
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51992
    invoke-interface {v5, v4, v2, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 51994
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 51995
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$147;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$147;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 52002
    :cond_c
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 52005
    :cond_d
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52006
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "jumpToNewWhenNotFound"    # Z

    .prologue
    .line 9359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9366
    :cond_0
    :goto_0
    return-void

    .line 9362
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9365
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(JZ)V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5880
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method protected a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 7
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x1

    .line 5790
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5791
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 5792
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_2

    .line 5793
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 5794
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5795
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 5796
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->az()V

    .line 5798
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 5799
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 5800
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 5801
    :cond_1
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV:Z

    .line 5802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX:J

    .line 5803
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cv:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/String;)V

    .line 5812
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_2
    :goto_0
    return-void

    .line 5804
    .restart local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 5805
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5806
    sget v1, Lctk$i;->dt_message_decrypt_error_dismission:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 5807
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isVoiceRecordMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7078
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 7079
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 7080
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 7081
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7083
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz p1, :cond_2

    .line 7084
    const-string/jumbo v1, "voice_record_mode"

    const-string/jumbo v2, "yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7088
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 7090
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 7086
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "voice_record_mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 9755
    .line 52414
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 9755
    if-eqz v0, :cond_0

    .line 9756
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9758
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 9741
    .line 52412
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 9741
    if-eqz v0, :cond_0

    .line 9742
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->showLoadingDialog()V

    .line 9744
    :cond_0
    return-void
.end method

.method protected final b(J)V
    .locals 7
    .param p1, "senderId"    # J

    .prologue
    .line 8474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    .line 8475
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$42;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$42;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const/4 v4, 0x0

    const-string/jumbo v5, "load_next"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldqq;->c(Ldqq$d;JZLjava/lang/Object;)V

    .line 8513
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 9507
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9508
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getLastVisibleDataPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 52304
    iget-boolean v0, v0, Ldqq;->f:Z

    .line 9508
    if-eqz v0, :cond_0

    .line 9509
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    .line 52305
    invoke-virtual {v0, p1}, Lder;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52308
    const-string/jumbo v0, "topic_emotion_guide"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 52311
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_topic_center_guide_tips:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52312
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Lctk$i;->dt_im_topic_center_guide_link:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52313
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    .line 52314
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52313
    invoke-interface {v0, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 52315
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v3, v4}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 52317
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 52318
    new-array v0, v5, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 52319
    iput v6, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->type:I

    .line 52320
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v5, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v5, v0, v6

    .line 52321
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 52322
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 52323
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    const/16 v1, 0x2719

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 52324
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    const-string/jumbo v1, "#3eb0fb"

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 52325
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v6

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    .line 52327
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v6, 0x0

    invoke-static {v4}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v3, v6, v7, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 52328
    invoke-static {}, Lddq;->h()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v3, p1, v0, v1}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    .line 9513
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7
    .param p1, "statisticsFrom"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8826
    const-string/jumbo v0, "plus_boss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8827
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_privatechat_button_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 8831
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8832
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    if-eqz v0, :cond_0

    .line 8833
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 8834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    .line 8836
    :cond_0
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$44;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$44;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    .line 8847
    :cond_1
    return-void

    .line 8829
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_sunglass_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const-wide/16 v6, 0x0

    .line 5883
    .line 51551
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    if-eqz v0, :cond_2

    .line 51554
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 51556
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v3, :cond_0

    .line 51557
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    .line 51575
    iget-object v1, v1, Ldne;->a:Ldnc;

    .line 51557
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    .line 51576
    iget-object v1, v1, Ldnc;->a:Landroid/util/LruCache;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 51557
    :goto_1
    if-nez v1, :cond_0

    .line 51560
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 51561
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51562
    const-string/jumbo v3, "message_id_before_send"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51577
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 51563
    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 51566
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    .line 51578
    iget-object v1, v1, Ldne;->a:Ldnc;

    .line 51566
    invoke-virtual {v1, v4, v5}, Ldnc;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lldd;

    .line 51567
    if-eqz v1, :cond_0

    .line 51568
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    .line 51579
    iget-object v3, v3, Ldne;->a:Ldnc;

    .line 51568
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Ldnc;->a(JLjava/lang/Object;)V

    goto :goto_0

    .line 51576
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 5884
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 5
    .param p1, "autoTrigger"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7228
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aU()V

    .line 7229
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eqz v1, :cond_2

    .line 7230
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 7231
    .local v0, "old":I
    iput v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 7232
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 7233
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7234
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 7239
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 7240
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 7241
    if-ne v0, v4, :cond_4

    .line 7242
    if-nez p1, :cond_0

    .line 7243
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 7250
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ah()V

    .line 7251
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    if-eqz v1, :cond_1

    .line 7252
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    invoke-virtual {v1, v4}, Ldjx;->a(Z)V

    .line 7254
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au()V

    .line 7256
    .end local v0    # "old":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Z)V

    .line 7257
    return-void

    .line 7236
    .restart local v0    # "old":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    goto :goto_0

    .line 7246
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 7247
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7248
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ()V

    goto :goto_1
.end method

.method public final c(J)V
    .locals 7
    .param p1, "topicId"    # J

    .prologue
    const/4 v2, 0x0

    .line 9782
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9783
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT()V

    .line 9784
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    .line 52415
    iget-object v0, v3, Ldie;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v3, Ldie;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52416
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    .line 52419
    :goto_1
    iget-object v0, v3, Ldie;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 52420
    iget-object v0, v3, Ldie;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Ldie;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    .line 52425
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ldie;->c(Z)V

    .line 52426
    iget-object v0, v3, Ldie;->d:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 52428
    iget-object v0, v3, Ldie;->d:Landroid/support/v4/view/ViewPager;

    new-instance v2, Ldie$2;

    invoke-direct {v2, v3, v1}, Ldie$2;-><init>(Ldie;I)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 52419
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9790
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9791
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aF:Ljava/util/List;

    .line 9792
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao()V

    .line 9794
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "hide"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8028
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 8029
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e:Landroid/view/ViewStub;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 8031
    :cond_0
    return-void

    .line 8029
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 9762
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9463
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9123
    const/4 v0, 0x0

    .line 9124
    .local v0, "consumeByPopup":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    if-eqz v3, :cond_0

    .line 9125
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    invoke-virtual {v3, p1}, Ldlx;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 9127
    :cond_0
    if-eqz v0, :cond_1

    .line 9140
    :goto_0
    return v1

    .line 9130
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    if-eqz v3, :cond_2

    .line 9131
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    .line 52237
    iget-object v3, v4, Ldle;->h:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 52238
    iget-object v3, v4, Ldle;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .line 52245
    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 52246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 52247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 52248
    new-array v7, v10, [I

    .line 52249
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52250
    aget v8, v7, v2

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_4

    aget v8, v7, v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    aget v5, v7, v1

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_4

    aget v5, v7, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_4

    move v3, v1

    .line 52238
    :goto_1
    if-nez v3, :cond_2

    .line 52239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 52240
    invoke-virtual {v4}, Ldle;->b()V

    .line 9133
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    if-eqz v3, :cond_3

    .line 9134
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 52255
    if-eqz p1, :cond_3

    .line 52258
    iget-boolean v4, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    if-nez v4, :cond_5

    .line 9137
    :cond_3
    :goto_2
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :cond_4
    move v3, v2

    .line 52254
    goto :goto_1

    .line 52261
    :cond_5
    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 52262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_3

    .line 52263
    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    .line 52269
    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    .line 52270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 52271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 52272
    new-array v7, v10, [I

    .line 52273
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52274
    aget v8, v7, v2

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_6

    aget v8, v7, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_6

    aget v5, v7, v1

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_6

    aget v5, v7, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v6, v4

    if-gez v4, :cond_6

    .line 52263
    :goto_3
    if-nez v1, :cond_3

    .line 52264
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a(Z)Z

    goto :goto_2

    :cond_6
    move v1, v2

    .line 52278
    goto :goto_3

    .line 9140
    :catch_0
    move-exception v1

    move v1, v2

    goto/16 :goto_0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 8025
    return-void
.end method

.method protected f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2702
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8201
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->finish()V

    .line 8203
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "intent_key_activity_anim"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 8204
    .local v0, "anim":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 8205
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8210
    .end local v0    # "anim":[I
    :cond_0
    :goto_0
    return-void

    .line 8207
    :catch_0
    move-exception v1

    .line 8208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 5786
    return-void
.end method

.method protected getPageArgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9777
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9767
    const-string/jumbo v0, "Page_Chat_Detail"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9773
    const-string/jumbo v0, "a2o5v.12290095"

    return-object v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 6699
    const/4 v0, 0x0

    return v0
.end method

.method protected final i()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 788
    const-string/jumbo v9, "im"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "onChatBackgroundThemeChanged, cid="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 789
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 788
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    if-nez v9, :cond_2

    .line 791
    :cond_0
    const-string/jumbo v9, "im"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "incorrect chat theme, cid="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 792
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 791
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget-object v4, v9, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->chatTheme:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;

    .line 797
    .local v4, "object":Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;
    iget v9, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleBackgroundColor:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 798
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleBackgroundColor:I

    invoke-virtual {v9, v10}, Ldvw;->b(I)V

    .line 799
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleIconColor:I

    invoke-virtual {v9, v10}, Ldvw;->c(I)V

    .line 800
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleTextColor:I

    invoke-virtual {v9, v10}, Ldvw;->d(I)V

    .line 801
    iget v9, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->titleIconColor:I

    invoke-direct {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(I)V

    .line 803
    iget-object v9, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->backgroundMobileMediaId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 804
    const-string/jumbo v9, "IMAGE"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 806
    .local v3, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    :try_start_0
    sget v9, Lctk$f;->iv_theme_image:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 808
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v9, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->backgroundMobileMediaId:Ljava/lang/String;

    invoke-static {v9}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 809
    .local v7, "url":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-interface {v3, v2, v7, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 810
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-wide v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bl:J

    invoke-direct {p0, v10, v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(J)V

    .line 821
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarBackgroundColor:I

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setBgColor(I)V

    .line 822
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarIconColor:I

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setIconColor(I)V

    .line 825
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecordButton()Landroid/widget/Button;

    move-result-object v8

    .line 826
    .local v8, "voiceBtn":Landroid/widget/Button;
    iget v9, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarAudioBtnTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 827
    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {p0, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 828
    .local v5, "rad":I
    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x1

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x2

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x3

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x4

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x5

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x6

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x7

    int-to-float v11, v5

    aput v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 830
    .local v6, "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 831
    .local v0, "bg":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarAudioBtnBackgroundColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 832
    invoke-static {v8, v0}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 833
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v9, :cond_4

    .line 834
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget v10, v4, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeObject;->toolbarAudioBtnBackgroundColor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setBgColor(Ljava/lang/Integer;)V

    .line 836
    :cond_4
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v9, :cond_1

    .line 837
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->U:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 10420
    iput-object v10, v9, Lcug;->j:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 838
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v9}, Lcug;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 811
    .end local v0    # "bg":Landroid/graphics/drawable/ShapeDrawable;
    .end local v5    # "rad":I
    .end local v6    # "rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    .end local v8    # "voiceBtn":Landroid/widget/Button;
    .restart local v3    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    :catch_0
    move-exception v1

    .line 812
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v9, "im"

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "onChatBackgroundThemeChanged transferToHttpUrl failed, error="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 813
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 812
    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final j()V
    .locals 4
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1379
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "return_location_image"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1380
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 1381
    .local v1, "centerMarker":Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;
    sget v2, Lctk$e;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 1382
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 1383
    const v2, -0x414ccccd    # -0.35f

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 1384
    const-string/jumbo v2, "location_center_marker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1386
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1387
    return-void
.end method

.method protected k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldvw;->b(Z)V

    .line 3431
    return-void
.end method

.method protected l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3434
    sget v2, Lctk$f;->stub_onebox_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3435
    .local v1, "boxViewContainer":Landroid/widget/FrameLayout;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;-><init>(Landroid/content/Context;)V

    .line 3436
    .local v0, "boxView":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v2, :cond_0

    .line 3438
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3439
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v2}, Ldvw;->b()V

    .line 3440
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v2}, Ldvw;->d()V

    .line 3442
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3443
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$104;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setOnOneBoxPullViewVisibleChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;)V

    .line 3463
    new-instance v2, Ldvw;

    new-instance v3, Ldvx;

    invoke-direct {v3, v0}, Ldvx;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    invoke-direct {v2, p0, v3}, Ldvw;-><init>(Landroid/app/Activity;Ldvu;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 3464
    return-void
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    .line 47168
    iget v0, v0, Ldql;->b:I

    .line 4335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 4505
    sget v1, Lctk$f;->unread_tip_button:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4506
    .local v0, "unreadTip":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 4507
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4508
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    .line 4510
    :cond_0
    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    .line 4511
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4512
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 4515
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->at:Lcom/alibaba/wukong/im/Message;

    .line 4516
    return-void
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 5268
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 850
    const-string/jumbo v10, "im"

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "ChatMsgActivity.onActivityResult, requestCode="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 851
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, ", resultCode="

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 852
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 850
    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static/range {p0 .. p1}, Lctm;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V

    .line 854
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_1

    .line 855
    const/16 v10, 0x8

    move/from16 v0, p1

    if-ne v0, v10, :cond_5

    .line 856
    const-string/jumbo v10, "send_origin_picture"

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 857
    .local v6, "sendOrigin":Z
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 858
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 859
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 860
    .local v1, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget v10, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 861
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 11400
    if-eqz v10, :cond_0

    .line 11403
    iget-object v11, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 11404
    sget v10, Lctk$i;->dt_im_video_url_null:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcms;->a(Ljava/lang/String;)V

    .line 870
    .end local v1    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_0
    :goto_0
    const-string/jumbo v10, "im"

    const-string/jumbo v11, "ChatMsgActivity"

    const-string/jumbo v12, "onResult:ACTION_CHOOSE_FROM_ALBUM"

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .end local v3    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .end local v6    # "sendOrigin":Z
    :cond_1
    :goto_1
    return-void

    .line 11408
    .restart local v1    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .restart local v3    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .restart local v6    # "sendOrigin":Z
    :cond_2
    const-class v11, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v11

    new-instance v12, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;

    invoke-direct {v12, p0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$140;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    invoke-interface {v11, v12}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 863
    :cond_3
    invoke-direct {p0, v6, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(ZLjava/util/List;)V

    goto :goto_0

    .line 866
    .end local v1    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "choose_picture_ids"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 868
    .local v9, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v9, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 871
    .end local v3    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .end local v6    # "sendOrigin":Z
    .end local v9    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/16 v10, 0x9

    move/from16 v0, p1

    if-ne v0, v10, :cond_8

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "key_send_custom_msg"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 873
    .local v5, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    if-eqz v5, :cond_6

    .line 874
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .line 875
    .local v4, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v4, v13}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    goto :goto_2

    .line 878
    .end local v4    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "file_space"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 879
    .local v7, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v7, :cond_1

    .line 880
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v10}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v8

    .line 881
    .local v8, "to":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 882
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 883
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "to"

    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v10

    const-string/jumbo v11, "space_chatbutton_collection_trans"

    invoke-interface {v10, v11, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 889
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 890
    .restart local v4    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/16 v10, 0x1f4

    iput v10, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 891
    iput-object v7, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 892
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v4, v12}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    goto/16 :goto_1

    .line 894
    .end local v4    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v5    # "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    .end local v7    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v8    # "to":Ljava/lang/String;
    :cond_8
    const/16 v10, 0xa

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 895
    sget-object v10, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v10

    new-instance v11, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;

    move-object/from16 v0, p3

    invoke-direct {v11, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$95;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Landroid/content/Intent;)V

    invoke-interface {v10, v11}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4345
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onAttachedToWindow()V

    .line 4346
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "attach_window_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;

    .line 4347
    .local v0, "action":Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;
    if-eqz v0, :cond_0

    .line 4348
    invoke-interface {v0, p0}, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;->doAction(Landroid/app/Activity;)V

    .line 4349
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "attach_window_action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4351
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 8175
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    invoke-virtual {v0}, Ldlx;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8197
    :cond_0
    :goto_0
    return-void

    .line 8179
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8182
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 52065
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    .line 8182
    if-nez v0, :cond_0

    .line 8185
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    .line 52066
    iget-object v1, v0, Ldru;->c:Ldrt$b;

    invoke-interface {v1}, Ldrt$b;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 52067
    iget-boolean v1, v0, Ldru;->e:Z

    if-eqz v1, :cond_7

    .line 52068
    invoke-virtual {v0}, Ldru;->d()V

    .line 52069
    const/4 v0, 0x1

    .line 8185
    :goto_1
    if-nez v0, :cond_0

    .line 8188
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8192
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8196
    :cond_6
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onBackPressed()V

    goto :goto_0

    .line 52072
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 2747
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2748
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_is_burn_chat"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    .line 2749
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2750
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2751
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v5, "to_chatmsg_activity"

    invoke-interface {v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v5, "chat_activity_onCreate"

    invoke-interface {v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2757
    sget v2, Lctk$i;->network_error:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 2760
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->H:Ljava/util/Map;

    .line 2761
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->I:Ljava/util/Map;

    .line 2763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    .line 2764
    new-instance v2, Ldop;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    invoke-direct {v2, p0, v6, v7}, Ldop;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aB:Ldop;

    .line 2765
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aD:J

    .line 2766
    invoke-static {}, Lcms;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae:Z

    .line 23545
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cf:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 23548
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 23549
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23550
    const-string/jumbo v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23551
    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 23552
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$89;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$89;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cf:Landroid/content/BroadcastReceiver;

    .line 23563
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24013
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cg:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 24014
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$98;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cg:Landroid/content/BroadcastReceiver;

    .line 24097
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cg:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "intent_action_show_markdown_response"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 24892
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ch:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_3

    .line 24893
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ch:Landroid/content/BroadcastReceiver;

    .line 24938
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ch:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "intent_action_show_comment_response"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 24958
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ci:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_4

    .line 24959
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ci:Landroid/content/BroadcastReceiver;

    .line 24980
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ci:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "action_auto_translate_change"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 25102
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cj:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_5

    .line 25105
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$99;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$99;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cj:Landroid/content/BroadcastReceiver;

    .line 25116
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "intent_action_resend_audio_success"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25117
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2774
    :cond_5
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cC:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v2, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 2776
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$92;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v6, Lcjo$a;

    invoke-interface {v2, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcjo$a;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG:Lcjo$a;

    .line 2819
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG:Lcjo$a;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 2822
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bF:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 2824
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bE:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2826
    const-class v2, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bG:Lcom/alibaba/wukong/im/GroupNickListener;

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/GroupNickService;->addGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 2828
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bR:Lfzk;

    invoke-virtual {v2, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Lfzk;)V

    .line 2830
    sget v2, Lctk$g;->layout_new_chat:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->setContentView(I)V

    .line 2832
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v2, :cond_6

    .line 2833
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    if-eqz v2, :cond_d

    .line 2834
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->showToolbar()V

    .line 2840
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/content/Intent;)V

    .line 25521
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 25522
    const-string/jumbo v5, "finish_chat"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25523
    const-string/jumbo v5, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25524
    const-string/jumbo v5, "com.workapp.ding.settings"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25525
    const-string/jumbo v5, "com.workapp.conversation.FORWARD"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25526
    const-string/jumbo v5, "com.workapp.conversation.title.CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25527
    const-string/jumbo v5, "com.workapp.msg.at"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25528
    const-string/jumbo v5, "com.workapp.CONVERSATION_ENTERPRISE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25529
    const-string/jumbo v5, "com.workapp.msg.update"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25530
    const-string/jumbo v5, "com.workapp.msg.sender.update"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25531
    const-string/jumbo v5, "com.workapp.msg.send"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25532
    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25533
    const-string/jumbo v5, "com.workapp.action.poi_info"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25534
    const-string/jumbo v5, "com.workapp.org.sync"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25535
    const-string/jumbo v5, "com.workapp.org_employee_change"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25536
    const-string/jumbo v5, "action_decrypt_msg_in_conversation"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25537
    const-string/jumbo v5, "intent_key_back_to_chat_msg_activity_show_keyboard"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25538
    const-string/jumbo v5, "broadcast_action_send_red_bomb_success"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25539
    sget-object v5, Lhcp;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25540
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25542
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ac:Ldq;

    .line 25543
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ac:Ldq;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 25544
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ac:Ldq;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 25546
    const-class v2, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageService;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 25547
    const-class v2, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageService;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ce:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/MessageService;->addMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 26074
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->az:Landroid/net/wifi/WifiManager;

    .line 26079
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->az:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aA:Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26646
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v5, Lble;->a:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 2847
    const-string/jumbo v2, "chat_load"

    const-string/jumbo v5, "chat_activity_onCreate"

    invoke-interface {v1, v2, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    new-instance v2, Ldlx;

    invoke-direct {v2, p0}, Ldlx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    .line 2850
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$93;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$93;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 27099
    iput-object v5, v2, Ldlx;->a:Ldlx$b;

    .line 2859
    new-instance v2, Ldhm;

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bk:Z

    invoke-direct {v2, p0, v5}, Ldhm;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM:Ldhm;

    .line 2861
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax()V

    .line 2862
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->updateSystemUiVisibility()V

    .line 2865
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al()V

    .line 27943
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27944
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v5, "tpffmpeg"

    invoke-virtual {v2, v5, v8}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 27945
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v5, "MediaEncode"

    invoke-virtual {v2, v5, v8}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 27947
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v5, "tbffmpeg"

    invoke-virtual {v2, v5, v8}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 27948
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v5, "TaoLive"

    invoke-virtual {v2, v5, v8}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 27949
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v5, "artc_engine"

    invoke-virtual {v2, v5, v8}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 27951
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v2

    invoke-virtual {v2}, Lgzo;->d()Lgrm;

    move-result-object v2

    invoke-interface {v2}, Lgrm;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27952
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v5, "doclens"

    invoke-virtual {v2, v5, v8}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 2869
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2870
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->n:I

    .line 2872
    :cond_8
    invoke-static {}, Lcji;->a()V

    .line 2874
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cJ:Z

    if-eqz v2, :cond_c

    .line 28569
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v2, :cond_9

    .line 28570
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTopDividerVisible(Z)V

    .line 28573
    :cond_9
    sget v2, Lctk$f;->im_quick_reply_bar_view:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cG:Landroid/support/v7/widget/RecyclerView;

    .line 28574
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 28575
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 28576
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cG:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 28577
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cG:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 28579
    sget v2, Lctk$f;->im_quick_reply_bar_divider:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 28580
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cG:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 28581
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28656
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28658
    new-instance v5, Lcws$a;

    invoke-direct {v5}, Lcws$a;-><init>()V

    .line 28659
    sget v6, Lctk$i;->icon_quickreply_fill:I

    iput v6, v5, Lcws$a;->a:I

    .line 28660
    const-string/jumbo v6, "#16C577"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcws$a;->e:I

    .line 28661
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_quick_reply_item_text:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcws$a;->b:Ljava/lang/String;

    .line 28662
    const/4 v6, 0x3

    iput v6, v5, Lcws$a;->c:I

    .line 28663
    const-string/jumbo v6, "customer_massage_Shortcut_click"

    iput-object v6, v5, Lcws$a;->f:Ljava/lang/String;

    .line 28664
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28666
    new-instance v5, Lcws$a;

    invoke-direct {v5}, Lcws$a;-><init>()V

    .line 28667
    sget v6, Lctk$i;->icon_coupon_fill:I

    iput v6, v5, Lcws$a;->a:I

    .line 28668
    const-string/jumbo v6, "#33B2ff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcws$a;->e:I

    .line 28669
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_cspace_coupon:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcws$a;->b:Ljava/lang/String;

    .line 28670
    iput v9, v5, Lcws$a;->c:I

    .line 28671
    const-string/jumbo v6, "customer_massage_coupon_click"

    iput-object v6, v5, Lcws$a;->f:Ljava/lang/String;

    .line 28672
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28674
    new-instance v5, Lcws$a;

    invoke-direct {v5}, Lcws$a;-><init>()V

    .line 28675
    sget v6, Lctk$i;->icon_shop_fill:I

    iput v6, v5, Lcws$a;->a:I

    .line 28676
    const-string/jumbo v6, "#FEB110"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcws$a;->e:I

    .line 28677
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_cspace_shop_item:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcws$a;->b:Ljava/lang/String;

    .line 28678
    iput v3, v5, Lcws$a;->c:I

    .line 28679
    const-string/jumbo v6, "customer_massage_commodity_click"

    iput-object v6, v5, Lcws$a;->f:Ljava/lang/String;

    .line 28680
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28682
    new-instance v5, Lcws$a;

    invoke-direct {v5}, Lcws$a;-><init>()V

    .line 28683
    sget v6, Lctk$i;->icon_content_fill:I

    iput v6, v5, Lcws$a;->a:I

    .line 28684
    const-string/jumbo v6, "#17C677"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcws$a;->e:I

    .line 28685
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$i;->dt_im_cspace_content_item:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcws$a;->b:Ljava/lang/String;

    .line 28686
    iput v4, v5, Lcws$a;->c:I

    .line 28687
    const-string/jumbo v6, "customer_massage_contentcenter_click"

    iput-object v6, v5, Lcws$a;->f:Ljava/lang/String;

    .line 28688
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28584
    new-instance v5, Ldsb;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v5, v6, v7}, Ldsb;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    .line 28585
    new-instance v6, Lcws;

    invoke-direct {v6, p0, v5}, Lcws;-><init>(Landroid/content/Context;Ldsb;)V

    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    .line 28586
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    .line 29146
    if-eqz v2, :cond_a

    .line 29149
    iget-object v7, v6, Lcws;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 29150
    iget-object v7, v6, Lcws;->a:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29151
    invoke-virtual {v6}, Lcws;->notifyDataSetChanged()V

    .line 28587
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cG:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 28588
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cG:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcws$d;

    invoke-direct {v6}, Lcws$d;-><init>()V

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 29626
    new-instance v2, Leci;

    invoke-direct {v2, p0, v5}, Leci;-><init>(Landroid/app/Activity;Ldsb;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    .line 29627
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$54;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$54;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 30198
    iput-object v6, v2, Leci;->a:Leci$b;

    .line 29642
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    instance-of v2, v2, Ldfe;

    if-eqz v2, :cond_b

    .line 29643
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    check-cast v2, Ldfe;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$55;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$55;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 30517
    iput-object v6, v2, Ldfe;->d:Ldfe$a;

    .line 31066
    :cond_b
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v6, v5, Ldsb;->f:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    .line 31067
    if-nez v2, :cond_e

    move v2, v3

    .line 28594
    :goto_3
    if-eqz v2, :cond_f

    .line 28595
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    invoke-virtual {v2}, Lcws;->a()V

    .line 28596
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    invoke-virtual {v2, v4}, Leci;->a(Z)V

    .line 28613
    :goto_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$53;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$53;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 32155
    iput-object v3, v2, Lcws;->c:Lcws$c;

    .line 2878
    :cond_c
    new-instance v2, Ldeq;

    invoke-direct {v2, p0}, Ldeq;-><init>(Ldep$b;)V

    .line 2879
    return-void

    .line 23564
    :catch_0
    move-exception v2

    .line 23565
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2836
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->hideToolbar()V

    goto/16 :goto_1

    .line 26080
    :catch_1
    move-exception v2

    .line 26081
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 31070
    :cond_e
    invoke-virtual {v5, v2}, Ldsb;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    move v2, v4

    .line 31071
    goto :goto_3

    .line 28598
    :cond_f
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 28599
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$52;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v6, Ldsb$a;

    invoke-interface {v2, v3, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldsb$a;

    .line 31138
    new-instance v3, Ldsb$2;

    invoke-direct {v3, v5, v4, v2}, Ldsb$2;-><init>(Ldsb;Lcom/alibaba/wukong/im/Conversation;Ldsb$a;)V

    .line 31164
    iget-object v2, v5, Ldsb;->g:Landroid/content/Context;

    if-eqz v2, :cond_10

    iget-object v2, v5, Ldsb;->g:Landroid/content/Context;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/IMBaseActivity;

    if-eqz v2, :cond_10

    .line 31165
    const-class v6, Lcma;

    iget-object v2, v5, Ldsb;->g:Landroid/content/Context;

    check-cast v2, Lcom/alibaba/android/dingtalkim/IMBaseActivity;

    invoke-static {v3, v6, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 31168
    :goto_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_4

    :cond_10
    move-object v2, v3

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8770
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    .line 52236
    iget-boolean v5, v5, Ldru;->e:Z

    .line 8770
    if-eqz v5, :cond_0

    .line 8771
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    .line 8818
    :goto_0
    return v5

    .line 8774
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldjl;->B(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8775
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    goto :goto_0

    .line 8778
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8779
    invoke-static {v5}, Lebf;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 8780
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 8781
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x3

    const-string/jumbo v6, ""

    invoke-interface {p1, v10, v5, v11, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 8782
    .local v3, "menuSetting":Landroid/view/MenuItem;
    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 8783
    if-eqz v0, :cond_4

    const-string/jumbo v5, "announceUnread"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8784
    sget v5, Lctk$i;->icon_group:I

    invoke-direct {p0, v3, v5, v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/MenuItem;IZ)V

    .line 8798
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "menuSetting":Landroid/view/MenuItem;
    :cond_2
    :goto_1
    const/16 v5, 0x9

    const-string/jumbo v6, ""

    invoke-interface {p1, v10, v5, v11, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 8799
    .local v1, "goUrlMenu":Landroid/view/MenuItem;
    sget v5, Lctk$e;->ic_chat_menu_go_url:I

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 8800
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 8802
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_3

    .line 8803
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    cmp-long v5, v6, v8

    if-nez v5, :cond_9

    .line 8804
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v6, "url"

    invoke-interface {v5, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 8805
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 8818
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    goto :goto_0

    .line 8786
    .end local v1    # "goUrlMenu":Landroid/view/MenuItem;
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "menuSetting":Landroid/view/MenuItem;
    :cond_4
    sget v2, Lctk$i;->icon_signal:I

    .line 8787
    .local v2, "iconStr":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    if-ne v5, v12, :cond_6

    .line 8788
    sget v2, Lctk$i;->icon_group:I

    .line 8794
    :cond_5
    :goto_3
    invoke-direct {p0, v3, v2, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/MenuItem;IZ)V

    goto :goto_1

    .line 8789
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8790
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 8791
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x5

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 8792
    :cond_7
    sget v2, Lctk$i;->icon_setting:I

    goto :goto_3

    .line 8807
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "iconStr":I
    .end local v3    # "menuSetting":Landroid/view/MenuItem;
    .restart local v1    # "goUrlMenu":Landroid/view/MenuItem;
    :cond_8
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 8810
    :cond_9
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 8811
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8812
    sget v5, Lctk$i;->act_title_conference:I

    invoke-interface {p1, v10, v11, v10, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 8813
    .local v4, "menuTel":Landroid/view/MenuItem;
    sget v5, Lctk$i;->icon_phone:I

    invoke-direct {p0, v4, v5, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/view/MenuItem;IZ)V

    .line 8814
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 8214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 8215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8218
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C()V

    .line 8219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    if-eqz v0, :cond_1

    .line 8220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    .line 52073
    invoke-virtual {v0}, Ldle;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52076
    invoke-virtual {v0}, Ldle;->b()V

    .line 52077
    iput-boolean v7, v0, Ldle;->e:Z

    .line 52078
    iget-object v1, v0, Ldle;->a:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 52079
    iget-object v0, v0, Ldle;->m:Ldlf;

    .line 52081
    iget-boolean v1, v0, Ldlf;->f:Z

    if-eqz v1, :cond_1

    .line 52082
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    iget-object v0, v0, Ldlf;->g:Lcmt$a;

    invoke-virtual {v1, v0}, Lcmt;->b(Lcmt$a;)V

    .line 8222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    if-eqz v0, :cond_3

    .line 8223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    .line 52085
    iget-boolean v1, v0, Ldie;->o:Z

    if-eqz v1, :cond_2

    .line 52086
    iget-object v1, v0, Ldie;->l:Ldib$a;

    invoke-interface {v1}, Ldib$a;->b()V

    .line 52087
    iget-object v1, v0, Ldie;->l:Ldib$a;

    invoke-interface {v1}, Ldib$a;->c()V

    .line 52088
    iget-object v1, v0, Ldie;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 52090
    :cond_2
    iget-object v0, v0, Ldie;->l:Ldib$a;

    invoke-interface {v0}, Ldib$a;->e()V

    .line 8225
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    if-eqz v0, :cond_4

    .line 8226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    invoke-virtual {v0}, Ldmg;->a()V

    .line 8228
    :cond_4
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 8229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aZ()V

    .line 52092
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L:Ldnf;

    if-eqz v0, :cond_5

    .line 52093
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L:Ldnf;

    invoke-virtual {v0}, Ldnf;->a()V

    .line 52095
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    if-eqz v0, :cond_6

    .line 52096
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->N:Ldne;

    invoke-virtual {v0}, Ldne;->a()V

    .line 52098
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->P:Ldxc;

    if-eqz v0, :cond_7

    .line 52099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->P:Ldxc;

    invoke-virtual {v0}, Ldxc;->a()V

    .line 8231
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    if-eqz v0, :cond_8

    .line 8232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    invoke-virtual {v0}, Ldql;->b()V

    .line 8233
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aI:Ldql;

    .line 8235
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v0, :cond_9

    .line 8236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    .line 52102
    iput-object v6, v0, Lcug;->d:Landroid/view/View$OnClickListener;

    .line 8237
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    .line 8240
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    if-eqz v0, :cond_a

    .line 8241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    .line 52104
    iput-object v6, v0, Ldlx;->a:Ldlx$b;

    .line 8242
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL:Ldlx;

    .line 8245
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_b

    .line 8246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTextChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;)V

    .line 8249
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_f

    .line 8250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0}, Ldvw;->b()V

    .line 8251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0}, Ldvw;->d()V

    .line 8252
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    .line 52106
    iget-object v0, v3, Ldvw;->f:Ldvs;

    if-eqz v0, :cond_e

    .line 52107
    iget-object v4, v3, Ldvw;->f:Ldvs;

    .line 52112
    iget-object v0, v4, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v1, v2

    .line 52113
    :goto_0
    if-ge v1, v5, :cond_d

    .line 52114
    iget-object v0, v4, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwb;

    .line 52115
    if-eqz v0, :cond_c

    .line 52116
    invoke-virtual {v0}, Ldwb;->c()V

    .line 52113
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52119
    :cond_d
    iget-object v0, v4, Ldvs;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 52110
    :cond_e
    iget-object v0, v3, Ldvw;->a:Ldvu;

    invoke-interface {v0, v6}, Ldvu;->setOnOneBoxPullViewVisibleChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;)V

    .line 8255
    :cond_f
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ldjz;->a(I)V

    .line 8257
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bF:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 8259
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bR:Lfzk;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Lfzk;)V

    .line 8261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb:Ljava/lang/Runnable;

    if-eqz v0, :cond_10

    .line 8262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8264
    :cond_10
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be:Landroid/os/Handler;

    .line 8265
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bb:Ljava/lang/Runnable;

    .line 8266
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    .line 8268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    if-eqz v0, :cond_11

    .line 8269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 52121
    iput-object v6, v0, Ldiz;->b:Ldiz$a;

    .line 8270
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 52123
    :cond_11
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 8276
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_voice_read_fix"

    .line 52125
    invoke-virtual {v0, v1, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 8276
    if-eqz v0, :cond_16

    .line 8277
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v3

    .line 52126
    if-eqz p0, :cond_17

    .line 52129
    iget-boolean v0, v3, Lctj;->g:Z

    if-eqz v0, :cond_14

    .line 52130
    iget-object v0, v3, Lctj;->f:Ljava/util/LinkedList;

    if-nez v0, :cond_12

    .line 52131
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, v3, Lctj;->e:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v3, Lctj;->f:Ljava/util/LinkedList;

    .line 52134
    :cond_12
    iget-object v0, v3, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_17

    .line 52135
    iget-object v0, v3, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 52136
    instance-of v4, v0, Lctj$b;

    if-eqz v4, :cond_13

    .line 52137
    check-cast v0, Lctj$b;

    invoke-interface {v0}, Lctj$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p0, v0, :cond_13

    .line 52138
    iget-object v0, v3, Lctj;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 52134
    :cond_13
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 52143
    :cond_14
    iget-object v0, v3, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_17

    .line 52144
    iget-object v0, v3, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctj$a;

    .line 52145
    instance-of v4, v0, Lctj$b;

    if-eqz v4, :cond_15

    .line 52146
    check-cast v0, Lctj$b;

    invoke-interface {v0}, Lctj$b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p0, v0, :cond_15

    .line 52147
    iget-object v0, v3, Lctj;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 52143
    :cond_15
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 8279
    :cond_16
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lctj;->a(Ljava/lang/Class;)V

    .line 8281
    :cond_17
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 8283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 8284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8286
    :cond_18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    .line 8287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8289
    :cond_19
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->co:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_1a

    .line 8292
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 8295
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ce:Lcom/alibaba/wukong/im/MessageChangeListener;

    if-eqz v0, :cond_1b

    .line 8296
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ce:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 8299
    :cond_1b
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldjc;->b(Ljava/lang/String;)V

    .line 8300
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bE:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 8301
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bG:Lcom/alibaba/wukong/im/GroupNickListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/GroupNickService;->removeGroupNickListener(Lcom/alibaba/wukong/im/GroupNickListener;)V

    .line 8302
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    if-eqz v0, :cond_1c

    .line 8303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->e()V

    .line 8304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->f()V

    .line 8306
    :cond_1c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cc:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ac:Ldq;

    if-eqz v0, :cond_1d

    .line 8307
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ac:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cc:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 8310
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    if-eqz v0, :cond_1e

    .line 8311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    invoke-virtual {v0}, Ldru;->b()V

    .line 8312
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    .line 8315
    :cond_1e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG:Lcjo$a;

    if-eqz v0, :cond_1f

    .line 8316
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 8317
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aG:Lcjo$a;

    .line 8320
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    .line 8321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8324
    :cond_20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_21

    .line 8325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->b()V

    .line 8326
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 8329
    :cond_21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    if-eqz v0, :cond_22

    .line 8330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 8331
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    .line 8334
    :cond_22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    if-eqz v0, :cond_23

    .line 8335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    .line 52153
    invoke-virtual {v0}, Ldjx;->b()V

    .line 8336
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    .line 8339
    :cond_23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    if-eqz v0, :cond_24

    .line 8340
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    invoke-virtual {v0}, Ldrw;->b()V

    .line 8341
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aK:Ldrw;

    .line 8349
    :cond_24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    if-eqz v0, :cond_25

    .line 8350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a()V

    .line 8351
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    .line 8354
    :cond_25
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM:Ldhm;

    if-eqz v0, :cond_26

    .line 8355
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM:Ldhm;

    .line 52155
    iput-object v6, v0, Ldhm;->a:Ldhm$a;

    .line 8358
    :cond_26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    if-eqz v0, :cond_27

    .line 8359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    invoke-virtual {v0}, Ldmt;->d()V

    .line 8362
    :cond_27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    if-eqz v0, :cond_28

    .line 8363
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .line 52157
    iput-wide v8, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->b:J

    .line 52158
    iput v2, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->d:I

    .line 52159
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 52160
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52162
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0}, Layv;->b()V

    .line 8366
    :cond_28
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lebl;->a(I)V

    .line 8367
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lebn;->a(I)V

    .line 8369
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aw()V

    .line 8370
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->av()V

    .line 52164
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cf:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_29

    .line 52165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cf:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8372
    :cond_29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq()V

    .line 8373
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->at()V

    .line 8374
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar()V

    .line 8377
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cC:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 8379
    invoke-static {}, Lczx;->b()V

    .line 8381
    invoke-static {}, Ldes;->a()Ldes;

    move-result-object v0

    .line 52168
    iget-object v0, v0, Ldes;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8382
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    .line 52170
    iput-object v6, v0, Lder;->a:Lcom/alibaba/wukong/im/MessageListener;

    .line 8384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    if-eqz v0, :cond_2b

    .line 8385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    .line 52172
    iget-object v1, v0, Ldfk;->e:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2a

    .line 52173
    iget-object v1, v0, Ldfk;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v3, v0, Ldfk;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 52174
    iput-object v6, v0, Ldfk;->e:Landroid/content/BroadcastReceiver;

    .line 8386
    :cond_2a
    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bs:Ldfk;

    .line 8389
    :cond_2b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    if-eqz v0, :cond_2d

    .line 8390
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    .line 52177
    iget-object v1, v0, Leci;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2c

    .line 52178
    iget-object v1, v0, Leci;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 52181
    :cond_2c
    iget-object v1, v0, Leci;->c:Landroid/os/Handler;

    if-eqz v1, :cond_2d

    .line 52182
    iget-object v0, v0, Leci;->c:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8393
    :cond_2d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    if-eqz v0, :cond_2e

    .line 8394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cH:Lcws;

    .line 52185
    iget-object v1, v0, Lcws;->b:Landroid/os/Handler;

    if-eqz v1, :cond_2e

    .line 52186
    iget-object v0, v0, Lcws;->b:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8397
    :cond_2e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bt:Ldep$a;

    if-eqz v0, :cond_2f

    .line 8398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bt:Ldep$a;

    invoke-interface {v0}, Ldep$a;->i()V

    .line 8401
    :cond_2f
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cJ:Z

    .line 8403
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b()Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    .line 52189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 52190
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    move-result-object v1

    .line 52202
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 52192
    sget-object v4, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    if-eq v3, v4, :cond_30

    .line 52193
    sget-object v3, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->init:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 52203
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 52204
    :cond_30
    iput v2, v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->c:I

    .line 52205
    iput v2, v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->b:I

    .line 52206
    iput-object v6, v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->e:Lcom/alibaba/wukong/im/Message;

    .line 52198
    iput-wide v8, v0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b:J

    .line 52199
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V

    .line 52207
    :cond_31
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v0

    .line 52208
    iget-object v1, v0, Ldiy;->a:Ldix;

    if-ne v1, p0, :cond_32

    .line 52209
    iput-object v6, v0, Ldiy;->a:Ldix;

    .line 8406
    :cond_32
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onDestroy()V

    .line 8407
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 7369
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 7370
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7388
    :cond_0
    :goto_0
    return v0

    .line 7373
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7374
    :cond_2
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eqz v1, :cond_5

    .line 7375
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7376
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    goto :goto_0

    .line 7381
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b()Z

    goto :goto_0

    .line 7385
    :cond_4
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 7388
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7631
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 7634
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v1

    invoke-virtual {v1}, Lctj;->c()V

    .line 7637
    if-eqz p1, :cond_0

    .line 7638
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->setIntent(Landroid/content/Intent;)V

    .line 51766
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v1, :cond_1

    .line 51767
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v1}, Lcug;->notifyDataSetChanged()V

    .line 7641
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Landroid/content/Intent;)V

    .line 7643
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7644
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "attach_window_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;

    .line 7645
    .local v0, "action":Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;
    if-eqz v0, :cond_2

    .line 7646
    invoke-interface {v0, p0}, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;->doAction(Landroid/app/Activity;)V

    .line 7649
    .end local v0    # "action":Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ax()V

    .line 7650
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al()V

    .line 7651
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 8945
    const/4 v7, 0x1

    .line 8946
    .local v7, "callSuper":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 9027
    :cond_0
    :goto_0
    if-eqz v7, :cond_9

    .line 9028
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 9030
    :goto_1
    return v0

    .line 8949
    :sswitch_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->be()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8950
    const/4 v7, 0x0

    .line 8951
    goto :goto_0

    .line 8953
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    goto :goto_0

    .line 8956
    :sswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aW()V

    .line 8957
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 8958
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 8959
    .local v8, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 8960
    const-string/jumbo v0, "isretail"

    const-string/jumbo v1, "true"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8962
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 8963
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "mtm"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8969
    :goto_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_setting_set_click"

    invoke-interface {v0, v1, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 8970
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v9

    .line 8972
    .local v9, "scheme":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ldjl;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8973
    const-string/jumbo v9, "https://qr.dingtalk.com/fileshelper/settings.html"

    .line 8977
    :cond_3
    :goto_3
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$48;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$48;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-interface {v0, v9, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 8966
    .end local v9    # "scheme":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "oto"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 8974
    .restart local v9    # "scheme":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 8975
    :cond_6
    const-string/jumbo v9, "https://qr.dingtalk.com/conversation/public_settings.html"

    goto :goto_3

    .line 8998
    .end local v8    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "scheme":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_sunglass_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 9000
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9001
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    if-eqz v0, :cond_7

    .line 9002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 9003
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    .line 9005
    :cond_7
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aE:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$49;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$49;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aJ:Ldbw;

    goto/16 :goto_0

    .line 9018
    :sswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_8

    .line 9019
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_1

    .line 9020
    :cond_8
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    .line 9021
    .local v10, "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v10, p0, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 9024
    .end local v10    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    :sswitch_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9030
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 8946
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 5234
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onPause()V

    .line 5235
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bA:Z

    .line 5236
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 5237
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5238
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    .line 5240
    :cond_1
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0}, Ldjc;->b()V

    .line 5241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    if-eqz v0, :cond_2

    .line 5242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->e()V

    .line 5244
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_3

    .line 5245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->b()V

    .line 5247
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v0, :cond_4

    .line 5248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v0}, Ldvw;->h()V

    .line 5250
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cm:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_5

    .line 5252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 5254
    :cond_5
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v0

    invoke-virtual {v0}, Lcrc;->b()V

    .line 5255
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 844
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 845
    invoke-static {p0, p1, p3}, Lctm;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I[I)V

    .line 846
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 5107
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onResume()V

    .line 5108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bA:Z

    .line 5109
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 5110
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "chat_load"

    const-string/jumbo v2, "chat_activity_onResume"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 5113
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v1

    invoke-virtual {v1}, Ldjc;->a()V

    .line 5114
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5115
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldjc;->a(Ljava/lang/String;)V

    .line 5119
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    invoke-virtual {v1}, Ldqq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5121
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$133;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$133;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 5155
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 5121
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 5157
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aY:J

    .line 5160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "end :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5161
    const-string/jumbo v1, "chat_load"

    const-string/jumbo v2, "chat_activity_onResume"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 5164
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v1

    invoke-virtual {v1}, Ldjz;->b()V

    .line 5165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v1, :cond_2

    .line 5166
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v1}, Lcug;->notifyDataSetChanged()V

    .line 5169
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    if-eqz v1, :cond_3

    .line 5170
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    invoke-virtual {v1}, Ldmt;->c()V

    .line 5172
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    if-eqz v1, :cond_4

    .line 5173
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k:Ldvw;

    invoke-virtual {v1}, Ldvw;->i()V

    .line 5176
    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cK:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cJ:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    if-eqz v1, :cond_5

    .line 5178
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cK:Z

    .line 5179
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cI:Leci;

    invoke-virtual {v1, v5}, Leci;->a(Z)V

    .line 5182
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->af:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5183
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7655
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onStop()V

    .line 7656
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bf:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    if-eq v0, v1, :cond_0

    .line 7657
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    .line 7658
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bf:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 7661
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    if-eqz v0, :cond_1

    .line 7662
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Q:Ldmt;

    .line 51770
    invoke-virtual {v0}, Ldmt;->f()V

    .line 7664
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 5552
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onWindowFocusChanged(Z)V

    .line 5553
    return-void
.end method

.method public final p()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 5272
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 5273
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o()Z

    move-result v3

    sget-object v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a:Ljava/lang/String;

    const/16 v6, 0x8

    .line 5274
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v4

    :goto_1
    new-instance v11, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;-><init>()V

    move-object v1, p0

    move v8, v4

    move v9, v4

    move v10, v4

    .line 5272
    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ZZZLjava/lang/String;IZZZZLcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;)V

    .line 5275
    return-void

    :cond_0
    move v2, v1

    .line 5272
    goto :goto_0

    :cond_1
    move v7, v1

    .line 5274
    goto :goto_1
.end method

.method public final q()V
    .locals 2
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA",
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5279
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Ldsf;->a(Landroid/app/Activity;I)V

    .line 5280
    return-void
.end method

.method protected final r()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5387
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_filepicker"

    .line 5388
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5392
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    .line 5393
    .local v0, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->r()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5394
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Ldep$a;

    .line 52440
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bt:Ldep$a;

    .line 391
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 7781
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->supportInvalidateOptionsMenu()V

    .line 7782
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a()V

    .line 7783
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM:Ldhm;

    if-eqz v0, :cond_0

    .line 7784
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aM:Ldhm;

    invoke-virtual {v0}, Ldhm;->a()V

    .line 7786
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 5474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    .line 5476
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    .line 50820
    iget-boolean v0, v0, Ldqq;->f:Z

    .line 5476
    if-eqz v0, :cond_1

    .line 5478
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c()V

    .line 5479
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZZ)V

    .line 5518
    :cond_0
    :goto_0
    return-void

    .line 5481
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$141;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$141;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    const-string/jumbo v2, "refresh"

    invoke-virtual {v0, v1, v3, v2}, Ldqq;->a(Ldqq$d;ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public u()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 5556
    .line 50821
    sget v1, Lctk$f;->input_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 50822
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 51214
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    if-nez v2, :cond_0

    .line 51215
    new-instance v2, Lcjg;

    invoke-direct {v2}, Lcjg;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i:Lcjg;

    .line 50823
    :cond_0
    new-instance v0, Ldle;

    sget v1, Lctk$f;->rlv_fast_send:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    sget v1, Lctk$f;->rl_fast_send:I

    .line 50824
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v4

    sget v1, Lctk$f;->iv_fast_send_arrow:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$9;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldle;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Ldle$a;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    .line 50832
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bg:Ldle;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 51218
    iput-object v2, v1, Ldle;->d:Ldiz;

    .line 50833
    sget v1, Lctk$f;->layout_chat_mainborad:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj:Landroid/widget/RelativeLayout;

    .line 50834
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->co:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 50835
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->co:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 50836
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50837
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aj:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 50838
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 50839
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 50843
    :cond_1
    const-string/jumbo v1, "pref_keyboard_height"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(I)V

    .line 50845
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G()V

    .line 50846
    new-instance v1, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .line 50848
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50849
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditContent(Ljava/lang/String;)V

    .line 50852
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x18

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    .line 50853
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 50857
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTextChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;)V

    .line 50957
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50996
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionStoreClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;)V

    .line 51004
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionSettingClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;)V

    .line 51011
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$15;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setCustomEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;)V

    .line 51018
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setRecentInnerEmotionSynDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;)V

    .line 51032
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$17;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionDeleteClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;)V

    .line 51041
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 51106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Ljava/util/List;)V

    .line 51108
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bH:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionFooterViewVisibilityListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;)V

    .line 51110
    sget v1, Lctk$f;->voice_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ah:Landroid/widget/TextView;

    .line 51111
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ah:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51112
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceSwitcherButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51139
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 51140
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 51142
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR()V

    .line 51144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$20;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$20;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSendButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 51152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$21;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51160
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v3}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, Lctk$i;->dt_conversation_encrypt_text_placeholder:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    .line 51162
    const-string/jumbo v1, "im_input_one_line_mode"

    invoke-static {p0, v1}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 51164
    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 51165
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 51166
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$22;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$22;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 51181
    :cond_3
    sget v1, Lctk$f;->voice_record_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .line 51182
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecordButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setVoiceRecordBtn(Landroid/widget/Button;)V

    .line 51185
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 51186
    :cond_4
    new-instance v1, Ldjx;

    sget v2, Lctk$f;->input_smart_tip_stub:I

    .line 51187
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$23;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$23;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-direct {v1, p0, v2, v3, v4}, Ldjx;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Landroid/view/View;Ldiz;Ldjx$b;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cq:Ldjx;

    .line 51199
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_use_emotion_package_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 51200
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 51201
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT()V

    .line 51202
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j()V

    .line 51203
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(J)V

    .line 51207
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Ldpu;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionStoreVisibility(Z)V

    .line 51208
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ag()V

    .line 51210
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(J)V

    .line 51220
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Z)V

    .line 5559
    sget v1, Lctk$f;->swipe_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 5561
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$142;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$142;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 5568
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lctk$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lctk$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lctk$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lctk$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 5571
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_7

    .line 5572
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->actbar_custom_img_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al:Landroid/view/View;

    .line 5573
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->al:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 5575
    :cond_7
    sget v1, Lctk$f;->list_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 5576
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 5577
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lctk$g;->burn_chat_header_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 5580
    :cond_8
    sget v1, Lctk$f;->iv_water_mark:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ap:Landroid/widget/ImageView;

    .line 51222
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setOnListViewArrivedListener(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;)V

    .line 51234
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 51283
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 51326
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 51357
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ai:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setChatMsgListView(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    .line 51359
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    if-eqz v1, :cond_16

    .line 51360
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    if-nez v1, :cond_a

    .line 51361
    sget v1, Lctk$f;->chat_float_dialog_stub:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 51362
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 51363
    sget v1, Lctk$f;->chat_float_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    .line 51365
    :cond_a
    sget v1, Lctk$f;->chat_float_dialog_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51366
    sget v2, Lctk$f;->chat_float_dialog_descrption:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51367
    sget v3, Lctk$f;->chat_float_dialog_icon:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 51368
    sget v4, Lctk$f;->chat_float_dialog_send:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 51369
    sget v5, Lctk$f;->chat_float_dialog_close:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 51371
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    if-eqz v8, :cond_13

    .line 51372
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51373
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51374
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->iconResId:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51375
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ar:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->sendMsgObject:Landroid/os/Parcelable;

    if-eqz v1, :cond_12

    .line 51376
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51377
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$148;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$148;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51430
    :goto_2
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5584
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aO()V

    .line 5585
    iput-object p0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 5586
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g()V

    .line 5587
    new-instance v6, Ldpy;

    invoke-direct {v6}, Ldpy;-><init>()V

    .line 5588
    .local v6, "imEmotionManager":Ldpy;
    new-instance v0, Ldkj;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 5589
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getQuickPraiseView()Landroid/widget/TextView;

    move-result-object v2

    sget v1, Lctk$f;->iv_quick_praise_big:I

    .line 5590
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    sget v1, Lctk$f;->quick_praise_tips:I

    .line 5591
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldkj;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Ldpy;)V

    .line 5593
    .local v0, "quickPraiseController":Ldkj;
    sget v1, Lctk$f;->fl_celebrate:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .line 5594
    .local v10, "flCelebrate":Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
    new-instance v7, Ldmj;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v1, Lctk$f;->tv_quick_celebrate:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Ldmj;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 5595
    .local v7, "chatScenePresenter":Ldmj;
    new-instance v13, Ldmn;

    invoke-direct {v13, v0}, Ldmn;-><init>(Ldkj;)V

    .line 5596
    .local v13, "quickPraiseSceneRender":Ldmn;
    new-instance v1, Ldmg;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$143;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$143;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-direct {v1, v13, v7, v2}, Ldmg;-><init>(Ldmd;Ldmd;Ldmg$a;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    .line 5602
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    invoke-virtual {v1, v2}, Ldmg;->a(Ldiz;)V

    .line 5603
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 5604
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bj:Ldmg;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Ldmg;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 5606
    :cond_c
    new-instance v1, Ldie;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {v1, p0, v2, v6}, Ldie;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Ldpy;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    .line 5607
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 51443
    iput-object v2, v1, Ldie;->m:Ldiz;

    .line 5608
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$144;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$144;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 51445
    iput-object v2, v1, Ldie;->n:Ldie$a;

    .line 5614
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    .line 51447
    invoke-static {}, Ldig;->a()Z

    move-result v1

    iput-boolean v1, v2, Ldie;->o:Z

    .line 51448
    iget-object v1, v2, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setDynamicEmotionVisible(Z)V

    .line 51449
    iget-boolean v1, v2, Ldie;->o:Z

    if-eqz v1, :cond_e

    .line 51452
    iget-object v1, v2, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v3, Ldie$1;

    invoke-direct {v3, v2}, Ldie$1;-><init>(Ldie;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setDynamicEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;)V

    .line 51459
    iget-object v1, v2, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getExtendFootContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    .line 51464
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    iget-boolean v1, v2, Ldie;->j:Z

    if-eqz v1, :cond_17

    .line 51462
    :cond_d
    :goto_4
    iget-object v1, v2, Ldie;->l:Ldib$a;

    invoke-interface {v1}, Ldib$a;->a()V

    .line 5615
    :cond_e
    new-instance v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    sget v1, Lctk$f;->vs_chat_topic_emotion_search:I

    .line 5616
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v2, p0, v3, v1, v6}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;-><init>(Landroid/app/Activity;Ldie;Landroid/view/ViewStub;Ldpy;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 5617
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$145;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$145;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 51510
    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->r:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$a;

    .line 5624
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i:Ldiz;

    .line 51512
    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->q:Ldiz;

    .line 5625
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bn:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 51514
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_18

    .line 51515
    const/4 v1, 0x1

    move-object v2, v3

    .line 51519
    :goto_5
    iput-boolean v1, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    .line 51522
    iget-boolean v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->c:Z

    if-nez v1, :cond_f

    .line 51523
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const-string/jumbo v4, "[TopicEmotionSearchCenter] init() but not valid"

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51524
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    .line 51527
    :cond_f
    iget-boolean v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->b:Z

    if-nez v1, :cond_1a

    .line 51528
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldie;->d(Z)V

    .line 51529
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldie;->a(Landroid/view/View$OnClickListener;)V

    .line 5627
    :goto_6
    sget v1, Lctk$f;->chat_task:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aC:Lcom/alibaba/android/dingtalkim/views/ChatTaskTipView;

    .line 5628
    sget v1, Lctk$f;->chatting_top_tip_bar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->an:Landroid/widget/FrameLayout;

    .line 5629
    sget v1, Lctk$f;->ll_chatting_top_tip_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ao:Landroid/widget/LinearLayout;

    .line 51548
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v1

    .line 51549
    iput-object p0, v1, Ldiy;->a:Ldix;

    .line 5632
    return-void

    .line 50855
    .end local v0    # "quickPraiseController":Ldkj;
    .end local v6    # "imEmotionManager":Ldpy;
    .end local v7    # "chatScenePresenter":Ldmj;
    .end local v10    # "flCelebrate":Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
    .end local v13    # "quickPraiseSceneRender":Ldmn;
    :cond_10
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    goto/16 :goto_0

    .line 51160
    :cond_11
    const-string/jumbo v1, ""

    goto/16 :goto_1

    .line 51393
    :cond_12
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 51396
    :cond_13
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51397
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51398
    sget v1, Lctk$c;->uidic_global_color_c5:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51400
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mIconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 51401
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51403
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mIconUrl:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v1, v3, v2, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 51406
    :cond_14
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->as:Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/SWFloatDialogDo;->mPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 51407
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51408
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$149;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 51425
    :cond_15
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 51437
    :cond_16
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 51438
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 51467
    .restart local v0    # "quickPraiseController":Ldkj;
    .restart local v6    # "imEmotionManager":Ldpy;
    .restart local v7    # "chatScenePresenter":Ldmj;
    .restart local v10    # "flCelebrate":Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;
    .restart local v13    # "quickPraiseSceneRender":Ldmn;
    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, v2, Ldie;->j:Z

    .line 51468
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 51469
    iget-object v1, v2, Ldie;->i:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lctk$g;->topic_emotion_footer_view:I

    iget-object v4, v2, Ldie;->c:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51470
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    sget v3, Lctk$f;->topic_emotion_pager:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, v2, Ldie;->d:Landroid/support/v4/view/ViewPager;

    .line 51471
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    sget v3, Lctk$f;->topic_emotion_store:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ldie;->e:Landroid/widget/ImageView;

    .line 51472
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    sget v3, Lctk$f;->rv_emotion_tabs:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v2, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    .line 51473
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    sget v3, Lctk$f;->emotion_search:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ldie;->g:Landroid/widget/ImageView;

    .line 51474
    iget-object v1, v2, Ldie;->c:Landroid/view/ViewGroup;

    sget v3, Lctk$f;->rl_emotion_search:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v2, Ldie;->h:Landroid/view/ViewGroup;

    .line 51478
    iget-object v1, v2, Ldie;->d:Landroid/support/v4/view/ViewPager;

    iget-object v3, v2, Ldie;->r:Lgl;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 51479
    iget-object v1, v2, Ldie;->d:Landroid/support/v4/view/ViewPager;

    iget-object v3, v2, Ldie;->s:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 51481
    new-instance v1, Lecw;

    iget-object v3, v2, Ldie;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$i;->icon_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Ldie;->i:Landroid/app/Activity;

    .line 51482
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->ui_common_content_fg_color_alpha_56:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 51483
    iget-object v3, v2, Ldie;->i:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 51504
    iput v3, v1, Lecw;->b:I

    .line 51506
    iput v3, v1, Lecw;->a:I

    .line 51486
    iget-object v3, v2, Ldie;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51487
    iget-object v1, v2, Ldie;->e:Landroid/widget/ImageView;

    new-instance v3, Ldie$3;

    invoke-direct {v3, v2}, Ldie$3;-><init>(Ldie;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51493
    iget-object v1, v2, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v2, Ldie;->i:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51494
    iget-object v1, v2, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 51495
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    iget-object v3, v2, Ldie;->i:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 51496
    iget-object v1, v2, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    new-instance v3, Ldie$4;

    invoke-direct {v3, v2}, Ldie$4;-><init>(Ldie;)V

    .line 51508
    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->b:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter$b;

    .line 51502
    iget-object v1, v2, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v2, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_4

    .line 51518
    :cond_18
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_topic_emotion_search"

    invoke-virtual {v1, v2}, Lchx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 51519
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "im_chat_gif_search_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    move-object v2, v3

    goto/16 :goto_5

    :cond_19
    const/4 v1, 0x0

    move-object v2, v3

    goto/16 :goto_5

    .line 51531
    :cond_1a
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ldie;->d(Z)V

    .line 51532
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    .line 51547
    const-string/jumbo v2, "emotion_search_icon_first_show"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 51532
    invoke-virtual {v1, v2}, Ldie;->e(Z)V

    .line 51533
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    new-instance v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v1, v2}, Ldie;->a(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6
.end method

.method public final v()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 6032
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 6033
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6034
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6035
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6036
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aq:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6038
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6687
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    if-eqz v0, :cond_0

    .line 6688
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bm:Ldie;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldie;->c(Z)V

    .line 6690
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 6691
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aT()V

    .line 6692
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6693
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ab:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 6696
    :cond_1
    return-void
.end method

.method public final x()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 6703
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aR()V

    .line 6704
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y()V

    .line 6705
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 6706
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Ljava/util/List;)V

    .line 6708
    :cond_0
    return-void
.end method

.method protected final y()V
    .locals 22

    .prologue
    .line 6800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_1

    .line 6801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-interface {v2, v7}, Ldfc;->b(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)Z

    move-result v20

    .line 6802
    .local v20, "ret":Z
    if-eqz v20, :cond_1

    .line 7061
    .end local v20    # "ret":Z
    :cond_0
    :goto_0
    return-void

    .line 6806
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    if-nez v2, :cond_2e

    .line 6807
    new-instance v2, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .line 6815
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6816
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bK:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6820
    :cond_4
    const-string/jumbo v2, "0"

    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_function"

    const-string/jumbo v9, "video_switch_key"

    invoke-virtual {v7, v8, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v2

    invoke-virtual {v2}, Ldsf;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6823
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bM:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6828
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aX()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2f

    const/4 v15, 0x1

    .line 6830
    .local v15, "beSingleChat":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_7

    if-eqz v15, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x3

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 6831
    :cond_7
    const/16 v21, 0x1

    .line 6833
    .local v21, "showVideoCall":Z
    :goto_3
    if-eqz v21, :cond_8

    .line 6834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bN:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v15, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6839
    .end local v15    # "beSingleChat":Z
    .end local v21    # "showVideoCall":Z
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6841
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v18

    .line 6842
    .local v18, "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6843
    const/4 v4, 0x0

    .line 6845
    .local v4, "iconUrl":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->icon:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 6849
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    sget v3, Lctk$e;->chat_app_festival_redpackets_btn:I

    .line 6850
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v4, 0x0

    .end local v4    # "iconUrl":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->title:Ljava/lang/String;

    .line 6851
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    sget v7, Lctk$i;->dt_redenvelop_entry:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    const/4 v7, 0x0

    .line 6852
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h(Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->o:Landroid/view/View$OnClickListener;

    const/4 v8, 0x0

    .line 6849
    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6858
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6859
    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6860
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6861
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6862
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0xd

    cmp-long v2, v8, v10

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6863
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x9

    cmp-long v2, v8, v10

    if-nez v2, :cond_d

    .line 6864
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_33

    .line 6865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-eqz v2, :cond_d

    .line 6866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6867
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Z)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bW:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->d(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6879
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_e

    .line 6880
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 6881
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k(Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->cb:Landroid/view/View$OnClickListener;

    .line 51594
    new-instance v2, Lckj;

    iget-object v3, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v4, Lcig$j;->icon_gather_fill:I

    sget v5, Lcig$j;->dt_pay_group_bill_pay:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 51595
    iget-object v7, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6887
    .end local v18    # "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    :cond_e
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0x10

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6889
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bT:Landroid/view/View$OnClickListener;

    .line 51597
    new-instance v2, Lckj;

    iget-object v3, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v4, Lcig$j;->icon_live_fill:I

    sget v5, Lcig$j;->dt_conversation_live:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 51598
    iget-object v7, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6894
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6895
    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6896
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6897
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6898
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0xd

    cmp-long v2, v8, v10

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6899
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x9

    cmp-long v2, v8, v10

    if-nez v2, :cond_13

    .line 6900
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x5

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6901
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bO:Landroid/view/View$OnClickListener;

    .line 51600
    new-instance v2, Lckj;

    iget-object v3, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v4, Lcig$j;->icon_ding_fill:I

    sget v5, Lcig$j;->dt_im_message_action_ding:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 51602
    iget-object v7, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6907
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6908
    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6909
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6910
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6911
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0xd

    cmp-long v2, v8, v10

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6912
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x9

    cmp-long v2, v8, v10

    if-nez v2, :cond_16

    .line 6913
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x6

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 6914
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bP:Landroid/view/View$OnClickListener;

    .line 51604
    new-instance v2, Lckj;

    iget-object v3, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v4, Lcig$j;->icon_task_fill:I

    sget v5, Lcig$j;->ding_filter_deadline:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 51605
    iget-object v7, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6919
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6920
    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6921
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6922
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6923
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0xd

    cmp-long v2, v8, v10

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6924
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x9

    cmp-long v2, v8, v10

    if-nez v2, :cond_19

    .line 6925
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x7

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 6926
    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bQ:Landroid/view/View$OnClickListener;

    .line 51607
    new-instance v2, Lckj;

    iget-object v3, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v4, Lcig$j;->icon_meeting_fill:I

    sget v5, Lcig$j;->ding_filter_calendar:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 51608
    iget-object v7, v9, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51610
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51611
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51612
    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51613
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51614
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51615
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x5

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51616
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x18

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51617
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x9

    cmp-long v2, v8, v10

    if-nez v2, :cond_35

    :cond_1a
    const/4 v2, 0x1

    .line 6931
    :goto_7
    if-eqz v2, :cond_1c

    .line 6932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0x8

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6933
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->am()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bU:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bV:Lckj$a;

    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZILandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6939
    :cond_1c
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->t()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6941
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6942
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6943
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 6944
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x9

    cmp-long v2, v8, v10

    if-nez v2, :cond_1f

    .line 6945
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0x9

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6946
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bS:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->c(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6952
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0xa

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 6953
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bX:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->e(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6957
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0xb

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 6958
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bY:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->f(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6962
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0xc

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 6963
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bZ:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->g(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6966
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0xd

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 6967
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bL:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->h(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 6971
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_39

    .line 6972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 51618
    invoke-static {v2}, Libb;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    .line 6973
    .local v19, "isCampusStudentSubConversation":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Lddq;->l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v14

    .line 6974
    .local v14, "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v14, :cond_39

    .line 6975
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_28
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 6976
    .local v16, "chatApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v16, :cond_28

    .line 6977
    if-eqz v19, :cond_29

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v12, 0x2

    cmp-long v2, v10, v12

    if-eqz v2, :cond_28

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v12, -0x4

    cmp-long v2, v10, v12

    if-eqz v2, :cond_28

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v12, -0x8

    cmp-long v2, v10, v12

    if-eqz v2, :cond_28

    .line 6981
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-interface {v2, v10, v11}, Ldfc;->a(J)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 6985
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->m:Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v2

    sget-object v7, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v2, v7, :cond_36

    .line 6987
    sget v2, Lctk$i;->space_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6992
    .local v5, "title":Ljava/lang/String;
    :goto_9
    sget v3, Lctk$e;->oa_entry_icon_default:I

    .line 6993
    .local v3, "iconResId":I
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->iconIM:Ljava/lang/String;

    .line 6994
    .restart local v4    # "iconUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6995
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 6998
    :cond_2b
    :try_start_1
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 6999
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 7005
    :cond_2c
    :goto_a
    invoke-static {}, Ldke;->a()Ldke;

    move-result-object v2

    .line 51619
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ldke;->a(Z)V

    .line 51620
    if-eqz v16, :cond_2d

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_37

    .line 51621
    :cond_2d
    const/4 v6, 0x0

    .line 7007
    .local v6, "showRedDot":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Z)V

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V

    goto/16 :goto_8

    .line 6809
    .end local v3    # "iconResId":I
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "showRedDot":Z
    .end local v14    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v16    # "chatApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v19    # "isCampusStudentSubConversation":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a()V

    goto/16 :goto_1

    .line 6829
    :cond_2f
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 6830
    .restart local v15    # "beSingleChat":Z
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0xf

    .line 6831
    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_31
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 6846
    .end local v15    # "beSingleChat":Z
    .restart local v4    # "iconUrl":Ljava/lang/String;
    .restart local v18    # "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    :catch_0
    move-exception v17

    .line 6847
    .local v17, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_4

    .line 6851
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v17    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_32
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->title:Ljava/lang/String;

    goto/16 :goto_5

    .line 6871
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6872
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Z)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->bW:Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->d(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    goto/16 :goto_6

    .line 51617
    .end local v18    # "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    :cond_35
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 6989
    .restart local v14    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .restart local v16    # "chatApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v19    # "isCampusStudentSubConversation":Z
    :cond_36
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto/16 :goto_9

    .line 7001
    .restart local v3    # "iconResId":I
    .restart local v4    # "iconUrl":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 7002
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 51624
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_37
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v10

    .line 51625
    iget-object v2, v2, Ldke;->a:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 51626
    if-eqz v2, :cond_38

    .line 51630
    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 51631
    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51632
    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v10, v11}, Ldke;->a(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v7

    .line 51633
    if-le v2, v7, :cond_38

    .line 51634
    const/4 v6, 0x1

    goto/16 :goto_b

    .line 51637
    :cond_38
    const/4 v6, 0x0

    goto/16 :goto_b

    .line 7050
    .end local v3    # "iconResId":I
    .end local v4    # "iconUrl":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v14    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    .end local v16    # "chatApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v19    # "isCampusStudentSubConversation":Z
    :cond_39
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v7, "im_group_sign_up_mini_app_enabled"

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    const/16 v7, 0x17

    invoke-interface {v2, v7}, Ldfc;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7053
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ca:Landroid/view/View$OnClickListener;

    .line 51638
    new-instance v7, Lckj;

    iget-object v8, v2, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v9, Lcig$j;->icon_activity_fill:I

    sget v10, Lcig$j;->dt_im_action_activities_title:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 51639
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7058
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    if-eqz v2, :cond_0

    .line 7059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->ad:Ldfc;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-interface {v2, v7}, Ldfc;->a(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)V

    goto/16 :goto_0
.end method

.method public final z()V
    .locals 4
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 7285
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Z)V

    .line 7286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 7287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 7288
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eqz v0, :cond_1

    .line 7289
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    if-eq v0, v1, :cond_0

    .line 7290
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7292
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aQ()V

    .line 7293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 7294
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "retail_im_msglist_detail_audiobutton"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7297
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b:I

    .line 7298
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->au()V

    .line 7300
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c()V

    .line 7301
    return-void
.end method
