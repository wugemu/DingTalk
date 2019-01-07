.class public Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
.super Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lddr;
.implements Ldhm$a;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final o:Ljava/lang/String;


# instance fields
.field private Z:Landroid/widget/TextView;

.field private aA:Ldlx;

.field private aB:Ldhm;

.field private aC:Z

.field private aD:Z

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Z

.field private aH:J

.field private aI:Z

.field private aJ:J

.field private aK:J

.field private aL:J

.field private aM:I

.field private aN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

.field private aO:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

.field private aP:Lddz$a;

.field private aQ:Ldfg$a;

.field private aR:Lddu;

.field private aS:Lfzk;

.field private aT:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

.field private aU:Ldps$a;

.field private aV:Ldpt$a;

.field private aW:Landroid/view/View$OnClickListener;

.field private aX:Landroid/view/View$OnClickListener;

.field private aY:Landroid/view/View$OnClickListener;

.field private aZ:Landroid/view/View$OnClickListener;

.field private aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

.field private ab:Landroid/widget/RelativeLayout;

.field private ac:I

.field private ad:I

.field private ae:Landroid/view/View;

.field private af:Landroid/view/View;

.field private ag:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private ah:Landroid/widget/ImageView;

.field private ai:Ldmg;

.field private aj:Landroid/view/View;

.field private ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

.field private al:Lcom/alibaba/wukong/im/Message;

.field private am:I

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ldey;

.field private aq:Ldev;

.field private ar:Landroid/net/wifi/WifiManager;

.field private as:Landroid/net/wifi/WifiInfo;

.field private at:Ldop;

.field private au:J

.field private av:Lcjo$a;

.field private aw:Ljava/lang/String;

.field private ax:Ldql;

.field private ay:Ldbw;

.field private az:Ldrw;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private bA:Landroid/view/View$OnClickListener;

.field private ba:Landroid/view/View$OnClickListener;

.field private bb:Landroid/view/View$OnClickListener;

.field private bc:Landroid/view/View$OnClickListener;

.field private bd:Lckj$a;

.field private be:Landroid/view/View$OnClickListener;

.field private bf:Landroid/view/View$OnClickListener;

.field private bg:Landroid/view/View$OnClickListener;

.field private bh:Landroid/view/View$OnClickListener;

.field private bi:Landroid/view/View$OnClickListener;

.field private bj:Landroid/content/BroadcastReceiver;

.field private bk:Z

.field private bl:Landroid/view/View;

.field private bm:I

.field private bn:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private bo:I

.field private bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

.field private bq:Ldjx;

.field private br:Z

.field private bs:I

.field private bt:I

.field private bu:Ljava/lang/String;

.field private final bv:I

.field private final bw:I

.field private final bx:I

.field private final by:I

.field private final bz:I

.field c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

.field d:Landroid/animation/ObjectAnimator;

.field public e:Ldiz;

.field f:Landroid/view/View;

.field g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field public h:Ldvw;

.field i:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field j:Lcom/alibaba/dingtalk/oabase/OAInterface;

.field k:Lddx$a;

.field l:Lddz$b;

.field m:Lddx$b;

.field n:Ldfg$b;

.field private p:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

.field private q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 233
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o:Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "empty_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;-><init>()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q:Landroid/os/Handler;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->au:J

    .line 320
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aC:Z

    .line 321
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aD:Z

    .line 329
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aI:Z

    .line 335
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aM:I

    .line 337
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 343
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->i:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 344
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->j:Lcom/alibaba/dingtalk/oabase/OAInterface;

    .line 352
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aS:Lfzk;

    .line 1125
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aT:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    .line 1139
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$15;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aU:Ldps$a;

    .line 1148
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aV:Ldpt$a;

    .line 1187
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$17;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aW:Landroid/view/View$OnClickListener;

    .line 1196
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$18;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aX:Landroid/view/View$OnClickListener;

    .line 1206
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$19;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aY:Landroid/view/View$OnClickListener;

    .line 1215
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$20;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$20;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aZ:Landroid/view/View$OnClickListener;

    .line 1225
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$21;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$21;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ba:Landroid/view/View$OnClickListener;

    .line 1236
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$22;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$22;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bb:Landroid/view/View$OnClickListener;

    .line 1250
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$24;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$24;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bc:Landroid/view/View$OnClickListener;

    .line 1258
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$25;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$25;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bd:Lckj$a;

    .line 1267
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$26;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->be:Landroid/view/View$OnClickListener;

    .line 1280
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$27;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$27;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bf:Landroid/view/View$OnClickListener;

    .line 1291
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$28;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bg:Landroid/view/View$OnClickListener;

    .line 1307
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$29;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$29;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bh:Landroid/view/View$OnClickListener;

    .line 1316
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$30;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$30;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bi:Landroid/view/View$OnClickListener;

    .line 2359
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$51;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bn:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2397
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bo:I

    .line 2952
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$58;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$58;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->l:Lddz$b;

    .line 3072
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$59;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->m:Lddx$b;

    .line 3383
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$60;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$60;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->n:Ldfg$b;

    .line 3851
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bv:I

    .line 3852
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bw:I

    .line 3853
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bx:I

    .line 3854
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->by:I

    .line 3855
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bz:I

    .line 3979
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bA:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aK:J

    return-wide v0
.end method

.method private A()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2222
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2224
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2225
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2226
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2228
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldjx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    return-object v0
.end method

.method private B()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2231
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2232
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2233
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2234
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2235
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2238
    .end local v0    # "ta":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method private C()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2620
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 2621
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2624
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$53;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$53;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddAppButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 2660
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 2632
    .local v1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    const-string/jumbo v2, "button_app_ids"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 2633
    .local v0, "isShowTowerRed":Z
    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Lddq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lddq;->a()Z

    .line 2640
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$54;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$54;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setAddAppButtonOnClicker(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2632
    .end local v0    # "isShowTowerRed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->br:Z

    return v0
.end method

.method static synthetic D(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bs:I

    return v0
.end method

.method private D()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2743
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    if-eq v1, v2, :cond_1

    .line 2744
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 2745
    .local v0, "old":I
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 2746
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d()V

    .line 2747
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t()V

    .line 2748
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 2749
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2750
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 2754
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->h()V

    .line 2755
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2756
    if-ne v0, v4, :cond_0

    .line 2757
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2759
    :cond_0
    if-nez v0, :cond_1

    .line 2760
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A()V

    .line 2763
    .end local v0    # "old":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v1, :cond_2

    .line 2764
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    .line 25021
    invoke-virtual {v1, v3}, Ldvw;->c(Z)V

    .line 2766
    :cond_2
    return-void

    .line 2752
    .restart local v0    # "old":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    goto :goto_0
.end method

.method static synthetic E(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bt:I

    return v0
.end method

.method private E()V
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    if-eqz v0, :cond_0

    .line 2817
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    .line 25174
    invoke-virtual {v0}, Ldjx;->a()V

    .line 2822
    :cond_0
    return-void
.end method

.method static synthetic F(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    return v0
.end method

.method private F()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    .line 3482
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_3

    .line 3483
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3484
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    .line 26177
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->f:J

    .line 3486
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 3487
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D:Ljava/lang/String;

    .line 3488
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;)V

    .line 3521
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->supportInvalidateOptionsMenu()V

    .line 26660
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v2, :cond_1

    .line 26661
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    invoke-interface {v2, v3, v4}, Lddz$a;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 27550
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 27551
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-eq v2, v6, :cond_5

    .line 3525
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Lcom/alibaba/wukong/im/Conversation;)V

    .line 28595
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 28596
    if-nez v2, :cond_6

    .line 28597
    const/4 v2, 0x0

    .line 3527
    :goto_2
    if-eqz v2, :cond_3

    .line 3528
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c()V

    .line 3531
    :cond_3
    return-void

    .line 3490
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 3491
    .local v0, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$62;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$62;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 27556
    .end local v0    # "uid":J
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    if-nez v2, :cond_2

    .line 27559
    const-class v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$63;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$63;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 28599
    :cond_6
    const-string/jumbo v3, "voice_record_mode"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2
.end method

.method static synthetic G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 229
    .line 45724
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    if-eq v0, v2, :cond_0

    .line 45725
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 45726
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 45727
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 45728
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t()V

    .line 45729
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 45730
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45731
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 45735
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 45737
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_1

    .line 45738
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    .line 46021
    invoke-virtual {v0, v3}, Ldvw;->c(Z)V

    .line 229
    :cond_1
    return-void

    .line 45733
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    goto :goto_0
.end method

.method private H()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4124
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 4125
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 4126
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "setting_app_new"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4127
    const-string/jumbo v1, "setting_app_new"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 4129
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->supportInvalidateOptionsMenu()V

    .line 4132
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D()V

    return-void
.end method

.method private declared-synchronized I()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aR:Lddu;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_2

    .line 4152
    new-instance v0, Lddu;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, v1, p0, v2}, Lddu;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lddr;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aR:Lddu;

    .line 4153
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aR:Lddu;

    .line 39043
    invoke-virtual {v1}, Lddu;->a()V

    .line 39044
    const/4 v0, 0x0

    .line 39045
    iget-object v2, v1, Lddu;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lddu;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lddu;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 39046
    invoke-static {v2}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39047
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    iget-object v2, v1, Lddu;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, v1, Lddu;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, v1, Lddu;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    .line 39048
    iget-object v0, v1, Lddu;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    iget-object v2, v1, Lddu;->e:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$b;)V

    .line 39049
    iget-object v0, v1, Lddu;->c:Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner;->a()Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;

    move-result-object v0

    .line 39051
    :cond_1
    iget-object v2, v1, Lddu;->d:Lddv$a;

    if-eqz v2, :cond_2

    .line 39052
    iget-object v1, v1, Lddu;->d:Lddv$a;

    invoke-interface {v1, v0}, Lddv$a;->a(Lcom/alibaba/android/dingtalkim/imtools/BanWordsCheckRunner$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4155
    :cond_2
    monitor-exit p0

    return-void

    .line 4151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic I(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E()V

    return-void
.end method

.method static synthetic J(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B()V

    return-void
.end method

.method static synthetic L(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    .line 46832
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aJ:J

    .line 46833
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v0, :cond_0

    .line 46834
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 46835
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aF:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lddz$a;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Ljava/util/HashMap;ZLjava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method static synthetic M(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    .line 47037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    .line 47038
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditContent(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method static synthetic N(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldps$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aU:Ldps$a;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldpt$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aV:Ldpt$a;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C()V

    return-void
.end method

.method static synthetic Q(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldfg$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aQ:Ldfg$a;

    return-object v0
.end method

.method static synthetic R(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldey;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ap:Ldey;

    return-object v0
.end method

.method static synthetic S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldev;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aq:Ldev;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    const/4 v4, 0x1

    .line 229
    .line 47533
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aG:Z

    if-nez v0, :cond_1

    .line 47534
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47535
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aF:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47536
    const/4 v0, 0x0

    .line 47537
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-eqz v2, :cond_2

    .line 47538
    const-string/jumbo v0, "chat_msg_boss_page_send"

    .line 47544
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47545
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aG:Z

    .line 47546
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    :cond_1
    return-void

    .line 47539
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 47540
    const-string/jumbo v0, "chat_msg_group_page_send"

    goto :goto_0

    .line 47541
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 47542
    const-string/jumbo v0, "chat_msg_single_page_send"

    goto :goto_0
.end method

.method static synthetic U(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    .line 48038
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bm:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bl:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->af:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bm:I

    .line 48040
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48041
    if-eqz v0, :cond_1

    .line 48042
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bm:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48046
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bl:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    :cond_0
    return-void

    .line 48044
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bm:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method static synthetic V(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->am:I

    return v0
.end method

.method static synthetic W(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lddx$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    return-object v0
.end method

.method static synthetic X(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldmg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    return-object v0
.end method

.method static synthetic Y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->al:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic Z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    .line 48087
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/safety/encrypt.html?lwfrom=20160511153723743"

    const-string/jumbo v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bs:I

    return p1
.end method

.method protected static a()J
    .locals 2

    .prologue
    .line 1493
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aH:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aO:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/android/dingtalkim/views/IMBanner;)Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/views/IMBanner;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation$TypingCommand;)Lcom/alibaba/wukong/im/Conversation$TypingCommand;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/wukong/im/Message;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->al:Lcom/alibaba/wukong/im/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ldbw;)Ldbw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ldbw;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lddx$a;)Lddx$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lddx$a;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lddz$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lddz$a;)Lddz$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lddz$a;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ldfg$a;)Ldfg$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ldfg$a;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aQ:Ldfg$a;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2400
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bo:I

    if-nez v1, :cond_0

    .line 2401
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$d;->keyboard_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bo:I

    .line 2403
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bo:I

    if-ge p1, v1, :cond_1

    .line 2404
    iget p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bo:I

    .line 2406
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac:I

    if-eq v1, p1, :cond_2

    .line 2407
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac:I

    .line 2408
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2410
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setLayoutParamsOfFooterView(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2411
    const-string/jumbo v1, "pref_keyboard_height"

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac:I

    invoke-static {p0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2414
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

    .line 2057
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-nez v1, :cond_1

    .line 2058
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;I)V

    .line 2084
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2063
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2064
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae:Landroid/view/View;

    sget v2, Lctk$f;->enterprise_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2065
    .local v0, "titleIcon":Landroid/widget/ImageView;
    if-lez p1, :cond_3

    .line 2066
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2067
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2069
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2070
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$43;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$43;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2077
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2080
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2081
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 466
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 467
    .local v19, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v4, "chat_load"

    const-string/jumbo v5, "handle_intent"

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string/jumbo v4, "im_navigator_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aF:Ljava/lang/String;

    .line 471
    const-string/jumbo v4, "local_contact"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aC:Z

    .line 472
    const-string/jumbo v4, "intent_key_send_pre_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aE:Ljava/lang/String;

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mIsLocalContact:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aC:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    if-eqz v4, :cond_0

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aC:Z

    .line 6797
    iput-boolean v5, v4, Ldjb;->f:Z

    .line 477
    :cond_0
    const-string/jumbo v4, "conversation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_1

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->sync()V

    .line 484
    :cond_1
    const-string/jumbo v4, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, "cid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_2

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v13

    .line 488
    :cond_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 491
    .local v24, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 496
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Ljava/lang/String;)V

    .line 497
    invoke-static {v13}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v22

    .line 499
    .local v22, "uid":J
    :try_start_1
    const-string/jumbo v4, "chat_float_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7772
    :goto_1
    sget v4, Lctk$f;->layout_chat_mainborad:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ab:Landroid/widget/RelativeLayout;

    .line 7773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bn:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bn:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7775
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 7777
    instance-of v5, v4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_4

    .line 7778
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 7782
    :cond_4
    sget v4, Lctk$f;->input_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 7784
    const-string/jumbo v4, "pref_keyboard_height"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(I)V

    .line 7785
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->G()V

    .line 7786
    new-instance v4, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .line 7788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 7789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditContent(Ljava/lang/String;)V

    .line 7792
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 7793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTextChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;)V

    .line 7879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getFaceButton()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionStoreClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$e;)V

    .line 7900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionSettingClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$d;)V

    .line 7907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setCustomEmotionSyncDelegate(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$a;)V

    .line 7914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 7932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Ljava/util/List;)V

    .line 7934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aT:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionFooterViewVisibilityListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$g;)V

    .line 7936
    sget v4, Lctk$f;->voice_tips:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Z:Landroid/widget/TextView;

    .line 7937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Z:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceSwitcherButton()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 7966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 7968
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C()V

    .line 7970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSendButtonOnClicker(Landroid/view/View$OnClickListener;)V

    .line 7980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7988
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v6}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_11

    sget v4, Lctk$i;->dt_conversation_encrypt_text_placeholder:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTexthint(Ljava/lang/String;)V

    .line 7990
    const-string/jumbo v4, "im_input_one_line_mode"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    .line 7992
    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 7993
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 7994
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 8009
    :cond_6
    sget v4, Lctk$f;->voice_record_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    .line 8010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecordButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setVoiceRecordBtn(Landroid/widget/Button;)V

    .line 8011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    if-nez v4, :cond_7

    .line 8012
    new-instance v4, Ldjx;

    sget v5, Lctk$f;->input_smart_tip_stub:I

    .line 8013
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$13;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v7}, Ldjx;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Landroid/view/View;Ldiz;Ldjx$b;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    .line 8025
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "intent_key_use_emotion_package_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 8026
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    .line 8027
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->D()V

    .line 8028
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v6, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(J)V

    .line 8032
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Ldpu;->b()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setEmotionStoreVisibility(Z)V

    .line 8033
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ag()V

    .line 7723
    sget v4, Lctk$f;->swipe_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 7725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$69;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$69;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 7732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    sget v7, Lctk$c;->swipe_refresh_color1:I

    aput v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lctk$c;->swipe_refresh_color2:I

    aput v7, v5, v6

    const/4 v6, 0x2

    sget v7, Lctk$c;->swipe_refresh_color1:I

    aput v7, v5, v6

    const/4 v6, 0x3

    sget v7, Lctk$c;->swipe_refresh_color2:I

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 7735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v4, :cond_9

    .line 7736
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lctk$g;->actbar_custom_img_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae:Landroid/view/View;

    .line 7737
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->mActionBar:Landroid/support/v7/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 7739
    :cond_9
    sget v4, Lctk$f;->list_content:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 7740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 7741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lctk$g;->burn_chat_header_layout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 7744
    :cond_a
    sget v4, Lctk$f;->iv_water_mark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ah:Landroid/widget/ImageView;

    .line 8243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$47;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$47;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setOnListViewArrivedListener(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$b;)V

    .line 8255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$48;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$48;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 8290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$49;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 8325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$50;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 8356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setChatMsgListView(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    .line 9161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    if-eqz v4, :cond_13

    .line 9162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    if-nez v4, :cond_b

    .line 9163
    sget v4, Lctk$f;->chat_float_dialog_stub:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    .line 9164
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 9165
    sget v4, Lctk$f;->chat_float_dialog:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    .line 9167
    :cond_b
    sget v4, Lctk$f;->chat_float_dialog_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9168
    sget v5, Lctk$f;->chat_float_dialog_descrption:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9169
    sget v6, Lctk$f;->chat_float_dialog_icon:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 9170
    sget v7, Lctk$f;->chat_float_dialog_send:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 9171
    sget v10, Lctk$f;->chat_float_dialog_close:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 9172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget-object v11, v11, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->iconResId:I

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->sendMsgObject:Landroid/os/Parcelable;

    if-eqz v4, :cond_12

    .line 9176
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 9177
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$44;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$44;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9198
    :goto_3
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$46;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$46;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7748
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->z()V

    .line 7749
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->p:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .line 7751
    new-instance v10, Ldpy;

    invoke-direct {v10}, Ldpy;-><init>()V

    .line 7752
    new-instance v4, Ldkj;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 7753
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getQuickPraiseView()Landroid/widget/TextView;

    move-result-object v6

    sget v5, Lctk$f;->iv_quick_praise_big:I

    .line 7754
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    sget v5, Lctk$f;->quick_praise_tips:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Ldkj;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Ldpy;)V

    .line 7756
    sget v5, Lctk$f;->fl_celebrate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;

    .line 7757
    new-instance v5, Ldmj;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v6, Lctk$f;->tv_quick_celebrate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Ldmj;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/imtools/scene/FallingView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 7758
    new-instance v6, Ldmn;

    invoke-direct {v6, v4}, Ldmn;-><init>(Ldkj;)V

    .line 7759
    new-instance v4, Ldmg;

    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$70;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$70;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-direct {v4, v6, v5, v7}, Ldmg;-><init>(Ldmd;Ldmd;Ldmg$a;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    .line 7765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    invoke-virtual {v4, v5}, Ldmg;->a(Ldiz;)V

    .line 7766
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->an()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 7767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5}, Ldmg;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 9552
    :cond_d
    sget v4, Lctk$f;->stub_onebox_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 9553
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;-><init>(Landroid/content/Context;)V

    .line 9554
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v6, :cond_e

    .line 9556
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9557
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v6}, Ldvw;->b()V

    .line 9558
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v6}, Ldvw;->d()V

    .line 9560
    :cond_e
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9562
    new-instance v4, Ldvw;

    new-instance v6, Ldvx;

    invoke-direct {v6, v5}, Ldvx;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Ldvw;-><init>(Landroid/app/Activity;Ldvu;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    .line 9563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$33;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$33;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Ldvw;->a(Landroid/view/View$OnClickListener;)V

    .line 9570
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-eqz v4, :cond_14

    .line 9571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldvw;->b(Z)V

    .line 506
    :goto_5
    new-instance v4, Ldrk;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$34;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$34;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v7, Lctk$f;->menu_input_view:I

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v10, Lctk$f;->fl_bottom_menu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v4, v5, v6, v7, v10}, Ldrk;-><init>(Ldrk$a;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A:Ldrk;

    .line 514
    const-string/jumbo v4, "anchor_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 515
    .local v20, "tempAnchorId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-nez v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "anchor_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 518
    :cond_f
    move-wide/from16 v8, v20

    .line 519
    .local v8, "anchorId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v4, :cond_16

    .line 520
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    check-cast v19, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 521
    .restart local v19    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v4, "chat_load"

    const-string/jumbo v5, "get_conversation"

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-class v4, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$45;

    move-object/from16 v5, p0

    move-wide/from16 v6, v22

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$45;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;JJ)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v11, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v10, v4, v13}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 636
    :goto_6
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$56;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    const-string/jumbo v4, "intent_key_chat_bottom_menu_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v16

    .line 662
    .local v16, "menuMode":I
    new-instance v4, Ldru;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$66;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v4, v0, v5, v1, v6}, Ldru;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ILdru$a;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    .line 704
    sget v4, Lctk$f;->fl_bottom_menu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 705
    .local v17, "menuViewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    invoke-virtual {v4}, Ldru;->a()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 708
    const-string/jumbo v4, "intent_key_previous_conversation_id"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 709
    .local v18, "previousCid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    .line 10175
    move-object/from16 v0, v18

    iput-object v0, v4, Ldru;->f:Ljava/lang/String;

    .line 710
    const-string/jumbo v4, "intent_key_chat_enter_menu_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v15

    .line 711
    .local v15, "enterMenuMode":Z
    if-eqz v15, :cond_10

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    invoke-virtual {v4}, Ldru;->c()V

    .line 716
    :cond_10
    const-string/jumbo v4, "chat_load"

    const-string/jumbo v5, "handle_intent"

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    .end local v15    # "enterMenuMode":Z
    .end local v16    # "menuMode":I
    .end local v17    # "menuViewGroup":Landroid/view/ViewGroup;
    .end local v18    # "previousCid":Ljava/lang/String;
    :goto_7
    return-void

    .line 492
    .end local v8    # "anchorId":J
    .end local v20    # "tempAnchorId":J
    .end local v22    # "uid":J
    :catch_0
    move-exception v14

    .line 493
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 7988
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v22    # "uid":J
    :cond_11
    sget v4, Lctk$i;->chat_input_edit_hint:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 9196
    :cond_12
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 9205
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 9206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 9573
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ldvw;->b(Z)V

    .line 9574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v4}, Ldvw;->c()V

    .line 9576
    sget v4, Lctk$f;->all_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$35;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$35;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 9596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 10029
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bl:Landroid/view/View;

    if-nez v5, :cond_15

    .line 10030
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bl:Landroid/view/View;

    .line 10032
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bl:Landroid/view/View;

    .line 9596
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 9597
    sget v4, Lctk$f;->ll_header:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->af:Landroid/view/View;

    .line 9598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->af:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$36;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$36;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_5

    .line 603
    .restart local v8    # "anchorId":J
    .restart local v20    # "tempAnchorId":J
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->r()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->finish()V

    goto/16 :goto_7

    .line 607
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-nez v4, :cond_18

    .line 608
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;I)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k()V

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 612
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q()V

    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->s()V

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u()V

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->n()V

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->x()V

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->p()V

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/wukong/im/Conversation;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Lcom/alibaba/wukong/im/Conversation;)V

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F()V

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y()V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Lcom/alibaba/wukong/im/Conversation;)V

    .line 624
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-nez v4, :cond_19

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->i:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(J)V

    .line 629
    :cond_19
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(JJZ)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g()V

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v()V

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o()V

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->I()V

    goto/16 :goto_6

    .end local v8    # "anchorId":J
    .end local v20    # "tempAnchorId":J
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "wd"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1368
    if-eqz p0, :cond_0

    .line 1369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 1370
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 229
    .line 49847
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 49848
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getSelectionStart()I

    move-result v0

    .line 49849
    if-lez v0, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49850
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 49852
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49853
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->AT_CONTENT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v0, v3}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v4

    .line 49854
    const/4 v3, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$55;

    invoke-direct {v5, p0, v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$55;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v5, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/Callback;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 229
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/StringBuilder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .param p5, "x5"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 229
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 1717
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldvw;->a(Z)V

    .line 1720
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 16
    .param p2, "atText"    # Ljava/lang/StringBuilder;
    .param p3, "index"    # I
    .param p4, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2887
    .local p1, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 2888
    if-eqz p5, :cond_0

    .line 2889
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 2923
    :cond_0
    :goto_0
    return-void

    .line 2892
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v4, Lctk$i;->at_all_nick:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lctk$i;->at_all_nick:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "\u0007"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    add-int/lit8 v5, p3, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 2899
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v12

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v14, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v2, "EVENTBUTLER"

    .line 2900
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/util/List;ILjava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v9, v2, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/Callback;

    move-object v2, v10

    move-object v3, v11

    move-wide v4, v12

    move-wide v6, v14

    move-object/from16 v8, p4

    .line 2899
    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aD:Z

    return p1
.end method

.method static synthetic aa(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ak:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    return-object v0
.end method

.method static synthetic ab(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ac(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->au:J

    return-wide v0
.end method

.method static synthetic ad(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldop;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->at:Ldop;

    return-object v0
.end method

.method static synthetic ae(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ab:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic af(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A()V

    return-void
.end method

.method static synthetic ag(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    .line 48769
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    if-eq v0, v2, :cond_1

    .line 48770
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_plus_button_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 48773
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 48774
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 48775
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 48776
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 48777
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t()V

    .line 48778
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 48779
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48780
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 48784
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->i()V

    .line 48785
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48786
    if-ne v0, v4, :cond_0

    .line 48787
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 48789
    :cond_0
    if-nez v0, :cond_1

    .line 48790
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->A()V

    .line 48793
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_2

    .line 48794
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    .line 49021
    invoke-virtual {v0, v3}, Ldvw;->c(Z)V

    .line 229
    :cond_2
    return-void

    .line 48782
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    goto :goto_0
.end method

.method static synthetic ah(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldlx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    return-object v0
.end method

.method static synthetic ai(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    .line 50771
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isUnreadCountFromServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50772
    :cond_0
    :goto_0
    return-void

    .line 50774
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$40;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$40;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic aj(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aM:I

    return v0
.end method

.method static synthetic ak(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aL:J

    return-wide v0
.end method

.method static synthetic al(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic am(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic an(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aO:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$a;

    return-object v0
.end method

.method static synthetic ao(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/views/IMBanner;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c:Lcom/alibaba/android/dingtalkim/views/IMBanner;

    return-object v0
.end method

.method static synthetic ap(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->H()V

    return-void
.end method

.method static synthetic aq(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ar(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Ldbw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bt:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aJ:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->an:Ljava/lang/String;

    return-object p1
.end method

.method private b(J)V
    .locals 9
    .param p1, "oid"    # J

    .prologue
    const/4 v6, 0x0

    .line 1378
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v4, :cond_0

    .line 1379
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ah:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1380
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_3

    .line 1381
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    .line 1382
    .local v2, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupWaterMark:Z

    if-eqz v4, :cond_2

    .line 1383
    const/16 v4, 0x10

    invoke-static {v4}, Lcms;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1384
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$c;->chat_bg_water_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lctk$c;->chat_bg_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {p0, v4, v5, v6, v7}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1385
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1386
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1387
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ah:Landroid/widget/ImageView;

    invoke-static {v4, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1403
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_0
    :goto_0
    return-void

    .line 1389
    .restart local v2    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 1390
    .local v3, "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    .line 12217
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 1391
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->chat_bg_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 13146
    iput v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    .line 1392
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$c;->chat_bg_water_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 14142
    iput v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 1394
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ah:Landroid/widget/ImageView;

    invoke-static {v4, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1397
    .end local v3    # "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ah:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1400
    .end local v2    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ah:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->br:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # J

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aK:J

    return-wide p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ao:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method private c(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1752
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lder;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1753
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aI:Z

    return v0
.end method

.method protected static d()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2141
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Z)V

    return-void
.end method

.method private d(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3448
    if-nez p1, :cond_1

    .line 3460
    :cond_0
    :goto_0
    return-void

    .line 3451
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Z)V

    .line 3457
    :goto_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3458
    sget v0, Lctk$e;->chat_safe_model_title:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 3454
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e(Z)V

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    .line 1440
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjc;->a(Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    if-eqz v0, :cond_2

    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldiz;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1479
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldmg;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1481
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    invoke-virtual {v0, v1}, Ldmg;->a(Ldiz;)V

    .line 1483
    :cond_1
    return-void

    .line 1444
    :cond_2
    new-instance v0, Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    .line 1445
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$32;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$32;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 15131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 1472
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    .line 15138
    iput-object v1, v0, Ldjb;->i:Ldiz;

    .line 1475
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    .line 16111
    iput-object v1, v0, Ldjx;->b:Ldiz;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->am:I

    return p1
.end method

.method protected static e()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2145
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q()V

    return-void
.end method

.method private e(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 3544
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v0, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v0, p1}, Lddx$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3547
    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 12
    .param p1, "isEnterprise"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    .line 1341
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-nez v3, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1343
    if-eqz p1, :cond_6

    .line 1344
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5, v8}, Lcug;->a(JZ)V

    .line 1345
    const-wide/16 v0, 0x0

    .line 1346
    .local v0, "orgId":J
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "id"

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1347
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "id"

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1351
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v3, :cond_3

    cmp-long v3, v0, v10

    if-eqz v3, :cond_3

    .line 1352
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v0, v1, v4}, Ldvw;->a(JLcom/alibaba/wukong/im/Conversation;)V

    .line 1354
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 11090
    iput-wide v0, v3, Lcug;->e:J

    .line 1355
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    .line 1356
    .local v2, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupRealName:Z

    if-eqz v3, :cond_4

    .line 1357
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 12087
    iput-boolean v8, v3, Lcug;->g:Z

    .line 1359
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(J)V

    goto :goto_0

    .line 1348
    .end local v2    # "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "orgId"

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1349
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v4, "orgId"

    invoke-interface {v3, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 1361
    .end local v0    # "orgId":J
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v3, v10, v11, v8}, Lcug;->a(JZ)V

    .line 1362
    invoke-direct {p0, v10, v11}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b(J)V

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aM:I

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->z()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .param p1, "x1"    # I

    .prologue
    const/4 v4, 0x0

    .line 229
    .line 50793
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50794
    sget v1, Lctk$i;->tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 50795
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 50796
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$61;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$61;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 50797
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50808
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 229
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->s()V

    return-void
.end method

.method protected static h()Z
    .locals 1

    .prologue
    .line 2828
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->x()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->n()V

    return-void
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y()V

    return-void
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->L:Ldnf;

    invoke-interface {v0, v1}, Lddx$a;->a(Ldnf;)V

    .line 1338
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->p()V

    return-void
.end method

.method private o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1512
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aF:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1514
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aF:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const/4 v1, 0x0

    .line 1516
    .local v1, "statisticsKey":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-eqz v2, :cond_2

    .line 1517
    const-string/jumbo v1, "chat_msg_boss_page"

    .line 1523
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1524
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1527
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "statisticsKey":Ljava/lang/String;
    :cond_1
    return-void

    .line 1518
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "statisticsKey":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1519
    const-string/jumbo v1, "chat_msg_group_page"

    goto :goto_0

    .line 1520
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1521
    const-string/jumbo v1, "chat_msg_single_page"

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v()V

    return-void
.end method

.method private p()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1608
    invoke-static {}, Lder;->a()Lder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 16176
    if-eqz p0, :cond_0

    if-nez v1, :cond_1

    .line 16177
    :cond_0
    :goto_0
    return-void

    .line 16179
    :cond_1
    invoke-static {v1}, Lder;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16180
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 16181
    sget v3, Lctk$e;->chat_conv_encrypt_guide:I

    .line 16243
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 16182
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->encrypt_conv:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17218
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 17230
    iput-boolean v6, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 16184
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->guide_encrypt_chat_conv_tips:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 16185
    invoke-static {v1}, Ldjl;->w(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 16184
    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17239
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 16186
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lctk$i;->guide_more:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17263
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 16187
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lctk$i;->guide_text_i_know_that:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18259
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 16188
    new-instance v1, Lder$2;

    invoke-direct {v1, v0, v2, p0}, Lder$2;-><init>(Lder;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Landroid/app/Activity;)V

    .line 18267
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 16194
    new-instance v1, Lder$3;

    invoke-direct {v1, v0, v2}, Lder$3;-><init>(Lder;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 18271
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 16199
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v3, Lder$4;

    invoke-direct {v3, v0, p0, v2}, Lder$4;-><init>(Lder;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o()V

    return-void
.end method

.method private q()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1613
    new-instance v0, Ldea;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->l:Lddz$b;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aC:Z

    invoke-direct {v0, p0, v1, v2, v3}, Ldea;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lddz$b;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1614
    new-instance v0, Lddy;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->m:Lddx$b;

    invoke-direct {v0, p0, v1, v2}, Lddy;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lddx$b;)V

    .line 1615
    new-instance v0, Ldfh;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->n:Ldfg$b;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, v1, v2}, Ldfh;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldfg$b;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1616
    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->I()V

    return-void
.end method

.method private r()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1619
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v3, :cond_1

    .line 1620
    const/4 v2, 0x0

    .line 1648
    :cond_0
    :goto_0
    return v2

    .line 1622
    :cond_1
    const/4 v2, 0x0

    .line 1624
    .local v2, "result":Z
    const/4 v1, 0x1

    .line 1625
    .local v1, "canClickOA":Z
    const-wide/16 v4, 0x7

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1626
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Ldjl;->I(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    .line 1628
    :cond_2
    const/4 v0, 0x1

    .line 1629
    .local v0, "canClickChannel":Z
    const-wide/16 v4, 0xa

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 1630
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lddi;->e(Ljava/lang/String;)Z

    move-result v0

    .line 1632
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v3, v4, :cond_6

    .line 1633
    const/4 v2, 0x1

    .line 1634
    sget v3, Lctk$i;->conversation_kickoff:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 1642
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 1643
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 1644
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1646
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->remove()V

    goto :goto_0

    .line 1635
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v3, v4, :cond_7

    .line 1636
    const/4 v2, 0x1

    .line 1637
    sget v3, Lctk$i;->conversation_disband:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1638
    :cond_7
    if-eqz v1, :cond_8

    if-nez v0, :cond_4

    .line 1639
    :cond_8
    const/4 v2, 0x1

    .line 1640
    sget v3, Lctk$i;->conversation_org_kickoff:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aD:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aH:J

    return-wide v0
.end method

.method private s()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1652
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 1653
    .local v0, "isEncryptConversation":Z
    if-eqz v0, :cond_0

    .line 1654
    const-string/jumbo v1, "crypto"

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Enter encrypt conversation, cid="

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :goto_0
    return-void

    .line 1656
    :cond_0
    const-string/jumbo v1, "crypto"

    sget-object v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->o:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Enter unencrypted conversation, cid="

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->p:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    return-object v0
.end method

.method private u()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1661
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->O:Ldnw;

    if-nez v0, :cond_2

    .line 19062
    new-instance v0, Ldnw$a;

    invoke-direct {v0}, Ldnw$a;-><init>()V

    .line 1665
    const-string/jumbo v1, "IMAGE"

    .line 1666
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 19164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v1, :cond_6

    .line 19165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1666
    :goto_1
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$37;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$38;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$38;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object v1, p0

    .line 1665
    invoke-virtual/range {v0 .. v6}, Ldnw$a;->a(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)Ldnw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->O:Ldnw;

    .line 1687
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->N:Ldne;

    if-nez v0, :cond_3

    .line 1688
    new-instance v0, Ldne;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ldne;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->N:Ldne;

    .line 1690
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->M:Lldm;

    if-nez v0, :cond_4

    .line 1691
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->N:Ldne;

    invoke-static {v0}, Ldna;->a(Ldne;)Lldm;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->M:Lldm;

    .line 1694
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->L:Ldnf;

    if-nez v0, :cond_5

    .line 1695
    new-instance v0, Ldnf;

    const-wide/16 v2, 0xc8

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->N:Ldne;

    invoke-direct {v0, v2, v3, v1}, Ldnf;-><init>(JLdne;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->L:Ldnf;

    .line 1697
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->P:Ldxc;

    if-nez v0, :cond_0

    .line 1698
    new-instance v0, Ldxc;

    const-string/jumbo v1, "md-instant-render"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v0, v1, v2, v3}, Ldxc;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->P:Ldxc;

    goto :goto_0

    :cond_6
    move-object v3, v6

    .line 19167
    goto :goto_1
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    const-wide/32 v8, 0xea60

    .line 229
    .line 40059
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 39663
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V

    .line 41059
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 39665
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const/4 v6, 0x0

    move-wide v2, v8

    move-wide v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V

    .line 229
    return-void
.end method

.method private v()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    invoke-virtual {v0}, Ldrw;->b()V

    .line 1726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    .line 1728
    :cond_0
    new-instance v1, Ldrw;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v0, Lctk$f;->menu_input_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/MenuInputView;

    invoke-direct {v1, p0, v2, v3, v0}, Ldrw;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Lcom/alibaba/android/dingtalkim/views/MenuInputView;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    .line 1729
    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 42059
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 41670
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V

    .line 43059
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 41671
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V

    .line 229
    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    .line 44059
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 43675
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;JJLjava/lang/Object;)V

    .line 229
    return-void
.end method

.method private x()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    invoke-virtual {v0}, Ldql;->b()V

    .line 1736
    :cond_0
    new-instance v0, Ldql;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$39;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$39;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-direct {v0, p0, v1, v2}, Ldql;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ldql$a;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    .line 1744
    :cond_1
    return-void
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 45059
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$a;->a:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;

    .line 44680
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;->a(Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;)V

    .line 229
    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aJ:J

    return-wide v0
.end method

.method private y()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v12, 0x2

    .line 1934
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 1936
    .local v3, "conversationType":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->a()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    .line 19814
    new-instance v0, Lcug;

    .line 19819
    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$41;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 19815
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v7}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->L()Lcug$a;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcug;-><init>(Landroid/app/Activity;Ljava/util/List;IJLcts$b;ZLcug$a;)V

    .line 1936
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 1937
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->setAdapter(Lcqr;)V

    .line 1938
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcug;->a(Landroid/widget/ListView;)V

    .line 1940
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v11

    .line 1941
    .local v11, "isEncrypted":Z
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->setEncryptedMode(Z)V

    .line 1943
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 1945
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVoiceRecordButton()Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$42;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$42;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object v4, p0

    .line 1943
    invoke-static/range {v4 .. v10}, Ldjb;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/ListView;Lcug;Landroid/widget/Button;Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;Ldiz;Ldjb$a;)Ldjb;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    .line 1962
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    .line 20809
    iput-boolean v11, v0, Ldjb;->h:Z

    .line 1963
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    .line 21805
    iput-object v1, v0, Ldjb;->d:Ldvw;

    .line 1964
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aC:Z

    .line 22797
    iput-boolean v1, v0, Ldjb;->f:Z

    .line 1965
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->a()V

    .line 1966
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae()Z

    move-result v1

    .line 22801
    iput-boolean v1, v0, Ldjb;->g:Z

    .line 1969
    if-ne v3, v12, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->o:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 1970
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getGroupLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1971
    new-instance v0, Ldey;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-direct {v0, p0, v1, v2}, Ldey;-><init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ap:Ldey;

    .line 1972
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ap:Ldey;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23033
    iput-object v1, v0, Ldey;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 1975
    :cond_0
    invoke-static {}, Lddq;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    new-instance v0, Ldev;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-direct {v0, p0, v1, v2}, Ldev;-><init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aq:Ldev;

    .line 1979
    .end local v3    # "conversationType":I
    .end local v11    # "isEncrypted":Z
    :cond_1
    return-void

    :cond_2
    move v3, v12

    .line 1935
    goto/16 :goto_0
.end method

.method private z()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 2158
    :goto_0
    return-void

    .line 2156
    :cond_0
    new-instance v0, Ldmt;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, v1}, Ldmt;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    .line 2157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    invoke-virtual {v0}, Ldmt;->a()V

    goto :goto_0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aI:Z

    return v0
.end method


# virtual methods
.method protected final a(J)V
    .locals 1
    .param p1, "senderId"    # J

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v0, :cond_0

    .line 3829
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v0, p1, p2}, Lddx$a;->a(J)V

    .line 3831
    :cond_0
    return-void
.end method

.method protected final a(JJZ)V
    .locals 7
    .param p1, "anchorId"    # J
    .param p3, "senderId"    # J
    .param p5, "realRefresh"    # Z

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v0, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lddx$a;->a(JJZ)V

    .line 1931
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeVO;

    .prologue
    .line 4173
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3639
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 3641
    sget v2, Lctk$e;->chat_safe_model_title:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(ILjava/lang/String;)V

    .line 3647
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v2, :cond_2

    .line 3648
    const/4 v1, 0x0

    .line 3649
    .local v1, "mediaId":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_0

    .line 3650
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 3652
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3653
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v2, p1, v1}, Ldvw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    .end local v1    # "mediaId":Ljava/lang/String;
    :cond_2
    return-void

    .line 3643
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-static {v2}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 3644
    .local v0, "conversationDesIconResId":I
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(ILjava/lang/String;)V

    .line 3645
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bu:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v0, p1}, Ldvw;->c(Ljava/lang/String;)V

    .line 1502
    if-eqz p2, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v0, p2}, Ldvw;->a(I)V

    .line 1506
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JZ)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "jumpToNewWhenNotFound"    # Z

    .prologue
    .line 2943
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2950
    :cond_0
    :goto_0
    return-void

    .line 2946
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2949
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(JJZ)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x1

    .line 2124
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2125
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2126
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_1

    .line 2127
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 2128
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2129
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 2130
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 2131
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2132
    :cond_0
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aI:Z

    .line 2133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aK:J

    .line 2134
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bu:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/lang/String;)V

    .line 2137
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "isVoiceRecordMode"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2603
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 2604
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 2605
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2606
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2608
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz p1, :cond_2

    .line 2609
    const-string/jumbo v1, "voice_record_mode"

    const-string/jumbo v2, "yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 2615
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 2611
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "voice_record_mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final an()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1798
    sget v1, Lctk$f;->unread_tip_button:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1799
    .local v0, "unreadTip":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 1800
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1801
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    .line 1803
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

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    .line 1804
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1805
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1808
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->al:Lcom/alibaba/wukong/im/Message;

    .line 1809
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7
    .param p1, "statisticsFrom"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3956
    const-string/jumbo v0, "plus_boss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3957
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_privatechat_button_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3961
    :goto_0
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3962
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    if-eqz v0, :cond_0

    .line 3963
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 3964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    .line 3966
    :cond_0
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$64;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$64;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    .line 3977
    :cond_1
    return-void

    .line 3959
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_sunglass_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "autoTrigger"    # Z

    .prologue
    .line 2690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    .line 2691
    return-void
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2007
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae()Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v4

    .line 2008
    :goto_0
    sget-object v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a:Ljava/lang/String;

    const/16 v6, 0x8

    .line 2009
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae()Z

    move-result v1

    if-nez v1, :cond_1

    move v7, v4

    :goto_1
    new-instance v11, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkim/video/VideoCompressWorkImpl;-><init>()V

    move-object v1, p0

    move v8, v4

    move v9, v4

    move v10, v4

    .line 2007
    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ZZZLjava/lang/String;IZZZZLcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;)V

    .line 2010
    return-void

    :cond_0
    move v2, v3

    .line 2007
    goto :goto_0

    :cond_1
    move v7, v3

    .line 2009
    goto :goto_1
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "autoTrigger"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2699
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E()V

    .line 2700
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    if-eqz v1, :cond_0

    .line 2701
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 2702
    .local v0, "old":I
    iput v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    .line 2703
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b()V

    .line 2704
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setQuickParentVisible(Z)V

    .line 2705
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setSafeIconVisible(Z)V

    .line 2706
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMessageEditCursorVisible(Z)V

    .line 2707
    if-ne v0, v2, :cond_2

    .line 2708
    if-nez p1, :cond_0

    .line 2709
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 2717
    .end local v0    # "old":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Z)V

    .line 2718
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y:Lcro;

    if-eqz v1, :cond_1

    .line 2719
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->y:Lcro;

    invoke-virtual {v1}, Lcro;->a()V

    .line 2721
    :cond_1
    return-void

    .line 2712
    .restart local v0    # "old":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->g()V

    .line 2713
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2714
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4136
    const/4 v0, 0x0

    .line 4137
    .local v0, "consumeByPopup":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    if-eqz v1, :cond_0

    .line 4138
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    invoke-virtual {v1, p1}, Ldlx;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4140
    :cond_0
    if-eqz v0, :cond_1

    .line 4141
    const/4 v1, 0x1

    .line 4147
    :goto_0
    return v1

    .line 4144
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4147
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 2213
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2214
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2215
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2216
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2217
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2219
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2428
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C()V

    .line 23436
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    if-nez v0, :cond_11

    .line 23437
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .line 23445
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aW:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23448
    const-string/jumbo v0, "0"

    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "video_switch_key"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    invoke-virtual {v0}, Ldsf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23450
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aY:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23454
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 23456
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aZ:Landroid/view/View$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23460
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23461
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23462
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23463
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23464
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 23465
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ba:Landroid/view/View$OnClickListener;

    .line 24090
    new-instance v0, Lckj;

    iget-object v1, v7, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a:Landroid/content/Context;

    sget v2, Lcig$j;->icon_ding_fill:I

    sget v3, Lcig$j;->dt_im_message_action_ding:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lckj;-><init>(Landroid/content/Context;IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 24091
    iget-object v1, v7, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23469
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23470
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23471
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23472
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23473
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23474
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 23475
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bb:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->c(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23480
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23481
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->am()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bc:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bd:Lckj$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZILandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23485
    :cond_7
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v3

    .line 23486
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23487
    const/4 v0, 0x0

    .line 23489
    :try_start_0
    iget-object v1, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 23493
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    sget v1, Lctk$e;->chat_app_festival_redpackets_btn:I

    .line 23494
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v2, 0x0

    :cond_8
    iget-object v4, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->title:Ljava/lang/String;

    .line 23495
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget v3, Lctk$i;->dt_redenvelop_entry:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23496
    invoke-static {v4}, Lddq;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->be:Landroid/view/View$OnClickListener;

    const/4 v6, 0x0

    .line 23493
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23502
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23503
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23504
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23505
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 23506
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 23507
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 23508
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 23512
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-static {}, Lddq;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bf:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->d(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23517
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bg:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->e(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23520
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bh:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->f(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23523
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bi:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->g(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23525
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aX:Landroid/view/View$OnClickListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->h(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 23528
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_15

    .line 23529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v0

    .line 23531
    if-eqz v0, :cond_15

    .line 23532
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 23533
    if-eqz v6, :cond_d

    .line 23536
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->j:Lcom/alibaba/dingtalk/oabase/OAInterface;

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v0, v1, :cond_13

    .line 23538
    sget v0, Lctk$i;->space_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 23543
    :goto_4
    sget v1, Lctk$e;->oa_entry_icon_default:I

    .line 23544
    iget-object v0, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->iconIM:Ljava/lang/String;

    .line 23545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 23546
    iget-object v0, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    .line 23549
    :cond_e
    :try_start_1
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 23550
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_f
    move-object v2, v0

    .line 23556
    :goto_5
    const/4 v4, 0x0

    .line 23557
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v5

    .line 23558
    if-eqz v5, :cond_10

    const-string/jumbo v0, "button_app_ids"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 23559
    const-string/jumbo v0, "button_app_ids"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23560
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v8, :cond_10

    aget-object v9, v5, v0

    .line 23561
    iget-wide v10, v6, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 23562
    const/4 v4, 0x1

    .line 23568
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$52;

    invoke-direct {v5, p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$52;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Lckj$a;)V

    goto :goto_3

    .line 23439
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a()V

    goto/16 :goto_0

    .line 23490
    :catch_0
    move-exception v1

    .line 23491
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v2, v0

    goto/16 :goto_1

    .line 23495
    :cond_12
    iget-object v3, v3, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 23540
    :cond_13
    invoke-virtual {v6}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->getLocalizedName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 23552
    :catch_1
    move-exception v2

    .line 23553
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    goto :goto_5

    .line 23560
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2430
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_16

    .line 2431
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bp:Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Ljava/util/List;)V

    .line 2433
    :cond_16
    return-void
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3667
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v0, :cond_0

    .line 3668
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getMessageEditContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lddz$a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3670
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 3867
    .line 37859
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-nez v4, :cond_1

    .line 37860
    const/4 v4, 0x0

    .line 3867
    :goto_0
    if-nez v4, :cond_2

    .line 3904
    :cond_0
    :goto_1
    return-void

    .line 37862
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v4}, Ldvw;->e()V

    move v4, v5

    .line 37863
    goto :goto_0

    .line 3870
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_3

    .line 3871
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    cmp-long v4, v6, v8

    if-nez v4, :cond_4

    .line 3872
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v5, "url"

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3873
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    sget v5, Lctk$e;->ic_chat_menu_go_url:I

    invoke-virtual {v4, v10, v5}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 3874
    .local v1, "goView":Landroid/widget/ImageView;
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 3875
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3876
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v4, v1}, Ldvw;->a(Landroid/view/View;)V

    .line 3888
    .end local v1    # "goView":Landroid/widget/ImageView;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 3889
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 3890
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    sget v5, Lctk$e;->ic_actbar_conv_setting_red:I

    invoke-virtual {v4, v10, v5}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v2

    .line 3891
    .local v2, "settingView":Landroid/widget/ImageView;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 3892
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3893
    if-eqz v0, :cond_5

    const-string/jumbo v4, "announceUnread"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3894
    sget v4, Lctk$e;->ic_actbar_conv_setting_red:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3902
    :goto_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v4, v2}, Ldvw;->a(Landroid/view/View;)V

    goto/16 :goto_1

    .line 3879
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "settingView":Landroid/widget/ImageView;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Lddq;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3880
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    sget v6, Lctk$e;->ic_actbar_conv_tel:I

    invoke-virtual {v4, v10, v6}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v3

    .line 3881
    .local v3, "telView":Landroid/widget/ImageView;
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 3882
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3883
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v4, v3}, Ldvw;->a(Landroid/view/View;)V

    goto :goto_2

    .line 3896
    .end local v3    # "telView":Landroid/widget/ImageView;
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "settingView":Landroid/widget/ImageView;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 3897
    sget v4, Lctk$e;->ic_actbar_conv_setting:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 3899
    :cond_6
    sget v4, Lctk$e;->ic_act_o2o_conv_setting:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    .line 19168
    iget v0, v0, Ldql;->b:I

    .line 1748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1089
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 1090
    const/16 v6, 0x8

    if-ne p1, v6, :cond_4

    .line 1091
    const-string/jumbo v6, "send_origin_picture"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1092
    .local v3, "sendOrigin":Z
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1093
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1094
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1095
    .local v0, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget v6, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1096
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v6, :cond_0

    .line 1097
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    invoke-interface {v6, v0}, Lddz$a;->a(Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;)V

    .line 1110
    .end local v0    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_0
    :goto_0
    const-string/jumbo v6, "im"

    const-string/jumbo v7, "ChatMsgV2Activity"

    const-string/jumbo v8, "onResult:ACTION_CHOOSE_FROM_ALBUM"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .end local v3    # "sendOrigin":Z
    :cond_1
    :goto_1
    return-void

    .line 1100
    .restart local v0    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .restart local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .restart local v3    # "sendOrigin":Z
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v6, :cond_0

    .line 1101
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    invoke-interface {v6, v3, v1}, Lddz$a;->a(ZLjava/util/List;)V

    goto :goto_0

    .line 1105
    .end local v0    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "choose_picture_ids"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1106
    .local v5, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v6, :cond_0

    .line 1107
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    invoke-interface {v6, v5, v3}, Lddz$a;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 1111
    .end local v1    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .end local v3    # "sendOrigin":Z
    .end local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/16 v6, 0x9

    if-ne p1, v6, :cond_5

    .line 1112
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "key_send_custom_msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1113
    .local v2, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "file_space"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1114
    .local v4, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v6, :cond_1

    .line 1115
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    invoke-interface {v6, v2, v4}, Lddz$a;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_1

    .line 1117
    .end local v2    # "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    .end local v4    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_5
    const/16 v6, 0xa

    if-ne p1, v6, :cond_1

    .line 1118
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v6, :cond_1

    .line 1119
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v6, v7}, Lddz$a;->a(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1757
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onAttachedToWindow()V

    .line 1758
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "attach_window_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;

    .line 1759
    .local v0, "action":Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;
    if-eqz v0, :cond_0

    .line 1760
    invoke-interface {v0, p0}, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;->doAction(Landroid/app/Activity;)V

    .line 1763
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3674
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3675
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    invoke-virtual {v0}, Ldlx;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3690
    :cond_0
    :goto_0
    return-void

    .line 3678
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3681
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .line 29484
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->g:Z

    .line 3681
    if-nez v0, :cond_0

    .line 3684
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    .line 30160
    iget-boolean v0, v0, Ldru;->e:Z

    .line 3684
    if-eqz v0, :cond_4

    .line 3685
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    invoke-virtual {v0}, Ldru;->d()V

    goto :goto_0

    .line 3689
    :cond_4
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 371
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "intent_is_burn_chat"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    .line 372
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 373
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 374
    .local v7, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v0, "chat_load"

    const-string/jumbo v1, "to_chatmsg_activity"

    invoke-interface {v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v0, "chat_load"

    const-string/jumbo v1, "chat_activity_onCreate"

    invoke-interface {v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    sget v0, Lctk$i;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 383
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->H:Ljava/util/Map;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->I:Ljava/util/Map;

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->J:J

    .line 387
    new-instance v0, Ldop;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->J:J

    invoke-direct {v0, p0, v2, v3}, Ldop;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->at:Ldop;

    .line 388
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->au:J

    .line 4408
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bj:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 4411
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4412
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4413
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4414
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 4415
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$31;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$31;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bj:Landroid/content/BroadcastReceiver;

    .line 4426
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bj:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_1
    :goto_0
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    .line 399
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    const-class v2, Lcjo$a;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjo$a;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->av:Lcjo$a;

    .line 429
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->av:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 431
    sget v0, Lctk$g;->layout_new_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->setContentView(I)V

    .line 432
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 433
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->showToolbar()V

    .line 440
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/content/Intent;)V

    .line 442
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aS:Lfzk;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Lfzk;)V

    .line 4982
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ar:Landroid/net/wifi/WifiManager;

    .line 4987
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ar:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->as:Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :goto_2
    invoke-static {}, Lder;->a()Lder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 5313
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v8

    sget-object v9, Lble;->a:Ljava/lang/String;

    new-instance v0, Lder$8;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lder$8;-><init>(Lder;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcug;Lddx$a;)V

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 448
    const-string/jumbo v0, "chat_load"

    const-string/jumbo v1, "chat_activity_onCreate"

    invoke-interface {v7, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Ldlx;

    invoke-direct {v0, p0}, Ldlx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    .line 451
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$23;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$23;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    .line 6099
    iput-object v1, v0, Ldlx;->a:Ldlx$b;

    .line 462
    new-instance v0, Ldhm;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bk:Z

    invoke-direct {v0, p0, v1}, Ldhm;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aB:Ldhm;

    .line 463
    return-void

    .line 4427
    :catch_0
    move-exception v0

    .line 4428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->hideToolbar()V

    goto :goto_1

    .line 4988
    :catch_1
    move-exception v0

    .line 4989
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3909
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    .line 38160
    iget-boolean v4, v4, Ldru;->e:Z

    .line 3909
    if-eqz v4, :cond_0

    .line 3910
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .line 3948
    :goto_0
    return v4

    .line 3913
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ae()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 3914
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 3915
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x3

    const-string/jumbo v5, ""

    invoke-interface {p1, v8, v4, v9, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 3916
    .local v2, "menuSetting":Landroid/view/MenuItem;
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3917
    if-eqz v0, :cond_3

    const-string/jumbo v4, "announceUnread"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3918
    sget v4, Lctk$e;->ic_actbar_conv_setting_red:I

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3928
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "menuSetting":Landroid/view/MenuItem;
    :cond_1
    :goto_1
    const/16 v4, 0x9

    const-string/jumbo v5, ""

    invoke-interface {p1, v8, v4, v9, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 3929
    .local v1, "goUrlMenu":Landroid/view/MenuItem;
    sget v4, Lctk$e;->ic_chat_menu_go_url:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3930
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3932
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_2

    .line 3933
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 3934
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v5, "url"

    invoke-interface {v4, v5}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3935
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3948
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    goto :goto_0

    .line 3920
    .end local v1    # "goUrlMenu":Landroid/view/MenuItem;
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "menuSetting":Landroid/view/MenuItem;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v10, :cond_4

    .line 3921
    sget v4, Lctk$e;->ic_actbar_conv_setting:I

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 3923
    :cond_4
    sget v4, Lctk$e;->ic_act_o2o_conv_setting:I

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 3937
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "menuSetting":Landroid/view/MenuItem;
    .restart local v1    # "goUrlMenu":Landroid/view/MenuItem;
    :cond_5
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3940
    :cond_6
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3941
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Lddq;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3942
    sget v4, Lctk$i;->act_title_conference:I

    invoke-interface {p1, v8, v9, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 3943
    .local v3, "menuTel":Landroid/view/MenuItem;
    sget v4, Lctk$e;->ic_actbar_conv_tel:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3944
    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3694
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    if-eqz v0, :cond_0

    .line 3695
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ai:Ldmg;

    invoke-virtual {v0}, Ldmg;->a()V

    .line 3697
    :cond_0
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 31158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aR:Lddu;

    if-eqz v0, :cond_1

    .line 31159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aR:Lddu;

    invoke-virtual {v0}, Lddu;->a()V

    .line 31703
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->L:Ldnf;

    if-eqz v0, :cond_2

    .line 31704
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->L:Ldnf;

    invoke-virtual {v0}, Ldnf;->a()V

    .line 31706
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->N:Ldne;

    if-eqz v0, :cond_3

    .line 31707
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->N:Ldne;

    invoke-virtual {v0}, Ldne;->a()V

    .line 31709
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->P:Ldxc;

    if-eqz v0, :cond_4

    .line 31710
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->P:Ldxc;

    invoke-virtual {v0}, Ldxc;->a()V

    .line 3700
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    if-eqz v0, :cond_5

    .line 3701
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    invoke-virtual {v0}, Ldql;->b()V

    .line 3702
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ax:Ldql;

    .line 3704
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v0, :cond_6

    .line 3705
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 32403
    iput-object v2, v0, Lcug;->d:Landroid/view/View$OnClickListener;

    .line 3706
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    .line 3709
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    if-eqz v0, :cond_7

    .line 3710
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    .line 33314
    iput-object v2, v0, Ldlx;->a:Ldlx$b;

    .line 3711
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aA:Ldlx;

    .line 3714
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_8

    .line 3715
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTextChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$a;)V

    .line 3718
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_9

    .line 3719
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v0}, Ldvw;->b()V

    .line 3720
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v0}, Ldvw;->d()V

    .line 3723
    :cond_9
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ldjz;->a(I)V

    .line 3725
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->q:Landroid/os/Handler;

    .line 3727
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    if-eqz v0, :cond_a

    .line 3728
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    .line 34131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 3729
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->e:Ldiz;

    .line 34924
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3735
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lctj;->a(Ljava/lang/Class;)V

    .line 3736
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 3738
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bn:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3740
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v0, :cond_b

    .line 3741
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v0}, Lddx$a;->i()V

    .line 3743
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    if-eqz v0, :cond_c

    .line 3744
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aP:Lddz$a;

    invoke-interface {v0}, Lddz$a;->i()V

    .line 3747
    :cond_c
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldjc;->b(Ljava/lang/String;)V

    .line 3748
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    if-eqz v0, :cond_d

    .line 3749
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->e()V

    .line 3750
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->B:Ldjb;

    invoke-virtual {v0}, Ldjb;->f()V

    .line 3753
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    if-eqz v0, :cond_e

    .line 3754
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    invoke-virtual {v0}, Ldru;->b()V

    .line 3755
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->F:Ldru;

    .line 3758
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->av:Lcjo$a;

    if-eqz v0, :cond_f

    .line 3759
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->av:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 3760
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->av:Lcjo$a;

    .line 3763
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    .line 3764
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3767
    :cond_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    if-eqz v0, :cond_11

    .line 3768
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    invoke-virtual {v0}, Ldqq;->b()V

    .line 3769
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 3772
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    if-eqz v0, :cond_12

    .line 3773
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 3774
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    .line 3777
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    if-eqz v0, :cond_13

    .line 3778
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    .line 35181
    invoke-virtual {v0}, Ldjx;->b()V

    .line 3779
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bq:Ldjx;

    .line 3782
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    if-eqz v0, :cond_14

    .line 3783
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    invoke-virtual {v0}, Ldrw;->b()V

    .line 3784
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->az:Ldrw;

    .line 3792
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    if-eqz v0, :cond_15

    .line 3793
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a()V

    .line 3794
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->s:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    .line 3797
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aB:Ldhm;

    if-eqz v0, :cond_16

    .line 3798
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aB:Ldhm;

    .line 36093
    iput-object v2, v0, Ldhm;->a:Ldhm$a;

    .line 3801
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    if-eqz v0, :cond_17

    .line 3802
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    invoke-virtual {v0}, Ldmt;->d()V

    .line 3805
    :cond_17
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lebl;->a(I)V

    .line 3806
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lebn;->a(I)V

    .line 3808
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aS:Lfzk;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Lfzk;)V

    .line 36433
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bj:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_18

    .line 36434
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->bj:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3812
    :cond_18
    invoke-static {}, Lczx;->b()V

    .line 3814
    invoke-static {}, Ldes;->a()Ldes;

    move-result-object v0

    .line 37058
    iget-object v0, v0, Ldes;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3816
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onDestroy()V

    .line 3817
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

    .line 2800
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 2801
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2812
    :goto_0
    return v0

    .line 2804
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ad:I

    if-eqz v1, :cond_1

    .line 2805
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    goto :goto_0

    .line 2808
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->j()V

    .line 2812
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2809
    :cond_3
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3413
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3416
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v1

    invoke-virtual {v1}, Lctj;->c()V

    .line 3419
    if-eqz p1, :cond_0

    .line 3420
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->setIntent(Landroid/content/Intent;)V

    .line 25994
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v1, :cond_1

    .line 25995
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v1}, Lcug;->notifyDataSetChanged()V

    .line 3423
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Landroid/content/Intent;)V

    .line 3425
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3426
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "attach_window_action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;

    .line 3427
    .local v0, "action":Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;
    if-eqz v0, :cond_2

    .line 3428
    invoke-interface {v0, p0}, Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;->doAction(Landroid/app/Activity;)V

    .line 3431
    .end local v0    # "action":Lcom/alibaba/android/dingtalkim/base/model/ActivityAction;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 4049
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 4051
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->j()V

    .line 4052
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->finish()V

    goto :goto_0

    .line 4055
    :sswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->H()V

    .line 4056
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 4057
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4058
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4059
    .local v7, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "mtm"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4060
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_setting_set_click"

    invoke-interface {v0, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 4070
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v8

    .line 4071
    .local v8, "scheme":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4072
    const-string/jumbo v8, "https://qr.dingtalk.com/fileshelper/settings.html"

    .line 4074
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->p:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$67;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$67;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    invoke-interface {v0, v8, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 4064
    .end local v7    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "scheme":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4065
    .restart local v7    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "oto"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4066
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_setting_set_click"

    invoke-interface {v0, v1, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 4091
    .end local v7    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_sunglass_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4093
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    if-eqz v0, :cond_3

    .line 4095
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 4096
    iput-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    .line 4098
    :cond_3
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->g:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$68;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$68;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->ay:Ldbw;

    goto/16 :goto_0

    .line 4111
    :sswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_4

    .line 4112
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_1

    .line 4113
    :cond_4
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    .line 4114
    .local v9, "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v9, p0, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 4117
    .end local v9    # "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    :sswitch_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4049
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
    .locals 1

    .prologue
    .line 1076
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onPause()V

    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->c(Z)V

    .line 1078
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0}, Ldjc;->b()V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aa:Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/VoiceRecordView;->a()V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->b()V

    .line 1085
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1044
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onResume()V

    .line 1045
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1046
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "chat_load"

    const-string/jumbo v2, "chat_activity_onResume"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v1

    invoke-virtual {v1}, Ldjc;->a()V

    .line 1050
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldjc;->a(Ljava/lang/String;)V

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v1}, Lddx$a;->b()V

    .line 1057
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aL:J

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "end :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1061
    const-string/jumbo v1, "chat_load"

    const-string/jumbo v2, "chat_activity_onResume"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v1

    invoke-virtual {v1}, Ldjz;->b()V

    .line 1065
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    if-eqz v1, :cond_2

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->u:Lcug;

    invoke-virtual {v1}, Lcug;->notifyDataSetChanged()V

    .line 1069
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    if-eqz v1, :cond_3

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    invoke-virtual {v1}, Ldmt;->c()V

    .line 1072
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3436
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onStop()V

    .line 3437
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aI:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    if-eq v0, v1, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$TypingType;->TEXT:Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V

    .line 3439
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->CANCEL:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aN:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    .line 3442
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    if-eqz v0, :cond_1

    .line 3443
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->Q:Ldmt;

    .line 26122
    invoke-virtual {v0}, Ldmt;->f()V

    .line 3445
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2023
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->onWindowFocusChanged(Z)V

    .line 2024
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 3536
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->supportInvalidateOptionsMenu()V

    .line 3537
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k()V

    .line 3538
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aB:Ldhm;

    if-eqz v0, :cond_0

    .line 3539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->aB:Ldhm;

    invoke-virtual {v0}, Ldhm;->a()V

    .line 3541
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->t:Ldqq;

    .line 25321
    iget-boolean v0, v0, Ldqq;->f:Z

    .line 2929
    if-eqz v0, :cond_1

    .line 2931
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c()V

    .line 2932
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(ZZ)V

    .line 2939
    :cond_0
    :goto_0
    return-void

    .line 2934
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    if-eqz v0, :cond_0

    .line 2935
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->k:Lddx$a;

    invoke-interface {v0}, Lddx$a;->a()V

    goto :goto_0
.end method
