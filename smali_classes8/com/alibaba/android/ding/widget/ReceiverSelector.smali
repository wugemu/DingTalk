.class public Lcom/alibaba/android/ding/widget/ReceiverSelector;
.super Landroid/widget/RelativeLayout;
.source "ReceiverSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/ReceiverSelector$a;
    }
.end annotation


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field protected a:Lcom/alibaba/android/ding/widget/ReceiverSelector$a;

.field public b:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x420c0000    # 35.0f

    const/4 v1, 0x0

    .line 57
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c:I

    .line 58
    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d:I

    .line 59
    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->r:I

    .line 79
    iput v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->s:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->u:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->y:Z

    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->r:I

    .line 79
    iput v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->s:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->u:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->y:Z

    .line 98
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->r:I

    .line 79
    iput v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->s:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->u:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->y:Z

    .line 103
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e()V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/ReceiverSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 52
    .line 2375
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2378
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->l:Ljava/lang/String;

    const-string/jumbo v1, "identifier_recorder_selector"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    :cond_0
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;-><init>()V

    .line 2390
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setIdentityFlag(Ljava/lang/String;)V

    .line 2391
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setCid(Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setParentDingId(Ljava/lang/String;)V

    .line 2393
    iget v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->r:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setBizType(I)V

    .line 2394
    iget v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->s:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setSubBizType(I)V

    .line 2395
    iget v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->o:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setFromSpaceFileUnread(Z)V

    .line 2396
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->p:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setMailMessage(Z)V

    .line 2397
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->q:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setCanSendToAll(Z)V

    .line 2398
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setUserIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 2399
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setDisplayIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 2400
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setDisabledIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 2401
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->x:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setHasSendToMe(Z)V

    .line 2402
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->y:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setModifySelectedUser(Z)V

    .line 2403
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->k:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setSingleChooseMode(Z)V

    .line 2404
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->w:Z

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setHasRecentDing(Z)V

    .line 2406
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V

    .line 52
    :cond_1
    return-void

    .line 2395
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->y:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/ReceiverSelector;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x2

    .line 263
    .line 2270
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_receiver_selector:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2271
    invoke-virtual {p0, v1, v3, v3}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->addView(Landroid/view/View;II)V

    .line 2273
    sget v0, Laxp$f;->layout_avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->f:Landroid/widget/LinearLayout;

    .line 2274
    sget v0, Laxp$f;->tv_receiver_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->g:Landroid/widget/TextView;

    .line 2275
    sget v0, Laxp$f;->layout_ding_receiver:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->h:Landroid/view/View;

    .line 2276
    sget v0, Laxp$f;->arrow_avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->j:Landroid/view/View;

    .line 2277
    sget v0, Laxp$f;->tv_desc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    .line 2279
    sget v0, Laxp$f;->if_add_user:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->i:Landroid/view/View;

    .line 2283
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->h:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/widget/ReceiverSelector$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector$2;-><init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2302
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2303
    invoke-static {}, Lbjq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context not Activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2308
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ding/widget/ReceiverSelector$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector$3;-><init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 2323
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2308
    invoke-static {v2, v3, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Lcom/alibaba/wukong/Callback;)V

    .line 2327
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector$4;-><init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->z:Landroid/content/BroadcastReceiver;

    .line 2364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2365
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2366
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2367
    const-string/jumbo v1, "com.workapp.ding.choose.myself"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2368
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 267
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->f:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 193
    return-void
.end method

.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 197
    iget-boolean v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->k:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_1

    .line 198
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    sget v6, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v5, v6, :cond_0

    .line 199
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "[ReceiverSelector] select more than one in singleChoose mode"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_0
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "[ReceiverSelector] select more than one in singleChoose mode"

    aput-object v6, v5, v10

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 204
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 205
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 206
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-boolean v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->k:Z

    if-eqz v5, :cond_6

    .line 1414
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    .line 1415
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    .line 1416
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1417
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 213
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 214
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 215
    .local v4, "uidLong":Ljava/lang/Long;
    if-eqz v4, :cond_3

    .line 216
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTextSize(F)V

    .line 218
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lcom/alibaba/android/ding/widget/ReceiverSelector$1;

    invoke-direct {v8, p0, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector$1;-><init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 238
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d:I

    sget v6, Lcom/alibaba/android/ding/widget/ReceiverSelector;->e:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    sget v5, Lcom/alibaba/android/ding/widget/ReceiverSelector;->c:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 240
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    .end local v0    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1420
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "uidLong":Ljava/lang/Long;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1421
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 1422
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    sget v6, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1425
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1426
    new-instance v8, Lbht;

    new-instance v9, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;

    invoke-direct {v9, p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector$5;-><init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V

    const-class v10, Lbht$a;

    .line 1447
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 1426
    invoke-static {v9, v10, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbht$a;

    invoke-direct {v8, v6, v7, v5}, Lbht;-><init>(JLbht$a;)V

    .line 1447
    invoke-virtual {v8}, Lbht;->a()V

    goto/16 :goto_0

    .line 210
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Laxp$i;->ding_receiver_count:I

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 244
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->i:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .end local v1    # "count":I
    .end local v2    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->d()V

    .line 251
    return-void

    .line 246
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->i:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxp$i;->ding_receiver_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

.method public getProfileUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBizType(I)V
    .locals 0
    .param p1, "bizType"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->r:I

    .line 148
    return-void
.end method

.method public setCanSendToAll(Z)V
    .locals 0
    .param p1, "canSendToAll"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->q:Z

    .line 144
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->m:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDingFrom(I)V
    .locals 0
    .param p1, "dingFrom"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->o:I

    .line 136
    return-void
.end method

.method public setDisabledUids(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "disabledUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public setDisplayProfileUids(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "displayProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public setHasSendToMe(Z)V
    .locals 0
    .param p1, "hasSendToMe"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->x:Z

    .line 156
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->l:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setMailMessage(Z)V
    .locals 0
    .param p1, "mailMessage"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->p:Z

    .line 140
    return-void
.end method

.method public setModifySelectedUser(Z)V
    .locals 0
    .param p1, "notInAddedMode"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->y:Z

    .line 185
    return-void
.end method

.method public setParentDingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentDingId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->n:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setProfileUids(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    :cond_0
    return-void
.end method

.method public setReceiverSelectorListener(Lcom/alibaba/android/ding/widget/ReceiverSelector$a;)V
    .locals 0
    .param p1, "receiverSelectorListener"    # Lcom/alibaba/android/ding/widget/ReceiverSelector$a;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector$a;

    .line 452
    return-void
.end method

.method public setSingleChooseMode(Z)V
    .locals 0
    .param p1, "singleChooseMode"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->k:Z

    .line 124
    return-void
.end method

.method public setSubBizType(I)V
    .locals 0
    .param p1, "subBizType"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->s:I

    .line 152
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method
