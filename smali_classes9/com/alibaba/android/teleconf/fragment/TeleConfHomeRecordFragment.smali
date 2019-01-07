.class public Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lexi$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;,
        Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field private M:Lcom/alibaba/wukong/im/Conversation;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field private S:Z

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field private Z:Lewj;

.field private aa:Lexi$a;

.field private ab:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

.field private ac:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/view/View;

.field private q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private r:Leum;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Leur;

.field private x:Levg;

.field private y:Landroid/content/BroadcastReceiver;

.field private z:Levq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    .line 203
    iput v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->O:I

    .line 207
    iput v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->P:I

    .line 211
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Q:Z

    .line 217
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->S:Z

    .line 219
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->T:I

    .line 221
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->U:Z

    .line 222
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->V:Z

    .line 224
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    .line 231
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->ab:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    .line 254
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$12;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->ac:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    .line 3033
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l()V

    return-void
.end method

.method static synthetic E(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic H(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->i()V

    return-void
.end method

.method static synthetic I(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    const/4 v1, 0x0

    .line 146
    .line 29389
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29390
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 29391
    if-eqz v0, :cond_0

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 29393
    goto :goto_0
.end method

.method static synthetic J(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j()I

    move-result v0

    return v0
.end method

.method static synthetic K(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    .line 30323
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;-><init>()V

    .line 30324
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->count:Ljava/lang/Integer;

    .line 30325
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->RUNNING:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->type:Ljava/lang/Integer;

    .line 30326
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;->recentTs:Ljava/lang/Long;

    .line 30327
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$17;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$17;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-class v2, Leyo$d;

    .line 30370
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 30328
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 30327
    invoke-static {v1, v0}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Leyo$d;)V

    .line 146
    return-void
.end method

.method static synthetic L(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lexi$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    .line 30870
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-object v0, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 146
    goto :goto_0
.end method

.method static synthetic O(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->P:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->P:I

    return v0
.end method

.method static synthetic P(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->P:I

    return v0
.end method

.method static synthetic Q(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->O:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 146
    .line 20887
    new-instance v0, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v0}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 20888
    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 20889
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 20890
    invoke-virtual {v0, p4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 20891
    invoke-virtual {v0, p3}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Levg;)Levg;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Levg;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->W:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    return-object p1
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2702
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2703
    .local v7, "recordObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 2704
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2705
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2706
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2707
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "val":Ljava/lang/Object;
    move-object v4, v9

    .line 2708
    check-cast v4, Ljava/util/List;

    .line 2709
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 2710
    const/4 v1, 0x0

    .line 2711
    .local v1, "i":I
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2712
    .local v6, "obj":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    iget v8, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    .line 2713
    .local v8, "status":I
    const/4 v5, 0x0

    .line 2714
    .local v5, "noAnswerCount":I
    :goto_1
    if-nez v8, :cond_1

    .line 2715
    add-int/lit8 v5, v5, 0x1

    .line 2716
    add-int/lit8 v1, v1, 0x1

    .line 2717
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 2719
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget v8, v10, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    goto :goto_1

    .line 2721
    :cond_1
    iput v5, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    .line 2723
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v2, v10}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 2724
    .local v2, "itemRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    iput-object v6, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2725
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2729
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":I
    .end local v2    # "itemRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    .end local v5    # "noAnswerCount":I
    .end local v6    # "obj":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v8    # "status":I
    .end local v9    # "val":Ljava/lang/Object;
    :cond_2
    return-object v7
.end method

.method private a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 10
    .param p1, "item"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1760
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    .line 1762
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13802
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1766
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l()V

    .line 1768
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1769
    .local v2, "recordSize":I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    .line 1770
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v3

    .line 13155
    iget-boolean v0, v3, Lewi;->a:Z

    .line 1771
    .local v0, "hasFavHeader":Z
    const/4 v1, 0x0

    .line 1772
    .local v1, "hasFavUser":Z
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1773
    const/4 v1, 0x1

    .line 1775
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_5

    .line 1776
    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    .line 1777
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v5, v3, :cond_5

    .line 1778
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1786
    .end local v0    # "hasFavHeader":Z
    .end local v1    # "hasFavUser":Z
    :cond_5
    :goto_1
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-eq v3, v5, :cond_6

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 1788
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1789
    :cond_6
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v3, v5, :cond_0

    .line 1790
    const-string/jumbo v3, "tele_conf"

    sget-object v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v6, "Remove ad item"

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v5, "meeting_firstmeeting_delete_click"

    invoke-interface {v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1792
    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {v4}, Lewh;->a(Z)V

    goto :goto_0

    .line 1782
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 13801
    :cond_8
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v3, :cond_0

    .line 13804
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 13805
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    iget-object v5, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 13806
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 13807
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Long;

    .line 13809
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 13810
    iget-wide v8, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->msgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v4

    .line 13811
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .line 13812
    goto :goto_2

    .line 13814
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 13815
    const-class v3, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageService;

    .line 13816
    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$21;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    .line 13864
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 13816
    invoke-static {v4, v7, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v4, v6, v5}, Lcom/alibaba/wukong/im/MessageService;->removeMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;IILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    .line 20934
    if-lez p2, :cond_1

    .line 20939
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20940
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20941
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20942
    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20943
    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20944
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20945
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    invoke-virtual {v1}, Lewh;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20946
    const-string/jumbo v1, "intent_key_support_fix_line"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20948
    :cond_0
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20950
    const-string/jumbo v1, "intent_key_show_conference_room"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20956
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 146
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;JLjava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;

    .prologue
    .line 146
    .line 33733
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 33734
    :cond_0
    :goto_0
    return-void

    .line 33737
    :cond_1
    const/4 v1, 0x0

    .line 33738
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 33739
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_3

    :goto_2
    move-object v1, v0

    .line 33742
    goto :goto_1

    .line 33744
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33745
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33747
    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33748
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33750
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 33751
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    .line 22342
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v3, "call_record_call_menu_list_click"

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 22344
    iget-object v3, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 22345
    if-eqz v3, :cond_2

    .line 22346
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22347
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 22349
    iget-object v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22350
    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 22353
    :cond_0
    iget-object v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 22354
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive()Z

    move-result v0

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 22355
    iget-object v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 22356
    iget-object v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 22357
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isDingSimCard()Z

    move-result v0

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    .line 22359
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22360
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    .line 22361
    if-eqz v0, :cond_1

    .line 22362
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 22365
    :cond_1
    iget-boolean v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog:Z

    if-eqz v0, :cond_4

    .line 22367
    iput v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 22368
    invoke-static {v5}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22369
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    const/16 v2, 0x3e8

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$28;

    invoke-direct {v3, p0, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$28;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Ljava/lang/String;ILcma;)V

    .line 22423
    :cond_2
    :goto_0
    return-void

    .line 22398
    :cond_3
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v0, v1, v4, v2}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0

    .line 22401
    :cond_4
    iget-boolean v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isYourVIP:Z

    if-eqz v0, :cond_6

    .line 22403
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->getOrgCorpId()Ljava/lang/String;

    move-result-object v3

    .line 22404
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 22405
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    sget-object v6, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual/range {v1 .. v6}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0

    .line 22407
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_calllist_vip_servicecall_quite_org_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 22408
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid corp id when vip call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22409
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leyw;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 22413
    :cond_6
    const/4 v0, 0x7

    iget v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v0, v3, :cond_7

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 22414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 22415
    :cond_7
    iput v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 22417
    :cond_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 22418
    const-string/jumbo v5, "conf_call_biz_call_with_mobile"

    iget-boolean v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22419
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v0, v1, v4, v2, v3}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    move v0, v2

    .line 22418
    goto :goto_1

    .line 22424
    :cond_a
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;

    .prologue
    .line 146
    .line 28755
    const-string/jumbo v0, ""

    .line 28756
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    .line 28758
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28759
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->toJsonStr()Ljava/lang/String;

    move-result-object v0

    .line 28761
    :cond_0
    const-string/jumbo v1, "key_conf_record_ad_list"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/Boolean;
    .param p7, "x6"    # Ljava/util/List;

    .prologue
    .line 146
    .line 34966
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 34996
    :cond_0
    :goto_0
    return-void

    .line 34970
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34973
    const/4 v1, 0x0

    .line 34974
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 34975
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v3, :cond_2

    .line 34978
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 34979
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 34982
    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J

    move-result-wide v4

    .line 34983
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isMultiUserCall()Z

    move-result v3

    if-nez v3, :cond_2

    .line 34984
    :cond_3
    cmp-long v3, v4, p2

    if-nez v3, :cond_2

    .line 34990
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v1, :cond_0

    .line 34991
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iput-object p4, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    .line 34992
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iput-object p5, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetTitle:Ljava/lang/String;

    .line 34993
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iput-object p6, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    .line 34994
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 34995
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34996
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 34998
    :cond_4
    iput-object p7, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 146
    .line 34004
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34027
    :cond_0
    :goto_0
    return-void

    .line 34008
    :cond_1
    const/4 v1, 0x0

    .line 34009
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 34010
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v3, :cond_2

    .line 34013
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 34014
    const/4 v4, 0x1

    iget v5, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x5

    iget v5, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x3

    iget v5, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v4, v5, :cond_2

    :cond_3
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 34017
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 34018
    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34024
    :goto_1
    if-eqz v0, :cond_0

    .line 34025
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 34026
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34027
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 34029
    :cond_4
    iput-object p3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/Map;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 146
    .line 26697
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Ljava/util/Map;Ljava/util/List;Z)V

    .line 26698
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p()V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2036
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->O:I

    .line 2040
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcms;->e(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2041
    const/4 v11, 0x0

    .line 2042
    .local v11, "singleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 2043
    .local v10, "recordItem":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 2047
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2050
    iget-object v7, v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2051
    .local v7, "confRecordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    iget v0, v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    move/from16 v16, v0

    const/16 v18, 0x7

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog()Z

    move-result v16

    if-nez v16, :cond_2

    .line 2053
    :cond_3
    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v16

    if-eqz v16, :cond_5

    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 2054
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->S:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->j:Ljava/lang/Boolean;

    .line 2055
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    .line 2057
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2058
    .local v9, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 2059
    .local v8, "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 2060
    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    .line 2061
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 2062
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2063
    iput-object v9, v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->i:Ljava/util/List;

    .line 2065
    invoke-static {v7}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J

    move-result-wide v12

    .line 2066
    .local v12, "uid":J
    const-wide/16 v18, 0x0

    cmp-long v16, v12, v18

    if-lez v16, :cond_2

    .line 2067
    if-nez v11, :cond_4

    .line 2068
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "singleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2070
    .restart local v11    # "singleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2073
    .end local v8    # "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    .end local v9    # "icons":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    .end local v12    # "uid":J
    :cond_5
    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isMultiUserCall()Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 2074
    const/4 v14, 0x0

    .line 2075
    .local v14, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2076
    .local v15, "uidsStr":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v16, v0

    if-lez v16, :cond_6

    .line 2077
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2078
    .restart local v14    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v0, v15

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-object v6, v15, v16

    .line 2079
    .local v6, "anUidsStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 2083
    .end local v6    # "anUidsStr":Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 2084
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->O:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->O:I

    .line 2086
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    iput v0, v10, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->l:I

    .line 2087
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v18

    const-string/jumbo v16, "EVENTBUTLER"

    .line 2088
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v19, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Z)V

    const-class v20, Lcma;

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    .line 2088
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcma;

    .line 2087
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_1

    .line 2097
    .end local v7    # "confRecordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v10    # "recordItem":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .end local v14    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "uidsStr":[Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 2098
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v17

    const-string/jumbo v16, "EVENTBUTLER"

    .line 2099
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v18, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Z)V

    const-class v19, Lcma;

    .line 2102
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    .line 2099
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcma;

    .line 2098
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 2106
    .end local v11    # "singleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 2107
    .local v7, "confRecordItem":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v7, :cond_9

    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 2110
    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 2111
    iget-object v0, v7, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-object/from16 v17, v0

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetTitle:Ljava/lang/String;

    goto :goto_3

    .line 2114
    .end local v7    # "confRecordItem":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_a
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v16

    new-instance v17, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$24;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$24;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V

    invoke-virtual/range {v16 .. v17}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/util/List;Z)V
    .locals 6
    .param p2, "isPush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    .local p1, "recordItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    const/4 v5, 0x0

    .line 2669
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2694
    :cond_0
    return-void

    .line 2672
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2673
    .local v2, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    if-eqz v4, :cond_2

    .line 2674
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2675
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2676
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-nez v1, :cond_4

    .line 2677
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2685
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_3
    :goto_1
    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2686
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2678
    :cond_4
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2679
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2680
    .local v0, "lastRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2681
    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    iput-boolean v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 2682
    iget-boolean v4, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    iput-boolean v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    goto :goto_1

    .line 2688
    .end local v0    # "lastRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2689
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2690
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .param p1, "bePressed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1574
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1575
    if-eqz p1, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1577
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1578
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_dail_up_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1580
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->i:Landroid/view/View;

    sget v1, Leuj$l;->dt_accessibility_tel_dialpad_hide:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1588
    :goto_0
    return-void

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_level2_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1583
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_level1_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1584
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_dail_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1586
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->i:Landroid/view/View;

    sget v1, Leuj$l;->dt_accessibility_tel_dialpad_show:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 9
    .param p1, "startPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1462
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return v5

    .line 1467
    :cond_1
    move v0, p1

    .local v0, "destPos":I
    if-gez p1, :cond_2

    .line 1468
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v8, "Invalid record list"

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1471
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 1472
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 1473
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 1474
    .local v3, "recordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-nez v3, :cond_3

    .line 1472
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1477
    :cond_3
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_4

    .line 1478
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->o:Ljava/lang/Boolean;

    .line 1482
    :goto_3
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v7, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1480
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->o:Ljava/lang/Boolean;

    goto :goto_3

    .line 1487
    .end local v3    # "recordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_5
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v1, v5}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 1488
    .local v1, "header":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v5, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v5, v6

    .line 1490
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->P:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u:Landroid/view/View;

    return-object v0
.end method

.method private b(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 11
    .param p1, "object"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 2131
    if-nez p1, :cond_1

    .line 2232
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    iget-object v6, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2137
    iget-object v6, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    const-string/jumbo v7, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2138
    .local v5, "uids":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    if-gtz v6, :cond_3

    .line 2139
    :cond_2
    sget v6, Leuj$l;->error_record:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2143
    :cond_3
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Q:Z

    if-nez v6, :cond_0

    .line 2146
    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Q:Z

    .line 2147
    array-length v6, v5

    if-ne v6, v8, :cond_4

    .line 2148
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2149
    .local v2, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v6, "EVENTBUTLER"

    .line 2150
    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$25;

    invoke-direct {v8, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$25;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    const-class v9, Lcma;

    .line 2181
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    .line 2150
    invoke-interface {v6, v8, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 2149
    invoke-virtual {v7, v2, v3, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 2183
    .end local v2    # "uid":J
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2184
    .local v4, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_6

    .line 2185
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2186
    .restart local v2    # "uid":J
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_5

    .line 2187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2189
    .end local v2    # "uid":J
    :cond_6
    const/4 v0, 0x0

    .line 2190
    .local v0, "beQuickResult":Z
    const/4 v6, 0x0

    invoke-static {v6}, Lcms;->e(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2191
    const/4 v0, 0x1

    .line 2193
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v6, "EVENTBUTLER"

    .line 2194
    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$26;

    invoke-direct {v8, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$26;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-class v9, Lcma;

    .line 2230
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    .line 2194
    invoke-interface {v6, v8, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 2193
    invoke-virtual {v7, v4, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto/16 :goto_0
.end method

.method private b(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 3
    .param p1, "itemRecord"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2517
    if-nez p1, :cond_1

    .line 2536
    :cond_0
    :goto_0
    return-void

    .line 2520
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    if-nez v1, :cond_2

    .line 2521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    .line 2526
    :goto_1
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;-><init>()V

    .line 2527
    .local v0, "localNumberObj":Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;
    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;->LocalJump:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    .line 15066
    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->a:Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject$JumpType;

    .line 2528
    sget v1, Leuj$l;->icon_addressbook_head_fill:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15074
    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->b:Ljava/lang/String;

    .line 2529
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->uidic_global_color_c11_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 15082
    iput v1, v0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->c:I

    .line 2530
    sget v1, Leuj$l;->dt_conference_contacts_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 16050
    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->e:Ljava/lang/String;

    .line 2532
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2533
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2534
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2523
    .end local v0    # "localNumberObj":Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 146
    .line 21235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21239
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    if-eqz v0, :cond_2

    .line 21240
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_0

    .line 21241
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_dialplate_servicephone_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 21247
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21248
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lewb;->b(Landroid/content/Context;)V

    .line 21249
    :cond_1
    :goto_1
    return-void

    .line 21244
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_dialplate_chargephone_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 21252
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 21254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21255
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 21256
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 21257
    iput v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 21258
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21259
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    .line 21260
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;J)V

    const-class v2, Lcma;

    .line 21338
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 21260
    invoke-interface {v0, v5, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 21259
    invoke-virtual {v4, v1, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 146
    .line 27597
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    invoke-static {p1}, Lewp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Ljava/util/Map;Ljava/util/List;Z)V

    .line 28553
    invoke-static {}, Lewx;->d()Z

    move-result v0

    .line 27600
    if-eqz v0, :cond_0

    .line 27601
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p()V

    .line 27602
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;B)V

    .line 27604
    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;)V

    .line 27605
    :goto_0
    return-void

    .line 27606
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->U:Z

    return p1
.end method

.method private static c(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J
    .locals 12
    .param p0, "recordItem"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 2801
    if-eqz p0, :cond_0

    iget-object v9, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-wide v4, v6

    .line 2820
    :cond_1
    :goto_0
    return-wide v4

    .line 2804
    :cond_2
    const-wide/16 v4, 0x0

    .line 2806
    .local v4, "uid":J
    iget-object v9, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2807
    .local v1, "uidsStr":[Ljava/lang/String;
    array-length v9, v1

    if-lez v9, :cond_1

    .line 2808
    array-length v9, v1

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 2809
    array-length v9, v1

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v0, v1, v8

    .line 19109
    .local v0, "anUidsStr":Ljava/lang/String;
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2811
    .local v2, "tempUid":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-eqz v10, :cond_3

    .line 2812
    move-wide v4, v2

    .line 2813
    goto :goto_0

    .line 2809
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2817
    .end local v0    # "anUidsStr":Ljava/lang/String;
    .end local v2    # "tempUid":J
    :cond_4
    aget-object v8, v1, v8

    .line 20109
    invoke-static {v8, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2817
    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 146
    .line 26418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26419
    :goto_0
    return-object v1

    .line 26422
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26423
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 26424
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v3, :cond_1

    .line 26427
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    .line 26428
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 146
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    .line 20557
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20558
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20559
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    if-eqz v0, :cond_0

    .line 20560
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20561
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20562
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20563
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 20565
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20566
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20567
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20568
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .prologue
    .line 146
    .line 23370
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 22847
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 22849
    :cond_0
    :goto_0
    return-void

    .line 22852
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22853
    sget v1, Leuj$l;->dt_conference_join_conference_alert_message:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_join_title:I

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$35;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$35;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    .line 22854
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Leuj$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$33;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$33;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 22861
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 22867
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Q:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .prologue
    .line 146
    .line 23825
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23828
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23829
    sget v1, Leuj$l;->delete_tele_record:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Leuj$l;->sure:I

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$32;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$32;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    .line 23830
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Leuj$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$31;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$31;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 23837
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 23843
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .prologue
    .line 146
    .line 30438
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemRunning:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-eq v0, v1, :cond_1

    .line 30441
    :cond_0
    :goto_0
    return-void

    .line 30443
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30444
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30446
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    .line 30448
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30449
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 30450
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 30451
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 30452
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v1, v2, :cond_0

    .line 30453
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 146
    .line 31553
    invoke-static {}, Lewx;->d()Z

    move-result v0

    .line 30875
    if-eqz v0, :cond_0

    .line 30876
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "config switch is closed"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30883
    :goto_0
    return-void

    .line 30880
    :cond_0
    const-string/jumbo v0, "conf_grant_dialog_show_flag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 30881
    if-eqz v0, :cond_1

    .line 30882
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "The grant dialog has been showed"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30885
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 30886
    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$22;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .prologue
    .line 146
    .line 32494
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-nez v0, :cond_1

    .line 32495
    :cond_0
    :goto_0
    return-void

    .line 32497
    :cond_1
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;-><init>()V

    .line 32498
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;->conferenceId:Ljava/lang/String;

    .line 32499
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$19;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$19;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    const-class v2, Leyo$d;

    .line 33370
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 32500
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 32499
    invoke-static {v1, v0}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Leyo$d;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    .line 20873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20875
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    .line 20876
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    .line 20877
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    .line 20878
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20879
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20880
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-object v0
.end method

.method private i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1077
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n()V

    .line 1079
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    .line 11369
    iget-boolean v0, v0, Lewh;->b:Z

    .line 1079
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->S:Z

    .line 1080
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1081
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1081
    invoke-interface {v0, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1080
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method private j()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1397
    const/4 v1, -0x1

    .line 1398
    .local v1, "pos":I
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1400
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 1401
    .local v2, "recordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-nez v3, :cond_1

    .line 1399
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v3, v4, :cond_0

    .line 1405
    move v1, v0

    .line 1410
    .end local v0    # "i":I
    .end local v2    # "recordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_2
    return v1
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->T:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    const/4 v2, 0x0

    .line 146
    .line 21611
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->setVisibility(I)V

    .line 21612
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a()V

    .line 21613
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21614
    invoke-direct {p0, v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Z)V

    .line 146
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    return-object v0
.end method

.method private l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1652
    .line 11619
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1653
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->w:Leur;

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->w:Leur;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-virtual {v0, v1}, Leur;->b(Ljava/util/List;)V

    .line 1657
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    return-void

    .line 11623
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 11624
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v0, v3, :cond_3

    .line 11625
    const/4 v0, 0x1

    move v1, v0

    .line 11629
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 11630
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmpty:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-eq v3, v4, :cond_4

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmptyGrant:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v3, v4, :cond_5

    .line 11633
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11635
    :cond_5
    if-nez v1, :cond_0

    .line 11636
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 11637
    :goto_2
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v1, v3, :cond_6

    .line 11638
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12553
    :cond_6
    invoke-static {}, Lewx;->d()Z

    move-result v0

    .line 11641
    if-eqz v0, :cond_8

    .line 11642
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmpty:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 11643
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11636
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    goto :goto_2

    .line 11645
    :cond_8
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoEmptyGrant:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 11646
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private m()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2430
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 14042
    :cond_0
    :goto_0
    return-void

    .line 2433
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2434
    .local v1, "phoneNumberSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2435
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2436
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2437
    .local v3, "recordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2438
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2439
    .local v2, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2440
    iget-object v6, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    invoke-static {v6}, Leyv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2441
    .local v4, "uniquePhoneNumber":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2447
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;>;"
    .end local v2    # "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v3    # "recordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    .end local v4    # "uniquePhoneNumber":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;

    invoke-direct {v8, p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/Set;)V

    .line 14041
    if-eqz v8, :cond_0

    .line 14044
    const-string/jumbo v5, "THREAD"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 14045
    new-instance v9, Lewl$8;

    const/16 v10, 0x64

    invoke-direct {v9, v6, v7, v10, v8}, Lewl$8;-><init>(Lewl;Landroid/app/Activity;ILewl$a;)V

    invoke-interface {v5, v9}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Levg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    return-object v0
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2507
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 2509
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 2510
    .local v0, "lastMsg":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    .line 2511
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->viewMessage()V

    .line 2514
    .end local v0    # "lastMsg":Lcom/alibaba/wukong/im/Message;
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lewj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Z:Lewj;

    return-object v0
.end method

.method private o()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2540
    const/4 v0, 0x0

    .line 2541
    .local v0, "doAction":Z
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-nez v6, :cond_0

    .line 2542
    const/4 v6, 0x0

    .line 2591
    :goto_0
    return v6

    .line 2544
    :cond_0
    const/4 v4, 0x0

    .line 2545
    .local v4, "keyRecordObj":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    const/4 v3, 0x0

    .line 2546
    .local v3, "isHasContactEntrance":Z
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2547
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 2548
    .local v5, "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemContact:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-eq v7, v8, :cond_2

    iget-object v7, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v8, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemFunctions:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v7, v8, :cond_1

    .line 2551
    :cond_2
    const/4 v3, 0x1

    .line 2552
    move-object v4, v5

    .line 2557
    .end local v5    # "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_3
    if-nez v3, :cond_9

    .line 2558
    const/4 v1, 0x0

    .line 2559
    .local v1, "funcAndContactEntrance":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->V:Z

    if-eqz v6, :cond_6

    .line 2560
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2561
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    .line 2563
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2564
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .end local v1    # "funcAndContactEntrance":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemFunctions:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v1, v6}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 2565
    .restart local v1    # "funcAndContactEntrance":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    .line 2568
    :cond_6
    if-nez v1, :cond_7

    .line 2569
    new-instance v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .end local v1    # "funcAndContactEntrance":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemContact:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v1, v6}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 2570
    .restart local v1    # "funcAndContactEntrance":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    .line 2572
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2574
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v2, v6}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 2575
    .local v2, "header":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2577
    const/4 v0, 0x1

    .end local v1    # "funcAndContactEntrance":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .end local v2    # "header":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_8
    :goto_1
    move v6, v0

    .line 2591
    goto :goto_0

    .line 2579
    :cond_9
    if-eqz v4, :cond_8

    .line 2580
    iget-boolean v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->V:Z

    if-eqz v6, :cond_8

    .line 2581
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2582
    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemFunctions:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    iput-object v6, v4, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    .line 2583
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    .line 2585
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    return-object v0
.end method

.method private p()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2611
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-nez v5, :cond_1

    .line 18412
    :cond_0
    :goto_0
    return-void

    .line 2614
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2615
    iget-boolean v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->U:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    if-eqz v5, :cond_2

    .line 2616
    new-instance v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItemVirtual:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    invoke-direct {v3, v5}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;)V

    .line 2617
    .local v3, "record":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget-object v5, v5, Levg;->c:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->b:Ljava/lang/String;

    .line 2618
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget-object v5, v5, Levg;->f:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->c:Ljava/lang/String;

    .line 2619
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget-object v5, v5, Levg;->e:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->d:Ljava/lang/String;

    .line 2620
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget-object v5, v5, Levg;->h:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->e:Ljava/lang/String;

    .line 2621
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget-object v5, v5, Levg;->l:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->m:Ljava/lang/String;

    .line 2623
    new-instance v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;-><init>()V

    iput-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    .line 2624
    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget v6, v6, Levg;->j:I

    iput v6, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->a:I

    .line 2625
    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget v6, v6, Levg;->d:I

    iput v6, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->b:I

    .line 2626
    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->x:Levg;

    iget v6, v6, Levg;->g:I

    iput v6, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$a;->c:I

    .line 2628
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2631
    .end local v3    # "record":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o()Z

    .line 2633
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 2634
    .local v4, "startPos":I
    invoke-direct {p0, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(I)Z

    .line 16595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16596
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16597
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16598
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 16599
    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$30;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$30;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2638
    .local v2, "normalRecords":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;>;"
    :cond_3
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_im_voip_not_connect_tip_show"

    invoke-virtual {v5, v6}, Lchx;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2639
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2640
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 2641
    .local v0, "firNormalRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    if-eqz v5, :cond_4

    .line 17309
    const-string/jumbo v5, "conf_fir_enter_call_setting_guide"

    invoke-static {v5, v11}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 2643
    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget v5, v5, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget v5, v5, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v6, v5, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    .line 2646
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    .line 2647
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->k:Ljava/lang/Boolean;

    .line 2654
    .end local v0    # "firNormalRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2656
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l()V

    .line 2658
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Ljava/util/List;)V

    .line 2660
    const/4 v1, 0x0

    .line 2661
    .local v1, "isNotify":Z
    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2663
    :cond_5
    const/4 v1, 0x1

    .line 18158
    :cond_6
    iget-boolean v5, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->V:Z

    if-eqz v5, :cond_0

    .line 18161
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v7

    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$14;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Z)V

    const-class v6, Leyo$d;

    .line 18191
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 18162
    invoke-static {v5, v6, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leyo$d;

    .line 18410
    const-class v6, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 18411
    if-eqz v6, :cond_0

    .line 18414
    new-instance v8, Leyd$3;

    invoke-direct {v8, v7, v5}, Leyd$3;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v6, v8}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getCmNumber(Liyv;)V

    goto/16 :goto_0

    .line 2649
    .end local v1    # "isNotify":Z
    .restart local v0    # "firNormalRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->k:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private q()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 2775
    const/4 v1, 0x0

    .line 18766
    .local v1, "destListCodeNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;>;"
    const-string/jumbo v7, "key_conf_record_ad_list"

    invoke-static {v7, v6}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18767
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 18768
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;-><init>()V

    .line 18769
    invoke-virtual {v0, v7}, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;

    .line 2777
    .local v0, "cacheNumModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;
    :goto_0
    if-eqz v0, :cond_2

    .line 2778
    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2779
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "destListCodeNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2781
    .restart local v1    # "destListCodeNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;>;"
    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 2782
    .local v5, "size":I
    const/4 v7, 0x3

    if-le v5, v7, :cond_0

    .line 2783
    const/4 v5, 0x3

    .line 2785
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 2786
    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;

    .line 2787
    .local v3, "numberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    if-nez v3, :cond_1

    .line 2785
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19087
    :cond_1
    if-eqz v3, :cond_3

    .line 19088
    new-instance v4, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;-><init>()V

    .line 19089
    iget-object v7, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;->mediaId:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->d:Ljava/lang/String;

    .line 19090
    iget-object v7, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;->title:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->e:Ljava/lang/String;

    .line 19091
    iget-object v7, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;->jumpUrl:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;->f:Ljava/lang/String;

    .line 2792
    .local v4, "numberObject":Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2797
    .end local v2    # "i":I
    .end local v3    # "numberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    .end local v4    # "numberObject":Lcom/alibaba/android/teleconf/data/TeleCodeNumberObject;
    .end local v5    # "size":I
    :cond_2
    return-object v1

    .restart local v2    # "i":I
    .restart local v3    # "numberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    .restart local v5    # "size":I
    :cond_3
    move-object v4, v6

    goto :goto_3

    .end local v0    # "cacheNumModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;
    .end local v2    # "i":I
    .end local v3    # "numberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    .end local v5    # "size":I
    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    .line 24591
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    if-eqz v0, :cond_0

    .line 24592
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    invoke-interface {v0}, Lexi$a;->b()V

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    .line 24661
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24663
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 24664
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 24667
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 24668
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24670
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    if-eqz v0, :cond_2

    .line 24671
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    invoke-interface {v0, v1}, Lexi$a;->a(Ljava/util/List;)V

    .line 146
    :cond_2
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 146
    .line 24677
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v0

    .line 25155
    iget-boolean v0, v0, Lewi;->a:Z

    .line 24677
    if-eqz v0, :cond_5

    .line 24678
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Show fav header"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24679
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 24680
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24681
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 24682
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24683
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    if-eqz v0, :cond_0

    .line 24684
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    invoke-virtual {v0, v1}, Leum;->b(Ljava/util/List;)V

    .line 24749
    :cond_0
    :goto_0
    return-void

    .line 24687
    :cond_1
    invoke-static {}, Lewi;->a()Lewi;

    invoke-static {}, Lewi;->b()Ljava/util/List;

    move-result-object v1

    .line 24688
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24689
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "No fav uids"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24690
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24691
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    if-eqz v0, :cond_3

    .line 24692
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leum;->b(Ljava/util/List;)V

    .line 24694
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 24695
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 24697
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24698
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 24699
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24701
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Read fav uids "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24702
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 24703
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$20;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$20;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-class v4, Lcma;

    .line 24747
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 24703
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 24702
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 24751
    :cond_5
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "Hide fav header"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24752
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Leur;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->w:Leur;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 25553
    invoke-static {}, Lewx;->d()Z

    move-result v0

    .line 146
    return v0
.end method

.method static synthetic w(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m()V

    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n()V

    return-void
.end method

.method static synthetic z(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "userNick"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 439
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 445
    .local v1, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "resource"

    sget v4, Leuj$h;->conf_invite_icon_for_all:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string/jumbo v3, "title"

    sget v4, Leuj$l;->and_conf_free_call_topic:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string/jumbo v3, "content"

    sget v4, Leuj$l;->and_conference_invite_user_tip:I

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 452
    sget v3, Leuj$l;->conf_txt_send_invite_wechat:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11079
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 453
    sget v3, Leuj$l;->conf_txt_send_invite_smsmsg:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11083
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 454
    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$36;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;J)V

    .line 11091
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 477
    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$37;

    invoke-direct {v3, p0, p3, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$37;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 11095
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 504
    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$38;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$38;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 510
    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 511
    iput-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 512
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 6
    .param p1, "item"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 375
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 379
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Goto detail , key "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 386
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/conf_records_detail.html"

    new-instance v4, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 384
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 416
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conference/feedback.html"

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$34;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$34;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 536
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 355
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    invoke-interface {v1}, Lexi$a;->a()Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v0

    .line 358
    .local v0, "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    if-eqz v0, :cond_0

    .line 359
    iget-boolean v1, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    .line 360
    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 363
    .end local v0    # "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->X:Z

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Y:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 10703
    iput-boolean v2, v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->e:Z

    .line 10704
    iput-object v3, v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->f:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 366
    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u:Landroid/view/View;

    .line 548
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 549
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v3, "Hide the pad"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 552
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Z)V

    .line 553
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->setVisibility(I)V

    .line 556
    :cond_0
    const/4 v0, 0x1

    .line 559
    :cond_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 288
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 7195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->H:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 7196
    :goto_0
    return-void

    .line 7199
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    .line 7200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->F:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7204
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7205
    invoke-static {}, Lewh;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->F:Ljava/lang/String;

    .line 7208
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_3

    .line 7209
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$15;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    .line 7232
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 7210
    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->F:Ljava/lang/String;

    .line 7209
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 7245
    :goto_2
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 7246
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$16;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-class v3, Lewh$a;

    .line 7319
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 7246
    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lewh$a;

    .line 7592
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;-><init>()V

    .line 7593
    invoke-static {}, Lewh;->g()Levg;

    move-result-object v3

    .line 7594
    if-nez v3, :cond_4

    .line 7595
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;->version:Ljava/lang/Integer;

    .line 7596
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;->id:Ljava/lang/Integer;

    .line 7601
    :goto_3
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Lewh;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ad req "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;->version:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7602
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v4

    new-instance v5, Lewh$4;

    invoke-direct {v5, v1, v2, v0, v3}, Lewh$4;-><init>(Lewh;Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;Lewh$a;Levg;)V

    .line 8147
    if-nez v2, :cond_5

    .line 7239
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->f()V

    .line 8376
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$18;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 7201
    :catch_0
    move-exception v0

    .line 7202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 7234
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->i()V

    goto :goto_2

    .line 7598
    :cond_4
    iget v4, v3, Levg;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;->version:Ljava/lang/Integer;

    .line 7599
    iget v4, v3, Levg;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;->id:Ljava/lang/Integer;

    goto :goto_3

    .line 8150
    :cond_5
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 8151
    if-eqz v0, :cond_2

    .line 8154
    new-instance v1, Leyd$6;

    invoke-direct {v1, v4, v5}, Leyd$6;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getCallAd(Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;Liyv;)V

    goto :goto_4
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 303
    check-cast p1, Lexi$a;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    .line 304
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3564
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    .line 3565
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v1

    .line 3566
    if-lt v0, v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->T:I

    .line 3568
    new-instance v0, Lewj;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Z:Lewj;

    .line 4132
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "conference_ad_list_show_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3569
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->V:Z

    .line 4880
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$10;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->y:Landroid/content/BroadcastReceiver;

    .line 5024
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5025
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5026
    const-string/jumbo v1, "com.workapp.conf.setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5027
    const-string/jumbo v1, "com.workapp.conf.feedback.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5028
    const-string/jumbo v1, "com.workapp.org.external.added"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5029
    const-string/jumbo v1, "com.workapp.conf.localcalllog.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5030
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5032
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->z:Levq;

    .line 5058
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->z:Levq;

    .line 5610
    iput-object v1, v0, Levu;->i:Levq;

    .line 277
    return-void

    :cond_0
    move v0, v1

    .line 3566
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 282
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->I:Landroid/view/View;

    .line 6573
    sget v0, Leuj$i;->ll_create_call:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b:Landroid/view/View;

    .line 6574
    sget v0, Leuj$i;->ll_create_conf:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c:Landroid/view/View;

    .line 6575
    sget v0, Leuj$i;->ll_dial_biz_call:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e:Landroid/view/View;

    .line 6576
    sget v0, Leuj$i;->ll_dial_phone_call:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->f:Landroid/view/View;

    .line 6577
    sget v0, Leuj$i;->ll_dial_call_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->d:Landroid/view/View;

    .line 6578
    sget v0, Leuj$i;->ll_dial_show_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l:Landroid/view/View;

    .line 6579
    sget v0, Leuj$i;->ll_dial_show:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->i:Landroid/view/View;

    .line 6580
    sget v0, Leuj$i;->ll_dial_show_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 6581
    sget v0, Leuj$i;->ll_dial_show_txt:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->j:Landroid/widget/TextView;

    .line 6582
    sget v0, Leuj$i;->ll_dial_phone_call_chock_left:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->g:Landroid/view/View;

    .line 6583
    sget v0, Leuj$i;->ll_dial_phone_call_chock_right:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h:Landroid/view/View;

    .line 6584
    sget v0, Leuj$i;->ll_loading:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m:Landroid/view/View;

    .line 6585
    sget v0, Leuj$i;->ll_record_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->n:Landroid/view/View;

    .line 6587
    sget v0, Leuj$i;->ll_bottom_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->v:Landroid/view/View;

    .line 6588
    sget v0, Leuj$i;->ll_dial_pad:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .line 6589
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->getDialPad()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->u:Landroid/view/View;

    .line 6590
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->ab:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->setOnNumberChangedListener(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$a;)V

    .line 6591
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->ac:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->setOnShowChangedListener(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$b;)V

    .line 6593
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$39;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6605
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$40;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6627
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->i:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6663
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6669
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->f:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$4;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6684
    sget v0, Leuj$i;->list_records:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    .line 6686
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$5;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6745
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 6791
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$7;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6822
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_record_header:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6824
    sget v0, Leuj$i;->view_search:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 6825
    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$8;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6836
    sget v0, Leuj$i;->favorites_user_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 6837
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$9;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6861
    sget v0, Leuj$i;->favorites_user_tip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->s:Landroid/widget/TextView;

    .line 6862
    sget v0, Leuj$i;->favorites_user_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p:Landroid/view/View;

    .line 6864
    new-instance v0, Leum;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    .line 6865
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Leum;->a(I)V

    .line 6866
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->q:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->r:Leum;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6868
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 6869
    if-nez v0, :cond_0

    .line 6870
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 6872
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6875
    :cond_0
    new-instance v0, Leur;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Leur;-><init>(Landroid/app/Activity;Lexi$c;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->w:Leur;

    .line 6876
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->w:Leur;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 314
    .line 9062
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->y:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 9063
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 9064
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->y:Landroid/content/BroadcastReceiver;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->z:Levq;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    .line 9610
    iput-object v2, v0, Levu;->i:Levq;

    .line 317
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->z:Levq;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B:Ljava/util/List;

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->C:Ljava/util/Map;

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 331
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->D:Ljava/util/Map;

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A:Ljava/util/List;

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    if-eqz v0, :cond_a

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .line 9805
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    if-eqz v1, :cond_6

    .line 9806
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 9807
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 9808
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->i:Landroid/media/SoundPool;

    .line 9810
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g:Landroid/media/SoundPool$OnLoadCompleteListener;

    if-eqz v1, :cond_7

    .line 9811
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->g:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 9757
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 9758
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9759
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d:Ljava/util/List;

    .line 9761
    :cond_8
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    if-eqz v1, :cond_9

    .line 9762
    iget-object v1, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    invoke-virtual {v1}, Lewj;->a()V

    .line 9764
    :cond_9
    iput-object v2, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h:Lewj;

    .line 341
    iput-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->t:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    .line 344
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->Z:Lewj;

    invoke-virtual {v0}, Lewj;->a()V

    .line 345
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 346
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDetach()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->aa:Lexi$a;

    .line 310
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->M:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 298
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 350
    sget v0, Leuj$j;->layout_conf_dingtalk_call_record_page:I

    return v0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
