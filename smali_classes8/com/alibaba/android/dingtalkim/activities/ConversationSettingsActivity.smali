.class public Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
.super Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Leao$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;,
        Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private V:Landroid/view/View;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/view/View;

.field private Y:Landroid/widget/ToggleButton;

.field private Z:Landroid/widget/TextView;

.field private aA:Landroid/widget/ToggleButton;

.field private aB:Landroid/view/View;

.field private aC:Landroid/widget/Button;

.field private aD:Landroid/widget/Button;

.field private aE:Landroid/widget/TextView;

.field private aF:Landroid/view/View;

.field private aG:Landroid/widget/TextView;

.field private aH:Landroid/widget/TextView;

.field private aI:Landroid/widget/ToggleButton;

.field private aJ:Landroid/widget/TextView;

.field private aK:Landroid/widget/ToggleButton;

.field private aL:Landroid/widget/ToggleButton;

.field private aM:Landroid/widget/ToggleButton;

.field private aN:Landroid/widget/ToggleButton;

.field private aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private aP:Landroid/widget/TextView;

.field private aQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;"
        }
    .end annotation
.end field

.field private aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private aS:I

.field private aT:Landroid/widget/LinearLayout;

.field private aU:Landroid/widget/ToggleButton;

.field private aV:Landroid/widget/LinearLayout;

.field private aW:Landroid/widget/TextView;

.field private aX:Landroid/widget/LinearLayout;

.field private aY:Landroid/widget/TextView;

.field private aZ:Landroid/widget/TextView;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/widget/TextView;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/view/View;

.field private af:Landroid/view/View;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/view/View;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/view/View;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/view/View;

.field private ao:Landroid/view/View;

.field private ap:Landroid/widget/TextView;

.field private aq:I

.field private ar:Landroid/view/View;

.field private as:J

.field private at:Landroid/view/View;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/view/View;

.field private aw:Landroid/view/View;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/ToggleButton;

.field private bA:Landroid/view/View$OnClickListener;

.field private bB:Landroid/view/View$OnClickListener;

.field private bC:Landroid/view/View$OnClickListener;

.field private bD:Landroid/view/View$OnClickListener;

.field private bE:Landroid/view/View$OnClickListener;

.field private final bF:I

.field private final bG:I

.field private final bH:I

.field private final bI:I

.field private bJ:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private bK:Landroid/view/View$OnClickListener;

.field private final bL:Ljava/lang/String;

.field private bM:Landroid/graphics/Rect;

.field private bN:Landroid/graphics/Rect;

.field private bO:Landroid/graphics/Rect;

.field private bP:Landroid/view/View;

.field private bQ:I

.field private bR:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

.field private bS:I

.field private bT:Z

.field private bU:Z

.field private ba:Z

.field private bb:Leao$a;

.field private bc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private be:Ldha;

.field private bf:Z

.field private bg:Z

.field private bh:Z

.field private bi:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private bj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private bk:Z

.field private bl:Lcom/alibaba/wukong/im/Member$RoleType;

.field private bm:Landroid/content/BroadcastReceiver;

.field private bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private bo:Landroid/widget/LinearLayout;

.field private bp:Landroid/widget/TextView;

.field private bq:Landroid/widget/ImageView;

.field private br:Landroid/widget/TextView;

.field private bs:Landroid/widget/TextView;

.field private bt:Landroid/widget/ImageView;

.field private bu:I

.field private bv:I

.field private bw:Landroid/view/View;

.field private bx:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field private by:Landroid/view/View$OnClickListener;

.field private bz:Landroid/view/View$OnClickListener;

.field public final c:I

.field public final d:I

.field public final e:I

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

.field private h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

.field private i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:J

.field private u:Z

.field private v:Z

.field private w:J

.field private x:J

.field private y:Ldbw;

.field private z:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;-><init>()V

    .line 202
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k:Ljava/util/HashMap;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    .line 210
    iput v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->q:I

    .line 211
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    .line 212
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    .line 214
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    .line 215
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    .line 275
    iput v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c:I

    .line 276
    iput v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->d:I

    .line 277
    iput v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e:I

    .line 304
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    .line 334
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    .line 343
    sget-object v0, Lcom/alibaba/wukong/im/Member$RoleType;->ORDINARY:Lcom/alibaba/wukong/im/Member$RoleType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bl:Lcom/alibaba/wukong/im/Member$RoleType;

    .line 345
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bm:Landroid/content/BroadcastReceiver;

    .line 627
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$23;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$23;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bx:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 2422
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->by:Landroid/view/View$OnClickListener;

    .line 2423
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bz:Landroid/view/View$OnClickListener;

    .line 2424
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bA:Landroid/view/View$OnClickListener;

    .line 2425
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bB:Landroid/view/View$OnClickListener;

    .line 2426
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bC:Landroid/view/View$OnClickListener;

    .line 2427
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bD:Landroid/view/View$OnClickListener;

    .line 2428
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bE:Landroid/view/View$OnClickListener;

    .line 3202
    iput v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bF:I

    .line 3203
    iput v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bG:I

    .line 3204
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bH:I

    .line 3206
    iput v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bI:I

    .line 3224
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bK:Landroid/view/View$OnClickListener;

    .line 3935
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bL:Ljava/lang/String;

    .line 4700
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$76;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bR:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

    .line 4744
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    return v0
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 30476
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 30480
    :cond_0
    :goto_0
    return-void

    .line 30479
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30480
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$42;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$42;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 30496
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p()Z

    move-result v2

    .line 30480
    invoke-static {p0, v0, v1, v2}, Ldjl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcma;Z)V

    goto :goto_0

    .line 30498
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(J)V

    goto :goto_0
.end method

.method static synthetic D(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 30755
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 30756
    :cond_0
    :goto_0
    return-void

    .line 30758
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$48;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic E(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 30785
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30786
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p0, v0}, Ldjl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    :goto_0
    return-void

    .line 30788
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$49;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$49;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method static synthetic F(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aL:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Leao$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bb:Leao$a;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 30853
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30854
    sget v1, Lctk$i;->conversation_disband_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$69;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$69;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 30855
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->conversation_disband_ok:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$68;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$68;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 30860
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 30895
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 188
    return-void
.end method

.method static synthetic M(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 31744
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31745
    sget v1, Lctk$i;->conversation_quit_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$64;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$64;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 31746
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$63;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 31751
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 31805
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 188
    return-void
.end method

.method static synthetic N(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 31809
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31810
    sget v1, Lctk$i;->conversation_list_clear:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$66;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$66;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 31811
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 31816
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 31849
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 188
    return-void
.end method

.method static synthetic O(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->az:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 32524
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/modify_group_nick"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$75;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$75;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 188
    return-void
.end method

.method static synthetic R(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aU:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic S(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->q:I

    return v0
.end method

.method static synthetic U(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic V(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ldbw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->y:Ldbw;

    return-object v0
.end method

.method static synthetic W(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic X(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Y:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic Y(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/wukong/im/Member$RoleType;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bl:Lcom/alibaba/wukong/im/Member$RoleType;

    return-object v0
.end method

.method static synthetic Z(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bj:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;FFF)F
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 188
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 39722
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 188
    return v0
.end method

.method private static a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 4675
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4676
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez p0, :cond_0

    .line 4680
    :goto_0
    return-object v0

    .line 4679
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private a(JII)Landroid/view/View;
    .locals 5
    .param p1, "id"    # J
    .param p3, "iconRes"    # I
    .param p4, "nameStringRes"    # I

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lctk$g;->item_conversation_setting_function:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 876
    .local v0, "view":Landroid/view/View;
    sget v1, Lctk$f;->iv_function_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 877
    sget v1, Lctk$f;->tv_function_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 879
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bJ:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Member$RoleType;)Lcom/alibaba/wukong/im/Member$RoleType;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Member$RoleType;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bl:Lcom/alibaba/wukong/im/Member$RoleType;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ldbw;)Ldbw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ldbw;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->y:Ldbw;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Leao$a;)Leao$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Leao$a;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bb:Leao$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 11
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3058
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ak:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 3092
    :cond_0
    :goto_0
    return-void

    .line 3061
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3062
    invoke-static {v4}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3065
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "member, setConversationMemberCount, has "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \u4eba"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3066
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ak:Landroid/widget/TextView;

    sget v5, Lctk$i;->member_count:I

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3067
    const/16 v1, 0x3e8

    .line 3068
    .local v1, "memberLimit":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_3

    .line 3069
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getMemberLimit()I

    move-result v1

    .line 3071
    :cond_3
    if-nez v1, :cond_4

    .line 3072
    const/16 v1, 0x3e8

    .line 3074
    :cond_4
    if-ne p1, v1, :cond_7

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    if-eqz v4, :cond_7

    .line 3075
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ak:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->text_color_red:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3076
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3078
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Ldjl;->x(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3079
    sget v4, Lctk$i;->and_im_group_member_expand_strict_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_lt&questionId=201602065877"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3083
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 3084
    .local v3, "spanned":Landroid/text/Spanned;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3085
    .local v2, "spannableString":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Landroid/text/Spannable;Landroid/view/View;)V

    .line 3086
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3087
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 3081
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    .end local v3    # "spanned":Landroid/text/Spanned;
    :cond_6
    sget v4, Lctk$i;->and_im_group_member_expand_normal_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_lt&questionId=201602065877"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    .line 3089
    .end local v0    # "content":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ak:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->text_color_hint:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3090
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private static a(Landroid/text/Spannable;Landroid/view/View;)V
    .locals 10
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 4792
    if-eqz p1, :cond_0

    .line 4793
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 4794
    .local v2, "spans":[Landroid/text/style/URLSpan;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 4798
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v2, v5

    .line 4799
    .local v4, "urlSpan":Landroid/text/style/URLSpan;
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 4800
    .local v3, "start":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 4801
    .local v0, "end":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 4802
    .local v1, "flags":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4803
    new-instance v7, Lcqk;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcqk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v7, v3, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4798
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4808
    .end local v0    # "end":I
    .end local v1    # "flags":I
    .end local v2    # "spans":[Landroid/text/style/URLSpan;
    .end local v3    # "start":I
    .end local v4    # "urlSpan":Landroid/text/style/URLSpan;
    :cond_0
    return-void
.end method

.method private static a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V
    .locals 2
    .param p0, "adsView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p1, "show"    # Z

    .prologue
    .line 2194
    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    .line 2195
    .local v0, "viewObject":Lcry;
    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v1

    .line 6047
    iput v1, v0, Lcry;->a:I

    .line 6055
    iput-boolean p1, v0, Lcry;->b:Z

    .line 2197
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    .line 2198
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;II)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 188
    .line 38728
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bS:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bu:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aS:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 38729
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bw:Landroid/view/View;

    .line 38730
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 38731
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bS:I

    .line 38732
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bu:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aS:I

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 38733
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bw:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38734
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bS:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bu:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aS:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 38736
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bS:I

    .line 38737
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bw:Landroid/view/View;

    .line 38738
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 38739
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 38740
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bw:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 188
    .line 17501
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$74;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$74;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, p1, p2, v1}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNick(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Landroid/view/View;Landroid/view/View;F)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 188
    .line 40652
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 40655
    sub-float v1, v4, p3

    .line 40656
    sub-float v2, v4, p3

    .line 40657
    neg-float v3, p3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 40658
    neg-float v4, p3

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    sub-float/2addr v0, v4

    .line 40660
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 40661
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 40662
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 40663
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 40665
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bO:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bO:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bO:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 40667
    neg-float v1, p3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bO:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 40668
    neg-float v2, p3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 40670
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 40671
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 188
    .line 38640
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 38641
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bM:Landroid/graphics/Rect;

    .line 38643
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 38644
    invoke-static {p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bN:Landroid/graphics/Rect;

    .line 38646
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bO:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 38647
    invoke-static {p3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bO:Landroid/graphics/Rect;

    .line 188
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    .param p2, "x2"    # Z

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 188
    .line 33959
    sget v0, Lctk$f;->ll_industry_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 33960
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33961
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$30;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$30;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33972
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->orgCount:I

    if-lez v0, :cond_0

    .line 33973
    sget v0, Lctk$f;->tv_industry_company_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33974
    sget v1, Lctk$f;->tv_industry_split:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33975
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33976
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33977
    sget v1, Lctk$i;->dt_common_group_enterprise_count:I

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->stat:Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;

    iget v3, v3, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupStatObject;->orgCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33980
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 33981
    sget v0, Lctk$f;->label_industry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 33982
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 33983
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v3

    .line 33984
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 33985
    if-le v3, v4, :cond_2

    move v2, v3

    .line 33986
    :goto_0
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    move v7, v8

    .line 33987
    :goto_1
    if-ge v7, v2, :cond_5

    .line 33989
    if-ge v7, v4, :cond_7

    .line 33990
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/industry/IndustryGroupSimpleInfoObject;->labels:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    .line 33994
    :goto_2
    if-ge v7, v3, :cond_6

    .line 33995
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    .line 33998
    :goto_3
    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 33999
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 33987
    :cond_1
    :goto_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 33985
    goto :goto_0

    .line 34000
    :cond_3
    if-eqz v6, :cond_1

    .line 34001
    if-nez v1, :cond_4

    .line 34002
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 34003
    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v1, v11, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 34004
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34005
    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 34006
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34007
    invoke-virtual {v1, v9, v8, v9, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 34008
    const/16 v10, 0x10

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 34009
    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {p0, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 34010
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 34012
    :cond_4
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 34013
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34014
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lctk$c;->ui_common_green_icon_bg_color:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 34015
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->requestLayout()V

    goto :goto_4

    .line 188
    :cond_5
    return-void

    :cond_6
    move-object v1, v5

    goto :goto_3

    :cond_7
    move-object v6, v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 188
    .line 29035
    if-eqz p1, :cond_1

    .line 29038
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29041
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 29042
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 29043
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 29044
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->n()V

    .line 29046
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "member, handleConversationChanged, has "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u4eba"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29047
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(I)V

    .line 29049
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_2

    .line 29050
    sget v0, Lctk$i;->conversation_kickoff:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(I)V

    :cond_1
    :goto_0
    return-void

    .line 29051
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_1

    .line 29052
    sget v0, Lctk$i;->conversation_disband_warning:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;J)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 188
    .line 33305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "convertToGroup, cid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", oid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33306
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$39;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$39;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V

    invoke-interface {v0, p1, p2, p3, v1}, Ldxx;->a(Ljava/lang/String;JLcma;)V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 188
    .line 35028
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.title.CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35029
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35030
    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35031
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 188
    .line 36374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36375
    const-string/jumbo v1, "avatar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36376
    const-string/jumbo v1, "use_enterprise_icon"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36377
    const-string/jumbo v1, "enterprise_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36378
    const-string/jumbo v1, "enterprise_name_suffix_icon_res_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36379
    const-string/jumbo v1, "enterprise_icon"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36380
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 188
    .line 14510
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 14511
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14512
    new-instance v0, Ldha;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 14513
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {v0, p0, v1, v2}, Ldha;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->be:Ldha;

    .line 14514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->be:Ldha;

    invoke-virtual {v0, p1}, Ldha;->a(Ljava/util/List;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 188
    .line 16614
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 16615
    sget v0, Lctk$i;->removing:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(I)V

    .line 16616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16618
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 16619
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16621
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    .line 16622
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16624
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$61;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;[Ljava/lang/Long;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 188
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 188
    .line 14572
    sget v0, Lctk$i;->adding:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(I)V

    .line 14573
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$60;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;Ljava/util/List;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;Ljava/util/List;ZJ)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z
    .param p4, "x4"    # J

    .prologue
    .line 188
    .line 36712
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36713
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 36714
    :cond_0
    :goto_0
    return-void

    .line 36716
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$62;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$62;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)V

    .line 36736
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 36737
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    .line 36738
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v7, p1

    .line 36737
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 7
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4436
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 4469
    :cond_0
    :goto_0
    return-void

    .line 4440
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4441
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 4442
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4443
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4445
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v4, Lctk$e;->default_group_icon:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 4446
    invoke-static {}, Ldjf;->a()Ldjf;

    move-result-object v4

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 12063
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12064
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12065
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v6, Ldjf$1;

    invoke-direct {v6, v4}, Ldjf$1;-><init>(Ldjf;)V

    invoke-interface {v1, v5, v6}, Lcom/alibaba/wukong/im/ConversationService;->listGroupIcons(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 4449
    .end local v0    # "icon":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 4450
    .local v2, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$72;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$72;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;I)V
    .locals 13
    .param p2, "totalNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v12, 0x7

    const/4 v6, 0x0

    .line 3527
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 3528
    if-nez p1, :cond_1

    move v3, v6

    .line 3529
    .local v3, "size":I
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3530
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-lez v3, :cond_2

    .line 3532
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    if-eq p1, v7, :cond_0

    .line 3533
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3534
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3536
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 3537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3538
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k:Ljava/util/HashMap;

    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3528
    .end local v3    # "size":I
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 3541
    .restart local v3    # "size":I
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    if-le v3, v12, :cond_5

    .line 3542
    invoke-interface {p1, v6, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3548
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    .line 3549
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v6, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setNumColumns(I)V

    .line 3550
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 3551
    .local v0, "padding":I
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 3552
    .local v2, "screenWidth":I
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    sub-int v6, v2, v6

    const/high16 v7, 0x42100000    # 36.0f

    .line 3553
    invoke-static {p0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x7

    sub-int v1, v6, v7

    .line 3554
    .local v1, "paddingTotal":I
    if-lez v1, :cond_4

    .line 3555
    div-int/lit8 v0, v1, 0x7

    .line 3557
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setHorizontalSpacing(I)V

    .line 3558
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3559
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3560
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, p2, :cond_6

    .line 3561
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(I)V

    .line 3565
    :goto_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;->notifyDataSetChanged()V

    .line 3569
    .end local v0    # "padding":I
    .end local v1    # "paddingTotal":I
    .end local v2    # "screenWidth":I
    .end local v3    # "size":I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :goto_4
    return-void

    .line 3544
    .restart local v3    # "size":I
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_5
    if-lez v3, :cond_3

    .line 3545
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 3563
    .restart local v0    # "padding":I
    .restart local v1    # "paddingTotal":I
    .restart local v2    # "screenWidth":I
    :cond_6
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(I)V

    goto :goto_3

    .line 3567
    .end local v0    # "padding":I
    .end local v1    # "paddingTotal":I
    .end local v2    # "screenWidth":I
    .end local v3    # "size":I
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setVisibility(I)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;J)Z
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 188
    .line 36698
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    cmp-long v0, p2, v6

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 36704
    :goto_0
    return v0

    .line 36701
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 36702
    if-eqz v0, :cond_2

    .line 36703
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    cmp-long v0, v4, p2

    if-eqz v0, :cond_2

    :cond_3
    move v0, v1

    .line 36704
    goto :goto_0

    .line 36708
    :cond_4
    const/4 v0, 0x1

    .line 188
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    return p1
.end method

.method static synthetic aA(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->F:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aB(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aa(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    return v0
.end method

.method static synthetic ab(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 34930
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34931
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic ad(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ai:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ae(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 36000
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36001
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->showLoadingDialog()V

    .line 36002
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$54;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$54;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 36020
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 36021
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    .line 36073
    if-eqz v0, :cond_0

    .line 36077
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36078
    const-string/jumbo v1, "404"

    const-string/jumbo v2, "param is error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 36022
    :cond_0
    :goto_0
    return-void

    .line 36082
    :cond_1
    const-class v1, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;

    .line 36083
    if-eqz v1, :cond_0

    .line 36086
    new-instance v3, Ldmp$3;

    invoke-direct {v3, v0}, Ldmp$3;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;->getConferenceGroupUrl(Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 36023
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic af(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bJ:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic ag(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic ah(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    return v0
.end method

.method static synthetic ai(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    return v0
.end method

.method static synthetic aj(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ak(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aC:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic al(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aD:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic am(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e()V

    return-void
.end method

.method static synthetic an(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->q()V

    return-void
.end method

.method static synthetic ao(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i()V

    return-void
.end method

.method static synthetic ap(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aq(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ar(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o()V

    return-void
.end method

.method static synthetic as(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic at(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k()V

    return-void
.end method

.method static synthetic au(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq:I

    return v0
.end method

.method static synthetic av(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aw(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 37684
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ar:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    .line 37685
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getNavButtonView()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ar:Landroid/view/View;

    .line 37687
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ar:Landroid/view/View;

    .line 188
    return-object v0
.end method

.method static synthetic ax(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic ay(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->z:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    return-object v0
.end method

.method static synthetic az(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bv:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aS:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 5
    .param p1, "res"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3095
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3096
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 3097
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 3098
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$55;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$55;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 3099
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3110
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3111
    return-void
.end method

.method private b(J)V
    .locals 9
    .param p1, "selectOrgId"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 2538
    :cond_0
    :goto_0
    return-void

    .line 2508
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2509
    .local v7, "bundle":Landroid/os/Bundle;
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    if-eqz v0, :cond_3

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    .line 2510
    const-string/jumbo v0, "choose_enterprise_oid"

    invoke-virtual {v7, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2511
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2522
    :goto_1
    const-string/jumbo v0, "intent_key_is_memory_mode"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2523
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "IDENTIFIY_CONVERSATION_SETTING"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2525
    const-string/jumbo v0, "choose_people_from_contact_logic"

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$CreateConversationLogic;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2527
    :cond_2
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v1, "single_add_member"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    const-string/jumbo v0, "show_local_contact"

    invoke-static {}, Ldjl;->f()Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2529
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2531
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 2533
    :goto_2
    invoke-static {v1}, Ldjl;->p(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v4

    sget v5, Lctk$i;->create_conversation_choose_limit:I

    move-object v1, p0

    .line 2529
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;IIIZLandroid/os/Bundle;)V

    goto :goto_0

    .line 2512
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2513
    cmp-long v0, p1, v4

    if-lez v0, :cond_4

    .line 2514
    const-string/jumbo v0, "choose_enterprise_oid"

    invoke-virtual {v7, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2515
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2517
    :cond_4
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2520
    :cond_5
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2531
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 188
    .line 29855
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 29856
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 29857
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29858
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->sync()V

    .line 29859
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bb:Leao$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bl:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-interface {v0, v1}, Leao$a;->a(Lcom/alibaba/wukong/im/Member$RoleType;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 188
    .line 37504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 37505
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 37506
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37509
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37510
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37514
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;->getCount()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 37519
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Ljava/util/List;I)V

    .line 37521
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 188
    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 25
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 4123
    const/4 v7, 0x0

    .line 4124
    .local v7, "hasGroupTagSettings":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4126
    const/4 v7, 0x1

    .line 4128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8031
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v19

    .line 4134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ldik;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v10

    .line 4136
    .local v10, "iconUrl":Ljava/lang/String;
    invoke-static {v10}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 4137
    const-string/jumbo v19, "IMAGE"

    invoke-static/range {v19 .. v19}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4138
    .local v13, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bk:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    sget v19, Lctk$d;->im_group_tag_width:I

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 4139
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bk:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    sget v19, Lctk$d;->im_group_tag_height:I

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 4140
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 4141
    .local v12, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v18

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4142
    iput v8, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v10, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 4145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bq:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 4146
    move/from16 v0, v18

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4147
    iput v8, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bq:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bq:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v10, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 4150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bq:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9031
    .end local v8    # "height":I
    .end local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v18    # "width":I
    :goto_2
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v19

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v20, v0

    .line 9078
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v21

    if-nez v21, :cond_f

    :cond_0
    const/16 v17, 0x0

    .line 4156
    .local v17, "tagName":Ljava/lang/String;
    :goto_3
    invoke-static/range {v17 .. v17}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 4157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4162
    .end local v10    # "iconUrl":Ljava/lang/String;
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    move/from16 v19, v0

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    move/from16 v19, v0

    if-eqz v19, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    move/from16 v19, v0

    if-eqz v19, :cond_27

    .line 4163
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    const-string/jumbo v20, "id"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4166
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 4167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    const-string/jumbo v20, "orgId"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4169
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4170
    .local v14, "orgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4172
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 4173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->R:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4174
    if-nez v7, :cond_4

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10407
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 10408
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 10409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->t(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 10410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_conversation_all_members_tip:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4202
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    const-string/jumbo v20, "deptId"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_23

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aE:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aF:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4206
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 4207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4213
    :cond_5
    :goto_6
    if-nez v7, :cond_7

    .line 4215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    .line 4216
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    .line 4217
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v19

    const/16 v22, 0x0

    .line 4215
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v16

    .line 4218
    .local v16, "resource":I
    if-eqz v16, :cond_6

    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4220
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4221
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4225
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_im_group_type_dept_service:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4233
    .end local v16    # "resource":I
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    const-string/jumbo v20, "deptName"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4234
    .local v5, "deptName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4236
    .local v4, "autoAdd":Z
    :try_start_0
    const-string/jumbo v19, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v20, v0

    const-string/jumbo v21, "autoAddSwitch"

    invoke-interface/range {v20 .. v21}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4241
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4246
    if-eqz v4, :cond_20

    .line 4247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 4248
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->conversation_enterprise_auto_add_notification:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11022
    .end local v4    # "autoAdd":Z
    .end local v5    # "deptName":Ljava/lang/String;
    .end local v14    # "orgName":Ljava/lang/String;
    :cond_9
    :goto_9
    invoke-static {}, Lebc;->f()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 11026
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_37

    .line 11027
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aX:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 11028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aX:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11041
    :cond_b
    :goto_a
    return-void

    .line 4138
    .restart local v10    # "iconUrl":Ljava/lang/String;
    .restart local v13    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_c
    sget v19, Lctk$d;->im_group_tag_size_for_global:I

    goto/16 :goto_0

    .line 4139
    .restart local v18    # "width":I
    :cond_d
    sget v19, Lctk$d;->im_group_tag_size_for_global:I

    goto/16 :goto_1

    .line 4152
    .end local v13    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v18    # "width":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bq:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 9079
    :cond_f
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ldik;->b(Ljava/util/Map;)Ldij;

    move-result-object v19

    .line 9080
    if-eqz v19, :cond_15

    .line 9081
    invoke-static {}, Lcms;->k()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 9082
    move-object/from16 v0, v19

    iget-object v0, v0, Ldij;->e:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 9083
    :cond_10
    invoke-static {}, Lcms;->f()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 9084
    move-object/from16 v0, v19

    iget-object v0, v0, Ldij;->f:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 9085
    :cond_11
    invoke-static {}, Lcms;->g()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 9086
    move-object/from16 v0, v19

    iget-object v0, v0, Ldij;->g:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 9087
    :cond_12
    invoke-static {}, Lcms;->h()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 9088
    move-object/from16 v0, v19

    iget-object v0, v0, Ldij;->h:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 9089
    :cond_13
    invoke-static {}, Lcms;->i()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 9090
    move-object/from16 v0, v19

    iget-object v0, v0, Ldij;->i:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 9091
    :cond_14
    invoke-static {}, Lcms;->j()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 9092
    move-object/from16 v0, v19

    iget-object v0, v0, Ldij;->j:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 9095
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 4180
    .end local v10    # "iconUrl":Ljava/lang/String;
    .restart local v14    # "orgName":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->R:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4181
    if-nez v7, :cond_17

    .line 4182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4186
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 4187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->conversation_enterprise_prompt_owner:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 4188
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 9395
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bf:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 10380
    invoke-static {}, Ldfm;->b()Z

    move-result v19

    .line 9395
    if-eqz v19, :cond_4

    .line 9396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 9397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 9398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9400
    sget v19, Lctk$f;->arrow_group_upgrade:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 9401
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 4192
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    const-string/jumbo v20, "deptId"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_19

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->conversation_enterprise_prompt_owner:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 4195
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget v21, Lctk$i;->conversation_enterprise_prompt_owner:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lctk$i;->conversation_enterprise_prompt_member:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 10412
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_conversation_dept_tip:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 10415
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 10418
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 4209
    :cond_1d
    if-nez v7, :cond_5

    .line 4210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 4229
    .restart local v16    # "resource":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->conversation_enterprise_dept_tips:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 4237
    .end local v16    # "resource":I
    .restart local v4    # "autoAdd":Z
    .restart local v5    # "deptName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4238
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 4250
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget v21, Lctk$i;->conversation_enterprise_auto_add_notification:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lctk$i;->conversation_enterprise_dept_prompt_member:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4254
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    move/from16 v19, v0

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 4255
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->conversation_enterprise_notification:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4257
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget v21, Lctk$i;->conversation_enterprise_notification:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v5, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lctk$i;->conversation_enterprise_dept_prompt_member:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4261
    .end local v4    # "autoAdd":Z
    .end local v5    # "deptName":Ljava/lang/String;
    :cond_23
    if-nez v7, :cond_25

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    .line 4264
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    .line 4265
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v19

    const/16 v22, 0x0

    .line 4263
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v16

    .line 4266
    .restart local v16    # "resource":I
    if-eqz v16, :cond_24

    .line 4267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4268
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4269
    .restart local v9    # "icon":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4273
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 4274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_im_group_type_internal_service:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4281
    .end local v16    # "resource":I
    :cond_25
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 4277
    .restart local v16    # "resource":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->conversation_enterprise_tips:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    .line 4285
    .end local v14    # "orgName":Ljava/lang/String;
    .end local v16    # "resource":I
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 4286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v19

    const/16 v22, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v16

    .line 4287
    .restart local v16    # "resource":I
    if-eqz v16, :cond_28

    .line 4288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4289
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4290
    .restart local v9    # "icon":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4293
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget v21, Lctk$i;->dt_group_cooperative_org_count_AT:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ldjl;->E(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " >"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$71;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$71;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4324
    .end local v16    # "resource":I
    :cond_29
    :goto_c
    if-nez v7, :cond_2a

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4327
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    move/from16 v19, v0

    if-eqz v19, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    move/from16 v19, v0

    if-eqz v19, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    move/from16 v19, v0

    if-nez v19, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    move/from16 v19, v0

    if-eqz v19, :cond_36

    .line 4328
    :cond_2b
    if-nez v7, :cond_2d

    .line 4329
    invoke-static {}, Ldjl;->d()Z

    move-result v19

    if-nez v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 4331
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4338
    :cond_2d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->R:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4341
    sget v19, Lctk$f;->arrow_group_upgrade:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 4342
    .local v11, "imgArrow":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 4343
    if-nez v7, :cond_9

    .line 4344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_group_cooperative_feature_desc:I

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v15

    .line 4348
    .local v15, "res":I
    if-lez v15, :cond_31

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4350
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4351
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 4311
    .end local v11    # "imgArrow":Landroid/widget/ImageView;
    .end local v15    # "res":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 4312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v19

    const/16 v22, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v16

    .line 4313
    .restart local v16    # "resource":I
    if-eqz v16, :cond_29

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4315
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4316
    .restart local v9    # "icon":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 4320
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "resource":I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 4334
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 4335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 4353
    .restart local v11    # "imgArrow":Landroid/widget/ImageView;
    .restart local v15    # "res":I
    :cond_31
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_group_type_cooperative:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4357
    .end local v15    # "res":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 4358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_im_group_type_industry:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4359
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 4361
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 4362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_im_industry_group:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4363
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 4365
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ldfk;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 4367
    invoke-static {}, Ldjl;->c()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4368
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 4372
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4373
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lctk$i;->dt_im_conversation_confirm_normal_group:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 4387
    .end local v11    # "imgArrow":Landroid/widget/ImageView;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->R:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 11033
    :cond_37
    sget v19, Lctk$f;->ll_group_ring:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aX:Landroid/widget/LinearLayout;

    .line 11034
    sget v19, Lctk$f;->tv_group_ring_name:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aY:Landroid/widget/TextView;

    .line 11036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 11037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v19, v0

    const-string/jumbo v20, "groupRingId"

    invoke-interface/range {v19 .. v20}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 11038
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_38

    .line 11039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aX:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11041
    invoke-static {}, Leas;->a()Leas;

    move-result-object v21

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v19

    new-instance v22, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$31;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$31;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V

    const-class v23, Lcma;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcma;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Leas;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_a

    .line 11069
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aX:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bv:I

    return p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "oid"    # Ljava/lang/String;

    .prologue
    .line 4423
    const-string/jumbo v1, ""

    .line 4424
    .local v1, "orgName":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 4425
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4426
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 4427
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz p0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4428
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    goto :goto_0

    .line 4432
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    return-object v1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aQ:Ljava/util/List;

    return-object p1
.end method

.method private c(I)V
    .locals 2
    .param p1, "desc"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 3918
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 3921
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3922
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 3923
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3924
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 3925
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 3927
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 188
    .line 33468
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_set_thirdencryption_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 33470
    invoke-static {p1, p2}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 33471
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "https://h5.dingtalk.com/safety/encrypt.html?lwfrom=20160511153723743"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "&corpId="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33472
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 188
    .line 29864
    if-eqz p1, :cond_0

    .line 29865
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 29866
    if-eqz v0, :cond_0

    const-string/jumbo v1, "announceUnread"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29867
    const-string/jumbo v1, "announceUnread"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29868
    const-string/jumbo v1, "announceUnreadCreateTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29869
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 188
    .line 36209
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 36210
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    aput-object v0, v2, v4

    .line 36212
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36214
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 36219
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    :goto_0
    aget-object v0, v2, v4

    iput-object p1, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 36220
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    move-object v1, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 188
    return-void

    .line 36215
    .restart local p1    # "x1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 36216
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->q:I

    return p1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bj:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    const/16 v1, 0x8

    .line 188
    .line 15343
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    if-nez v0, :cond_5

    .line 15344
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 15345
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15348
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 15349
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15354
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 15355
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 15356
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 15357
    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15359
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 15360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15363
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 15364
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15367
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq:I

    .line 15368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    if-eqz v0, :cond_5

    .line 15369
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;->notifyDataSetChanged()V

    .line 15378
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o()V

    .line 15379
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i()V

    .line 15380
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->q()V

    .line 15382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_6

    .line 15383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 15385
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_7

    .line 15386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 15388
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_8

    .line 15389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(I)V

    .line 188
    :cond_8
    return-void

    .line 15372
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq:I

    .line 15373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    if-eqz v0, :cond_5

    .line 15374
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(J)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->as:J

    return-wide p1
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bi:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjt;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bh:Z

    .line 606
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bi:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bh:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    .line 608
    :cond_0
    return-void

    .line 605
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(I)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ba:Z

    return v0
.end method

.method private e(Z)Z
    .locals 4
    .param p1, "forceGet"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4775
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bT:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4776
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bU:Z

    .line 4785
    :goto_0
    return v0

    .line 4778
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bT:Z

    .line 4779
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->x(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4780
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v1}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bU:Z

    .line 4785
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bU:Z

    goto :goto_0

    .line 4782
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bU:Z

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq:I

    return p1
.end method

.method private f()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 884
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    const/16 v9, 0x8

    new-array v5, v9, [J

    const/4 v9, 0x0

    sget v10, Lctk$f;->item_conversation_function_announce:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x1

    sget v10, Lctk$f;->item_conversation_function_pic:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x2

    sget v10, Lctk$f;->item_conversation_function_space:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x3

    sget v10, Lctk$f;->item_conversation_function_comment_link:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x4

    sget v10, Lctk$f;->item_conversation_function_search:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x5

    sget v10, Lctk$f;->item_conversation_function_group_sports:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x6

    sget v10, Lctk$f;->item_conversation_function_live:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    const/4 v9, 0x7

    sget v10, Lctk$f;->item_conversation_function_mini_app:I

    int-to-long v10, v10

    aput-wide v10, v5, v9

    .line 893
    .local v5, "order":[J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v0, "functionViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v9, 0x8

    if-ge v1, v9, :cond_3

    .line 895
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    aget-wide v10, v5, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 896
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 897
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    aget-wide v10, v5, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 900
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_4

    .line 903
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 906
    :cond_4
    sget v9, Lctk$f;->ll_function_row1:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 907
    .local v3, "layoutRow1":Landroid/view/ViewGroup;
    sget v9, Lctk$f;->ll_function_row2:I

    invoke-virtual {p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 908
    .local v4, "layoutRow2":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 909
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 910
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 911
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 912
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_5

    const/4 v7, 0x1

    .line 913
    .local v7, "spit":Z
    :goto_3
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 914
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 915
    .restart local v8    # "view":Landroid/view/View;
    if-eqz v7, :cond_6

    .line 916
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    if-lt v2, v9, :cond_6

    .line 919
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 924
    :goto_5
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 912
    .end local v2    # "index":I
    .end local v7    # "spit":Z
    .end local v8    # "view":Landroid/view/View;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 922
    .restart local v2    # "index":I
    .restart local v7    # "spit":Z
    .restart local v8    # "view":Landroid/view/View;
    :cond_6
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 928
    .end local v8    # "view":Landroid/view/View;
    :cond_7
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 929
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 930
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->U:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 931
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->U:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$34;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$34;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->U:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    const-wide/16 v12, 0x64

    invoke-virtual {v9, v10, v12, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j()V

    return-void
.end method

.method private g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2102
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2103
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 5085
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 5086
    if-eqz v1, :cond_2

    .line 5090
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 5091
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5092
    const-string/jumbo v1, "86"

    .line 5095
    :cond_0
    const-string/jumbo v4, "86"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "852"

    .line 5096
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "853"

    .line 5097
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "886"

    .line 5098
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 2104
    :goto_0
    if-nez v1, :cond_1

    .line 2105
    sget v1, Lctk$f;->item_conversation_function_group_sports:I

    int-to-long v4, v1

    sget v1, Lctk$i;->icon_sport:I

    sget v6, Lctk$i;->dt_conversation_setting_app_sports:I

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->L:Landroid/view/View;

    .line 2107
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->L:Landroid/view/View;

    sget v4, Lctk$f;->function_red_dot:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 2108
    .local v0, "adsView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 2109
    const-string/jumbo v1, "pref_key_group_sport_first_entry"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    .line 2111
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->L:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$32;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$32;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2129
    .end local v0    # "adsView":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 5098
    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 16121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->O:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->as:J

    return-wide v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->an:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->an:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$38;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$38;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2257
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x:J

    return-wide v0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2394
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 2420
    :cond_0
    :goto_0
    return-void

    .line 2398
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2399
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2400
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2402
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    if-nez v1, :cond_3

    .line 2404
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2406
    :cond_3
    invoke-static {v0}, Ldjl;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2408
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2409
    :cond_4
    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2411
    invoke-static {v0}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2412
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_industry_setting_show_share"

    .line 6083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 2412
    if-eqz v1, :cond_5

    .line 2414
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2416
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->w:J

    return-wide v0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->O:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3118
    return-void
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3168
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3170
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3178
    :cond_0
    :goto_0
    return-void

    .line 3176
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    .line 18260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 18261
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    .line 18265
    :goto_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 18266
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 18267
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    .line 18272
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 18273
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    .line 18274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    .line 18284
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h()V

    .line 188
    return-void

    .line 18263
    :cond_1
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    goto :goto_0

    .line 18269
    :cond_2
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->u:Z

    goto :goto_1

    .line 18276
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "orgId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "orgId"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    goto :goto_2

    .line 18280
    :cond_4
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->s:Z

    .line 18281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    goto :goto_2
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    const/16 v1, 0x8

    .line 188
    .line 18611
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18612
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 18613
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 18614
    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;-><init>()V

    .line 18615
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 18616
    const-string/jumbo v3, "group_conversation"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18617
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 18618
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lctk$f;->fl_group_robot_container:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 18620
    :goto_0
    return-void

    :cond_0
    sget v0, Lctk$f;->fl_group_robot_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 18623
    :cond_1
    sget v0, Lctk$f;->fl_group_robot_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private l()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3191
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3192
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v6, 0x0

    .line 3442
    .line 7125
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7126
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->B:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7127
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7128
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7129
    invoke-direct {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7130
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aC:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 7134
    :goto_0
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7135
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->D:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7136
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7137
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->H:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7138
    sget v7, Lctk$f;->divider_group_header_line:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7158
    :cond_0
    sget v7, Lctk$f;->ll_content_footer_line:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7161
    :goto_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->av:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3443
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->k()V

    .line 3444
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3446
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j()V

    .line 3447
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3448
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3449
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ai:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3450
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(I)V

    .line 3451
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->n()V

    .line 3452
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3453
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 3455
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 3456
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    const-string/jumbo v7, "announceUnread"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3457
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    sget v8, Lctk$f;->function_red_dot:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3501
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 7132
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aC:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 7141
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7142
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7143
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7144
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->B:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7145
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->D:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7146
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7147
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bc:Ljava/util/Map;

    sget v8, Lctk$f;->item_conversation_function_announce:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7148
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->H:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7149
    sget v7, Lctk$f;->divider_group_header_line:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7150
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v7, :cond_0

    .line 7151
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 7152
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 7153
    sget v7, Lctk$f;->ll_content_footer_line:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 7155
    :cond_3
    sget v7, Lctk$f;->ll_content_footer_line:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 3459
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    sget v7, Lctk$f;->function_red_dot:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3463
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    sget v7, Lctk$f;->edit_icon:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3464
    sget v7, Lctk$f;->tv_show_history_desc_tips:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3465
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3466
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 3467
    .local v2, "otherUid":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-nez v7, :cond_6

    .line 3469
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3470
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3471
    sget v7, Lctk$f;->rl_conversation_notice_setting:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3474
    :cond_6
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 3476
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3477
    .local v4, "uidArray":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3478
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    array-length v7, v4

    :goto_3
    if-ge v6, v7, :cond_8

    aget-object v1, v4, v6

    .line 3479
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 3480
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3478
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3483
    .end local v1    # "uid":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v6, "EVENTBUTLER"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$59;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$59;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    const-class v9, Lcma;

    invoke-interface {v6, v8, v9, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-virtual {v7, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_2
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 18966
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->n:J

    .line 18967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o:Ljava/lang/String;

    .line 18968
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->p:Ljava/lang/String;

    .line 18970
    sget v0, Lctk$f;->tv_add_memeber:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->am:Landroid/widget/TextView;

    .line 18971
    sget v0, Lctk$f;->ll_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    .line 18973
    sget v0, Lctk$f;->header_fill_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 18974
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$56;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Landroid/view/View;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 18988
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18990
    sget v0, Lctk$f;->scroll_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->z:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    .line 18991
    sget v0, Lctk$f;->view_fill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bw:Landroid/view/View;

    .line 18992
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->z:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bR:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->setOnScrollChangedListener(Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView$a;)V

    .line 18993
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->z:Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;

    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/NotifyingScrollView;->setMinimumHeight(I)V

    .line 18994
    sget v0, Lctk$f;->rl_title_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->D:Landroid/view/View;

    .line 18995
    sget v0, Lctk$f;->ll_qrcode_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->G:Landroid/view/View;

    .line 18996
    sget v0, Lctk$f;->item_conversation_function_announce:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_horn:I

    sget v3, Lctk$i;->announce_group:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    .line 18997
    sget v0, Lctk$f;->item_conversation_function_pic:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_photo:I

    sget v3, Lctk$i;->chat_action_bar_title_pics:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->H:Landroid/view/View;

    .line 18998
    sget v0, Lctk$f;->ll_function:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->F:Landroid/view/View;

    .line 18999
    sget v0, Lctk$f;->item_conversation_function_search:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_search:I

    sget v3, Lctk$i;->chat_action_bar_title_search:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->I:Landroid/view/View;

    .line 19000
    sget v0, Lctk$f;->item_conversation_function_comment_link:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_link:I

    sget v3, Lctk$i;->dt_comment_link_title:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->K:Landroid/view/View;

    .line 19001
    sget v0, Lctk$f;->item_conversation_function_live:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_live:I

    sget v3, Lctk$i;->dt_common_group_playback_list:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    .line 19002
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19003
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_6

    .line 19004
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19005
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    sget v1, Lctk$f;->function_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 19006
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 20190
    const-string/jumbo v1, "pref_key_live_records_first_entry"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 19007
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;Z)V

    .line 19008
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19013
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g()V

    .line 22135
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_7

    .line 22136
    const/4 v0, 0x1

    .line 21147
    :goto_1
    if-nez v0, :cond_8

    .line 21148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 21149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->N:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19017
    :cond_0
    :goto_2
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 19018
    invoke-static {v0}, Lddq;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19020
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->K:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19023
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$67;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$67;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19041
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->H:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$78;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$78;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->I:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$79;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$79;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19097
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->K:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19133
    sget v0, Lctk$f;->view_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->U:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 19134
    sget v0, Lctk$f;->ll_members_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    .line 19135
    sget v0, Lctk$f;->ll_enterprise_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->R:Landroid/view/View;

    .line 19136
    sget v0, Lctk$f;->tv_enterprise_set:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aa:Landroid/widget/TextView;

    .line 19137
    sget v0, Lctk$f;->tv_enterprise_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ab:Landroid/widget/TextView;

    .line 19138
    sget v0, Lctk$f;->tv_enterprise_desc_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac:Landroid/widget/TextView;

    .line 19139
    sget v0, Lctk$f;->tv_enterprise_prompt_notification:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ad:Landroid/widget/TextView;

    .line 19140
    sget v0, Lctk$f;->tv_enterprise_prompt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al:Landroid/widget/TextView;

    .line 19141
    sget v0, Lctk$f;->rl_enterprise_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    .line 19142
    sget v0, Lctk$f;->rl_enterprise_setting_upgrade:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    .line 19143
    sget v0, Lctk$f;->tv_group_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag:Landroid/widget/TextView;

    .line 19144
    sget v0, Lctk$f;->rl_enterprise_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ah:Landroid/view/View;

    .line 19145
    sget v0, Lctk$f;->divider_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Q:Landroid/view/View;

    .line 19146
    sget v0, Lctk$f;->item_conversation_function_space:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_file:I

    sget v3, Lctk$i;->chat_action_bar_title_file:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->an:Landroid/view/View;

    .line 19147
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h()V

    .line 19148
    sget v0, Lctk$f;->single_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 19149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bn:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bK:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19150
    sget v0, Lctk$f;->lyt_header_conversation_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bo:Landroid/widget/LinearLayout;

    .line 19151
    sget v0, Lctk$f;->tv_header_conversation_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    .line 19152
    sget v0, Lctk$f;->ic_group_tag:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bq:Landroid/widget/ImageView;

    .line 19153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 19154
    sget v0, Lctk$f;->tv_header_enterprise_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->br:Landroid/widget/TextView;

    .line 19155
    sget v0, Lctk$f;->tv_header_group_id:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bs:Landroid/widget/TextView;

    .line 19156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 19157
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19158
    sget v0, Lctk$f;->conversation_setting_enterprise_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bt:Landroid/widget/ImageView;

    .line 19161
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    .line 19162
    sget v0, Lctk$f;->txtAvatarAreaGroupName:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19163
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 19164
    sget v1, Lctk$i;->conversation_member_OO:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19172
    :cond_3
    :goto_3
    sget v0, Lctk$f;->grid_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 19173
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    .line 19174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->h:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19175
    sget v0, Lctk$f;->tv_conversation_mem_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ak:Landroid/widget/TextView;

    .line 19178
    sget v0, Lctk$f;->tv_conversation_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ai:Landroid/widget/TextView;

    .line 19179
    sget v0, Lctk$f;->ll_conversation_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->C:Landroid/view/View;

    .line 19181
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->C:Landroid/view/View;

    .line 22804
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bz:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_b

    .line 22805
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bz:Landroid/view/View$OnClickListener;

    .line 19181
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19184
    sget v0, Lctk$f;->rl_conversation_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->E:Landroid/view/View;

    .line 19185
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->E:Landroid/view/View;

    .line 22931
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bA:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    .line 22932
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bA:Landroid/view/View$OnClickListener;

    .line 19185
    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19187
    sget v0, Lctk$f;->ll_send_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->S:Landroid/view/View;

    .line 19188
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->S:Landroid/view/View;

    .line 22944
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bC:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    .line 22945
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bC:Landroid/view/View$OnClickListener;

    .line 19188
    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19189
    sget v0, Lctk$f;->tv_send_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ap:Landroid/widget/TextView;

    .line 19190
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ap:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    if-eqz v0, :cond_e

    sget v0, Lctk$i;->im_setting_sendmail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19191
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 19192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->S:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19198
    :goto_8
    sget v0, Lctk$f;->ll_invitation_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->T:Landroid/view/View;

    .line 19199
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->o()V

    .line 19200
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->i()V

    .line 19202
    sget v0, Lctk$f;->ll_avatar_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->A:Landroid/view/View;

    .line 19203
    sget v0, Lctk$f;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->B:Landroid/view/View;

    .line 19204
    sget v0, Lctk$f;->ll_content_member:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj:Landroid/view/View;

    .line 19205
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aj:Landroid/view/View;

    .line 23431
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->by:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_10

    .line 23432
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->by:Landroid/view/View$OnClickListener;

    .line 19205
    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->P:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19277
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v:Z

    if-nez v0, :cond_4

    .line 19278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->R:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19280
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_14

    .line 19281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "aids"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 19283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19284
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_11

    aget-object v4, v2, v0

    .line 19285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 19286
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19284
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 19010
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 22138
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "450_conversation_entry_mini_app_enabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    .line 21154
    :cond_8
    sget v0, Lctk$f;->item_conversation_function_mini_app:I

    int-to-long v0, v0

    sget v2, Lctk$i;->icon_miniapp:I

    sget v3, Lctk$i;->dt_conversation_group_setting_mini_app_title:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(JII)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->N:Landroid/view/View;

    .line 21158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->N:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$33;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$33;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 19165
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19166
    sget v1, Lctk$i;->dt_im_chat_industry_group_member_name_card:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 19168
    :cond_a
    sget v1, Lctk$i;->conversation_member:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 22807
    :cond_b
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$50;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bz:Landroid/view/View$OnClickListener;

    .line 22927
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bz:Landroid/view/View$OnClickListener;

    goto/16 :goto_4

    .line 22934
    :cond_c
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$51;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$51;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bA:Landroid/view/View$OnClickListener;

    .line 22940
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bA:Landroid/view/View$OnClickListener;

    goto/16 :goto_5

    .line 22948
    :cond_d
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$52;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$52;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bC:Landroid/view/View$OnClickListener;

    .line 22962
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bC:Landroid/view/View$OnClickListener;

    goto/16 :goto_6

    .line 19190
    :cond_e
    sget v0, Lctk$i;->im_setting_sendmail_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 19194
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->S:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 23434
    :cond_10
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$40;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$40;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->by:Landroid/view/View$OnClickListener;

    .line 23442
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->by:Landroid/view/View$OnClickListener;

    goto/16 :goto_9

    .line 19289
    :cond_11
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 19290
    if-eqz v0, :cond_14

    .line 19291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 19292
    sget v0, Lctk$g;->item_setting:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 19293
    sget v0, Lctk$f;->tv_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19294
    iget-object v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19295
    sget v0, Lctk$f;->iv_red_dot:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 19296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v4

    .line 19297
    if-eqz v4, :cond_12

    const-string/jumbo v0, "setting_app_ids"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 19298
    const-string/jumbo v0, "setting_app_ids"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19299
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v5, :cond_12

    aget-object v6, v4, v0

    .line 19300
    iget-wide v8, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 19301
    sget v0, Lctk$f;->iv_red_dot:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 19306
    :cond_12
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19307
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19341
    sget v0, Lctk$f;->ll_apps:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19342
    sget v0, Lctk$f;->ll_apps:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 19299
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 19347
    :cond_14
    sget v0, Lctk$f;->rl_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->O:Landroid/view/View;

    .line 19348
    sget v0, Lctk$f;->rl_notice_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->av:Landroid/view/View;

    .line 19349
    sget v0, Lctk$f;->rl_group_nick_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    .line 19350
    sget v0, Lctk$f;->tv_group_nick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ax:Landroid/widget/TextView;

    .line 19351
    sget v0, Lctk$f;->tv_group_nick_disable_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ay:Landroid/widget/TextView;

    .line 19352
    sget v0, Lctk$f;->conversation_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->az:Landroid/widget/ToggleButton;

    .line 19353
    sget v0, Lctk$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA:Landroid/widget/ToggleButton;

    .line 19354
    sget v0, Lctk$f;->conversation_setting_quit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aC:Landroid/widget/Button;

    .line 19355
    sget v0, Lctk$f;->conversation_setting_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aD:Landroid/widget/Button;

    .line 19356
    sget v0, Lctk$f;->layout_owner_operation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB:Landroid/view/View;

    .line 19357
    sget v0, Lctk$f;->ll_owner_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    .line 19358
    sget v0, Lctk$f;->iv_manager_ads_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bi:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 19359
    sget v0, Lctk$f;->tv_group_intro:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    .line 19360
    sget v0, Lctk$f;->rl_owner_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19378
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e()V

    .line 19379
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->q()V

    .line 19381
    sget v0, Lctk$f;->tv_expand_group_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aP:Landroid/widget/TextView;

    .line 19382
    sget v0, Lctk$f;->conversation_setting_ban_words:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aG:Landroid/widget/TextView;

    .line 19383
    sget v0, Lctk$f;->conversation_setting_transmit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aH:Landroid/widget/TextView;

    .line 19384
    sget v0, Lctk$f;->conversation_setting_owner_modify_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    .line 19385
    sget v0, Lctk$f;->conversation_setting_owner_modify_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aJ:Landroid/widget/TextView;

    .line 19386
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_15

    .line 19387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 19388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19392
    :goto_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 19393
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19394
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aJ:Landroid/widget/TextView;

    sget v1, Lctk$i;->and_conversation_only_owner_strict_modify_tips_with_robots:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19406
    :cond_15
    :goto_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19414
    sget v0, Lctk$f;->conversation_setting_only_master_validate_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    .line 19415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_16

    .line 19416
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 19417
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19421
    :goto_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 19422
    sget v0, Lctk$f;->rl_only_master_validate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19423
    sget v0, Lctk$f;->rl_only_master_validate_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19429
    :cond_16
    :goto_10
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19438
    sget v0, Lctk$f;->conversation_show_history_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aL:Landroid/widget/ToggleButton;

    .line 19439
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_17

    .line 19440
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getShowHistoryType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 19441
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aL:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19447
    :cond_17
    :goto_11
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aL:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19462
    sget v0, Lctk$f;->conversation_at_all_restricted_admin_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    .line 19465
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getAtAllType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 19466
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19471
    :goto_12
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24196
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 24198
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 24199
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "newCSpaceIdIM"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 19479
    :goto_13
    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 19480
    sget v0, Lctk$f;->toggle_sync_file_to_cspace:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    .line 19481
    sget v0, Lctk$f;->tv_sync_file_to_cspace_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->au:Landroid/widget/TextView;

    .line 19483
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_19

    .line 19484
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->w(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 19485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 19486
    sget v0, Lctk$i;->dt_im_conversation_sync_file_cspace_des_org_name_default:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19489
    :cond_18
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->au:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_im_conversation_sync_file_cspace_des_v1:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 19490
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 19489
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19493
    :cond_19
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 19494
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 19495
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "orgGroupSync"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 19496
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19502
    :goto_14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19513
    :goto_15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aG:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aH:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19543
    sget v0, Lctk$f;->conversation_setting_disban:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aE:Landroid/widget/TextView;

    .line 19544
    sget v0, Lctk$f;->divider_disband:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aF:Landroid/view/View;

    .line 19545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aE:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19552
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e(Z)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 19553
    sget v0, Lctk$f;->layout_quit_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19555
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->am:Landroid/widget/TextView;

    sget v1, Lctk$i;->add_group_member_operation:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19561
    :goto_16
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aC:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19569
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aD:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19576
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->az:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19601
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$20;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19651
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19652
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->az:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19654
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aw:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$21;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$21;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19661
    sget v0, Lctk$f;->layout_auto_trans:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aV:Landroid/widget/LinearLayout;

    .line 19662
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    :goto_19
    invoke-static {v0}, Lddo;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 19663
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aV:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19664
    sget v0, Lctk$f;->auto_trans_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aU:Landroid/widget/ToggleButton;

    .line 19665
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aU:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    :goto_1a
    invoke-static {v0}, Lddo;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 19666
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aU:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$22;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19683
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->af:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$24;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$24;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19756
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ae:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$25;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$25;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19783
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 19784
    sget v0, Lctk$f;->rl_burn_chat_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19785
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19786
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$26;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$26;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19826
    :goto_1b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1c

    .line 19827
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J

    move-result-wide v2

    .line 19828
    sget v0, Lctk$f;->ll_encrypt_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 19829
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JZ)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 19830
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v4}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 19831
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19832
    sget v1, Lctk$f;->rl_encrypt_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;

    invoke-direct {v4, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$27;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19845
    sget v1, Lctk$f;->img_encrypt_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lctk$e;->chat_conv_icon_encrypt:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19846
    sget v1, Lctk$f;->text_encrypted:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lctk$i;->conversation_encrypt_opened:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19847
    const/4 v1, 0x0

    .line 19848
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 19849
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1b

    .line 19850
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19852
    :cond_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 19853
    sget v1, Lctk$f;->tv_encrypt_desc:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_security_3th_encrypt_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19887
    :cond_1c
    :goto_1c
    sget v0, Lctk$f;->ll_report_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ao:Landroid/view/View;

    .line 19888
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ao:Landroid/view/View;

    .line 24446
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bB:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_35

    .line 24447
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bB:Landroid/view/View$OnClickListener;

    .line 19888
    :goto_1d
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19890
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 19891
    const-string/jumbo v1, "com.workapp.conversation.member.CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19892
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19893
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19894
    const-string/jumbo v1, "action_group_nick_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19895
    const-string/jumbo v1, "action_announce_send_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19896
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19897
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bm:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 19899
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m()V

    .line 25202
    sget v0, Lctk$f;->ll_groupid_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->V:Landroid/view/View;

    .line 25203
    sget v0, Lctk$f;->tv_conversation_groupid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->W:Landroid/widget/TextView;

    .line 25204
    sget v0, Lctk$f;->rl_group_searchable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->X:Landroid/view/View;

    .line 25205
    sget v0, Lctk$f;->conversation_setting_groupid_searchable_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Z:Landroid/widget/TextView;

    .line 25206
    sget v0, Lctk$f;->conversation_setting_groupid_searchable_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Y:Landroid/widget/ToggleButton;

    .line 25208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->V:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$35;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$35;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bs:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$36;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$36;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Y:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$37;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$37;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bb:Leao$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bl:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-interface {v0, v1}, Leao$a;->a(Lcom/alibaba/wukong/im/Member$RoleType;)V

    .line 19903
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f()V

    .line 19905
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t_()V

    .line 19906
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1d

    .line 19907
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 25930
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 25934
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 25935
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$29;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$29;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 26019
    if-eqz v0, :cond_1e

    .line 26023
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 26024
    const-string/jumbo v1, "404"

    const-string/jumbo v2, "param is error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 19912
    :cond_1e
    :goto_1e
    sget v0, Lctk$f;->tv_group_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aW:Landroid/widget/TextView;

    .line 19913
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aW:Landroid/widget/TextView;

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_37

    sget v0, Lctk$i;->dt_im_group_share_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19915
    sget v0, Lctk$f;->ll_chat_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 19916
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19917
    const/4 v0, 0x0

    .line 19918
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_1f

    .line 19919
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 19921
    :cond_1f
    invoke-static {}, Ldfr;->a()Ldfr;

    invoke-static {v0}, Ldfr;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 19922
    if-eqz v0, :cond_38

    const/4 v0, 0x0

    :goto_20
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    return-void

    .line 19390
    :cond_20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aI:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_d

    .line 19396
    :cond_21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aJ:Landroid/widget/TextView;

    sget v1, Lctk$i;->and_conversation_only_owner_strict_modify_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e

    .line 19399
    :cond_22
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 19400
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aJ:Landroid/widget/TextView;

    sget v1, Lctk$i;->conversation_only_owner_modify_tips_with_robots:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e

    .line 19402
    :cond_23
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aJ:Landroid/widget/TextView;

    sget v1, Lctk$i;->conversation_only_owner_modify_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e

    .line 19419
    :cond_24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aK:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_f

    .line 19425
    :cond_25
    sget v0, Lctk$f;->rl_only_master_validate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19426
    sget v0, Lctk$f;->rl_only_master_validate_splitter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 19443
    :cond_26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aL:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_11

    .line 19468
    :cond_27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_12

    .line 24199
    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_13

    .line 19499
    :cond_29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_14

    .line 19509
    :cond_2a
    sget v0, Lctk$f;->rl_sync_file_cspace:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->at:Landroid/view/View;

    .line 19510
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->at:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_15

    .line 19557
    :cond_2b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->am:Landroid/widget/TextView;

    sget v1, Lctk$i;->add_chat_member_operation:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19558
    sget v0, Lctk$f;->layout_quit_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 19651
    :cond_2c
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 19652
    :cond_2d
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 19662
    :cond_2e
    const/4 v0, 0x0

    goto/16 :goto_19

    .line 19665
    :cond_2f
    const/4 v0, 0x0

    goto/16 :goto_1a

    .line 19822
    :cond_30
    sget v0, Lctk$f;->rl_burn_chat_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1b

    .line 19855
    :cond_31
    sget v2, Lctk$f;->tv_encrypt_desc:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_security_3th_encrypt_tip_at:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    .line 19859
    :cond_32
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_33

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_33

    .line 19860
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19861
    sget v1, Lctk$f;->rl_encrypt_container:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$28;

    invoke-direct {v4, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$28;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19874
    sget v1, Lctk$f;->img_encrypt_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lctk$e;->chat_conv_icon_encrypt_disable:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19875
    sget v1, Lctk$f;->text_encrypted:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_security_encrypt_unopened:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19876
    sget v1, Lctk$f;->tv_encrypt_desc:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_security_3th_unencrypt_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1c

    .line 19878
    :cond_33
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1c

    .line 19882
    :cond_34
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1c

    .line 24449
    :cond_35
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$41;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$41;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bB:Landroid/view/View$OnClickListener;

    .line 24462
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bB:Landroid/view/View$OnClickListener;

    goto/16 :goto_1d

    .line 26028
    :cond_36
    const-class v1, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;

    .line 26029
    if-eqz v1, :cond_1e

    .line 26030
    new-instance v3, Ldmp$1;

    invoke-direct {v3, v0}, Ldmp$1;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;->getGroupSimpleInfo(Ljava/lang/String;Liyv;)V

    goto/16 :goto_1e

    .line 19913
    :cond_37
    sget v0, Lctk$i;->group_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 19922
    :cond_38
    const/16 v0, 0x8

    goto/16 :goto_20
.end method

.method private n()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3939
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 3940
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$70;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 4117
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7ffffffe

    .line 3940
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    .line 4119
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    .line 26472
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v2

    .line 26473
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$73;

    invoke-direct {v6, p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$73;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;J)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v6, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v4, v5, v1}, Lcom/alibaba/wukong/im/GroupNickService;->listGroupNicks(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 188
    return-void
.end method

.method private o()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4822
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->T:Landroid/view/View;

    if-nez v4, :cond_0

    .line 4841
    :goto_0
    return-void

    .line 4826
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "share_invitation"

    .line 4827
    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 4828
    .local v1, "isSwitchOn":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_share_invitation"

    .line 12083
    invoke-virtual {v4, v5, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4832
    .local v0, "isFeatureOn":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aq:I

    if-ne v4, v2, :cond_2

    .line 4835
    .local v2, "show":Z
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 4836
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->T:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4837
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->T:Landroid/view/View;

    .line 12966
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bE:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    .line 12967
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bE:Landroid/view/View$OnClickListener;

    .line 4837
    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v2    # "show":Z
    :cond_2
    move v2, v3

    .line 4832
    goto :goto_1

    .line 12969
    .restart local v2    # "show":Z
    :cond_3
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$53;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    iput-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bE:Landroid/view/View$OnClickListener;

    .line 12996
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bE:Landroid/view/View$OnClickListener;

    goto :goto_2

    .line 4839
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->T:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    const/4 v1, 0x0

    .line 188
    .line 27291
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 27997
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 27292
    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 27293
    invoke-static {v0}, Ldjl;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    if-eqz v0, :cond_5

    .line 28380
    invoke-static {}, Ldfm;->b()Z

    move-result v0

    .line 27295
    if-eqz v0, :cond_5

    .line 27296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bb:Leao$a;

    if-eqz v0, :cond_1

    .line 27297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bb:Leao$a;

    invoke-interface {v0}, Leao$a;->b()V

    :cond_1
    :goto_1
    return-void

    .line 28001
    :cond_2
    invoke-static {v0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28006
    const-string/jumbo v2, "deptId"

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "isAllUsrGrp"

    .line 28007
    invoke-interface {v0, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 27300
    :cond_5
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bf:Z

    goto :goto_1
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 4844
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ldjl;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 4848
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 13879
    :cond_0
    :goto_0
    return-void

    .line 4852
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bg:Z

    if-eqz v0, :cond_5

    .line 4853
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ba:Z

    if-eqz v0, :cond_4

    .line 4854
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4855
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13869
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 13872
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 13873
    invoke-static {v0}, Ldjl;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13874
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4857
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4858
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 4861
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4862
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 13877
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 13878
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 13883
    :cond_7
    sget v0, Lctk$i;->dt_im_education_group_feature_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13884
    sget v1, Lctk$i;->dt_im_education_group_user_guide:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13885
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 13886
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    .line 13887
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 13888
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lctk$c;->ui_common_theme_text_color:I

    invoke-static {p0, v4}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13890
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$77;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$77;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13902
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13903
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 13904
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aZ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->n()V

    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->g()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f()V

    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    return-wide v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->U:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->M:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aS:I

    return v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->J:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 2542
    return-object p0
.end method

.method public final a(J)V
    .locals 7
    .param p1, "groupId"    # J

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2547
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 2548
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2549
    .local v0, "strGroupId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2550
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bs:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_search_public_group_id_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2551
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->V:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2552
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2553
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bs:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2559
    .end local v0    # "strGroupId":Ljava/lang/String;
    :goto_0
    return-void

    .line 2555
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->V:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2556
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2557
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bs:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "shareText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2589
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2590
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2591
    sget v1, Lctk$b;->group_id_share:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$43;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$43;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2606
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2607
    return-void
.end method

.method protected final a(Z)V
    .locals 1
    .param p1, "isTop"    # Z

    .prologue
    .line 2076
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2079
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aA:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 3
    .param p1, "searchable"    # Z
    .param p2, "privateGroup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2616
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2617
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_group_searchable_first_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2618
    if-eqz p2, :cond_0

    sget v1, Lctk$i;->dt_private_group_searchable_first_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2619
    sget v1, Lctk$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$44;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$44;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2631
    sget v1, Lctk$i;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$46;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$46;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2640
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2641
    return-void

    .line 2618
    :cond_0
    sget v1, Lctk$i;->dt_group_searchable_first_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(ZZJ)V
    .locals 5
    .param p1, "showSearchableView"    # Z
    .param p2, "searchable"    # Z
    .param p3, "groupId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2563
    if-eqz p1, :cond_2

    .line 6574
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 6575
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6577
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6578
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_im_industry_setting_show_share"

    .line 7083
    invoke-virtual {v0, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 6578
    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 2563
    :goto_0
    if-eqz v0, :cond_2

    .line 2564
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->X:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Y:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 2566
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Y:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2570
    :goto_1
    if-eqz p2, :cond_3

    .end local p3    # "groupId":J
    :goto_2
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->a(J)V

    .line 2571
    return-void

    .restart local p3    # "groupId":J
    :cond_1
    move v0, v2

    .line 6583
    goto :goto_0

    .line 2568
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->X:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2570
    :cond_3
    const-wide/16 p3, 0x0

    goto :goto_2
.end method

.method public final a_(Z)V
    .locals 2
    .param p1, "privateGroup"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->Z:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v0, Lctk$i;->private_conversation_can_searchable_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2612
    return-void

    .line 2611
    :cond_0
    sget v0, Lctk$i;->conversation_can_searchable_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "restricted"    # Z

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aM:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2649
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 3185
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 4691
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bQ:I

    if-eqz v0, :cond_0

    .line 4692
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bQ:I

    .line 4697
    :goto_0
    return v0

    .line 4694
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_1

    .line 4695
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bQ:I

    .line 4697
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bQ:I

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "sync"    # Z

    .prologue
    .line 2653
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2660
    :cond_0
    :goto_0
    return-void

    .line 2657
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aN:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "canShowEntry"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2665
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2666
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bf:Z

    .line 2667
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->b(Ljava/lang/String;)V

    .line 2669
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 3385
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3386
    const-string/jumbo v0, "avatar"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3387
    .local v9, "avatar":Ljava/lang/String;
    const-string/jumbo v0, "use_enterprise_icon"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 3388
    .local v11, "useEnterPriseIcon":Z
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 3389
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->showLoadingDialog()V

    .line 3390
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->t:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    sget-object v7, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->changeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;

    invoke-direct {v8, p0, v11, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$58;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;ZLjava/lang/String;)V

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    .line 3431
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 3432
    .local v10, "updateData":Ljava/util/Map;
    const-string/jumbo v0, "icon"

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3433
    const-string/jumbo v1, "use_enterprise_icon"

    if-eqz v11, :cond_2

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3434
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 3435
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aR:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0, v10, v6}, Lcom/alibaba/wukong/im/Conversation;->updateExtensionByKeys(Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 3438
    .end local v9    # "avatar":Ljava/lang/String;
    .end local v10    # "updateData":Ljava/util/Map;
    .end local v11    # "useEnterPriseIcon":Z
    :cond_1
    return-void

    .line 3433
    .restart local v9    # "avatar":Ljava/lang/String;
    .restart local v10    # "updateData":Ljava/util/Map;
    .restart local v11    # "useEnterPriseIcon":Z
    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->be:Ldha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->be:Ldha;

    invoke-virtual {v0}, Ldha;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4816
    :goto_0
    return-void

    .line 4815
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2674
    .local v0, "id":I
    sget v1, Lctk$f;->ll_chat_background:I

    if-ne v0, v1, :cond_0

    .line 2676
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/chat_theme.html"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$47;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$47;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2685
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 531
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 532
    sget v1, Lctk$g;->activity_conversation_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->setContentView(I)V

    .line 534
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_menu_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->w:J

    .line 537
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->x:J

    .line 538
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bu:I

    .line 539
    invoke-static {}, Lcms;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bk:Z

    .line 541
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_conversation_setting"

    .line 5083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 541
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ba:Z

    .line 542
    new-instance v0, Ldgx;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    invoke-direct {v0, p0, v1}, Ldgx;-><init>(Landroid/app/Activity;Ldgw$b;)V

    .line 592
    .local v0, "chatSettingPresenter":Ldgx;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldgx;->a(Ljava/lang/String;)V

    .line 594
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bx:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 595
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3900
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->onDestroy()V

    .line 3902
    :try_start_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bm:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3905
    :goto_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bx:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 3906
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->aO:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 3907
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->y:Ldbw;

    if-eqz v0, :cond_0

    .line 3908
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->y:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 3909
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->y:Ldbw;

    .line 3911
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 3912
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->bd:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3914
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 599
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->onResume()V

    .line 600
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->e()V

    .line 601
    return-void
.end method
