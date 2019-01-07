.class public Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.super Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
.source "GlobalSearchFragment.java"

# interfaces
.implements Lcom/alibaba/android/search/fragment/AllSearchFragment$a;
.implements Lenb$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    }
.end annotation


# static fields
.field private static e:Lcom/alibaba/android/search/SearchGroupType;


# instance fields
.field private A:Lerl$a;

.field private B:Lerk$a;

.field private C:Lerc$a;

.field private D:Leqn$a;

.field private E:Leqz$a;

.field private F:Leqt$a;

.field private M:Leqp$a;

.field private N:Leqp$a;

.field private O:Leqp$a;

.field private P:Leqp$a;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/TextView;

.field private ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private ad:Leoe;

.field private ae:I

.field private af:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/search/SearchGroupType;",
            "Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Landroid/os/Handler;

.field private ah:I

.field private ai:J

.field private aj:Lcom/alibaba/android/search/SearchGroupType;

.field private ak:Landroid/os/Handler;

.field private al:Lerw$b;

.field private am:Lere$b;

.field private an:Leqr$b;

.field private ao:Lerl$b;

.field private ap:Lerk$b;

.field private aq:Leqv$b;

.field private ar:Leri$b;

.field private as:Lers$b;

.field private at:Lerv$b;

.field private au:Lerc$b;

.field private av:Leqt$b;

.field private aw:Leqn$b;

.field private ax:Leqz$b;

.field protected c:Ljava/lang/String;

.field public d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Landroid/support/v4/app/FragmentTransaction;

.field private n:Z

.field private o:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

.field private p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

.field private q:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

.field private r:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

.field private s:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

.field private t:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

.field private u:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

.field private v:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

.field private w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private x:Lerw$a;

.field private y:Lere$a;

.field private z:Leqr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    sput-object v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e:Lcom/alibaba/android/search/SearchGroupType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n:Z

    .line 231
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ae:I

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->af:Ljava/util/Map;

    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ag:Landroid/os/Handler;

    .line 241
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    .line 243
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    .line 816
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->al:Lerw$b;

    .line 1384
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$21;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->am:Lere$b;

    .line 1441
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->an:Leqr$b;

    .line 1531
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$3;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ao:Lerl$b;

    .line 1611
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$4;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ap:Lerk$b;

    .line 1698
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$5;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aq:Leqv$b;

    .line 1757
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$6;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ar:Leri$b;

    .line 1814
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$7;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->as:Lers$b;

    .line 1871
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$8;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->at:Lerv$b;

    .line 1944
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$9;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->au:Lerc$b;

    .line 2012
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$10;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->av:Leqt$b;

    .line 2080
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$11;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aw:Leqn$b;

    .line 2177
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$13;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ax:Leqz$b;

    .line 2483
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f:I

    return v0
.end method

.method static synthetic D(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->v:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->s:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->t:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->u:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqn$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    return-object v0
.end method

.method static synthetic O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->l:J

    return-wide v0
.end method

.method static synthetic Q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    .line 26399
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Q:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->R:Z

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->S:Z

    if-eqz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->T:Z

    if-eqz v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->U:Z

    if-eqz v0, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->V:Z

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->W:Z

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->X:Z

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Y:Z

    if-eqz v0, :cond_9

    .line 26409
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 26412
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    .line 26413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Q:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->R:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->S:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->T:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->U:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->V:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->X:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->W:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Y:Z

    if-eqz v0, :cond_d

    .line 26419
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    .line 26420
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    .line 26421
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    .line 26422
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    .line 26423
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    .line 26424
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    .line 26425
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    .line 26426
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    .line 26427
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Leqp$a;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    move v0, v2

    .line 26428
    :goto_0
    if-nez v0, :cond_12

    .line 26429
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "feature_search_global_msg_search"

    .line 27083
    invoke-virtual {v0, v3, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 26429
    if-nez v0, :cond_b

    .line 26430
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v3, "config_switch_global_msg_search_enable"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    move v0, v2

    .line 26432
    :goto_1
    iget-boolean v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Z:Z

    if-nez v3, :cond_10

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v0, v3, :cond_10

    move v0, v2

    .line 26433
    :goto_2
    if-eqz v0, :cond_11

    .line 26435
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v0}, Lerk$a;->l()Z

    move-result v0

    .line 26436
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v3, v2}, Lerk$a;->a(Z)V

    .line 26437
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    if-eqz v3, :cond_c

    .line 26438
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v4}, Lcom/alibaba/android/search/SearchGroupType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lerk$a;->c(Ljava/lang/String;)V

    .line 26440
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lerk$a;->a(Ljava/lang/String;Z)V

    .line 26441
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v3, v0}, Lerk$a;->a(Z)V

    .line 26442
    iput-boolean v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Z:Z

    .line 26443
    const-string/jumbo v0, "start server msg search"

    new-array v1, v1, [Ljava/lang/Object;

    .line 28050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26449
    :cond_d
    :goto_3
    return-void

    :cond_e
    move v0, v1

    .line 26427
    goto :goto_0

    :cond_f
    move v0, v1

    .line 26430
    goto :goto_1

    :cond_10
    move v0, v1

    .line 26432
    goto :goto_2

    .line 26445
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    invoke-static {v0}, Letb;->a(Leoe;)V

    .line 26447
    const-string/jumbo v0, "zero search: %s %s %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 28084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 26447
    aput-object v1, v3, v2

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 28160
    iget v1, v1, Leoe;->h:I

    .line 26447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    .line 29050
    const-string/jumbo v1, "search"

    invoke-static {v1, v0, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 26450
    :cond_12
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 29084
    iget-object v0, v0, Leoe;->a:Ljava/lang/String;

    .line 26450
    invoke-static {v0}, Letb;->a(Ljava/lang/String;)I

    move-result v0

    .line 26451
    if-nez v0, :cond_d

    .line 26452
    const-string/jumbo v0, "Query log count 0"

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 29140
    iget-object v1, v1, Leoe;->f:Ljava/lang/String;

    .line 26452
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 30084
    iget-object v2, v2, Leoe;->a:Ljava/lang/String;

    .line 26452
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Letb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method static synthetic R(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    .line 30295
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    instance-of v0, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;

    if-eqz v0, :cond_1

    .line 30296
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    check-cast v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g()V

    :cond_0
    :goto_0
    return-void

    .line 30297
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    instance-of v0, v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    if-eqz v0, :cond_0

    .line 30298
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    check-cast v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->q()V

    goto :goto_0
.end method

.method static synthetic S(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ag:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ai:J

    return-wide v0
.end method

.method static synthetic U(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ah:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/SearchGroupType;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q:Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/DeptSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->v:Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->u:Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/FunctionSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->t:Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/GroupSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r:Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->s:Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqn$a;)Leqn$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqn$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqr$a;)Leqr$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqr$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqt$a;)Leqt$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqt$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqz$a;)Leqz$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqz$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E:Leqz$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lerc$a;)Lerc$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lerc$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lere$a;)Lere$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lere$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->y:Lere$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lerk$a;)Lerk$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lerk$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lerl$a;)Lerl$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lerl$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lerw$a;)Lerw$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lerw$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 129
    .line 20930
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-eqz v0, :cond_0

    .line 20933
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setVisibility(I)V

    .line 20934
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 20935
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 20936
    if-nez v0, :cond_2

    .line 20937
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v0

    .line 20939
    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lemt$c;->search_narrow_header_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 20940
    :goto_1
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 20941
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 20939
    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i:Z

    return v0
.end method

.method private static a(Leqp$a;)Z
    .locals 2
    .param p0, "presenter"    # Leqp$a;

    .prologue
    .line 2459
    if-eqz p0, :cond_0

    invoke-interface {p0}, Leqp$a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2460
    .local v0, "hasResults":Z
    :goto_0
    return v0

    .line 2459
    .end local v0    # "hasResults":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/SearchGroupType;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 129
    sput-object p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e:Lcom/alibaba/android/search/SearchGroupType;

    return-object p0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/SearchGroupType;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    return-object p1
.end method

.method private c(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 4
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2251
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v1}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    .line 2252
    .local v0, "currentTab":Lcom/alibaba/android/search/SearchGroupType;
    iget-boolean v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n:Z

    if-nez v1, :cond_0

    .line 2253
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    .line 2265
    :goto_0
    return-void

    .line 2254
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2258
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    sget v2, Lemt$a;->right_in:I

    sget v3, Lemt$a;->left_out:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 2263
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    sget v2, Lemt$a;->left_in:I

    sget v3, Lemt$a;->right_out:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Q:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Leqp$a;)Leqp$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Leqp$a;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->R:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->S:Z

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leoe;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->T:Z

    return p1
.end method

.method public static g()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->U:Z

    return p1
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->af:Ljava/util/Map;

    return-object v0
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    sput-object v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e:Lcom/alibaba/android/search/SearchGroupType;

    .line 140
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Z:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ap:Lerk$b;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->V:Z

    return p1
.end method

.method static synthetic j(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lere$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->y:Lere$a;

    return-object v0
.end method

.method private j()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 368
    .line 4417
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    const-string/jumbo v1, ":debugRec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4418
    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    move-result-object v0

    .line 5082
    iget-object v1, v0, Lcom/alibaba/android/search/service/SearchConfigCenter;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/alibaba/android/search/service/SearchConfigCenter;->b:Ljava/util/List;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 4418
    :goto_0
    if-eqz v0, :cond_2

    .line 4419
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/search/devtools/RecommendDevActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 368
    :goto_1
    if-eqz v0, :cond_3

    .line 414
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v6

    .line 5082
    goto :goto_0

    :cond_2
    move v0, v6

    .line 4424
    goto :goto_1

    .line 373
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m()Z

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v0}, Lerw$a;->c()V

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    invoke-interface {v0}, Leqn$a;->e()V

    .line 379
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Leqn$a;->a(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->af:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5491
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    instance-of v0, v0, Leqo;

    if-eqz v0, :cond_4

    .line 5493
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    check-cast v0, Leqo;

    .line 6321
    iput-boolean v3, v0, Leqo;->b:Z

    .line 5496
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    invoke-interface {v0}, Leqr$a;->A_()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    instance-of v0, v0, Leqo;

    if-eqz v0, :cond_6

    .line 5498
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    check-cast v0, Leqo;

    .line 6325
    iput-boolean v3, v0, Leqo;->a:Z

    .line 385
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->k()V

    .line 6767
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    if-eqz v0, :cond_7

    .line 6769
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a(Z)V

    .line 6770
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v0, v8}, Lerk$a;->a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v0}, Lerw$a;->b()V

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    if-eqz v0, :cond_8

    .line 401
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "search for "

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 7084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 401
    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 8050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ai:J

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    const-wide/16 v4, 0x61a8

    invoke-virtual {v0, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 410
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->l()V

    .line 8428
    invoke-static {}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a(Ljava/lang/String;)Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    move-result-object v0

    .line 8429
    if-eqz v0, :cond_0

    .line 8433
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SEARCH_MARKET_ACTIVITY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 8434
    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 8433
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 8436
    iget-object v1, v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->jumpUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->bannerMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8437
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic j(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->W:Z

    return p1
.end method

.method private k()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 621
    invoke-static {}, Lest;->a()Lest;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ae:I

    iget-object v6, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v6}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts;->b(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lest;->a(Ljava/lang/String;II)Leoe;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v0, "basePresenters":Ljava/util/List;, "Ljava/util/List<Leqp$a;>;"
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E:Leqz$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->y:Lere$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 638
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leqp$a;

    .line 639
    .local v2, "tmp":Leqp$a;
    if-eqz v2, :cond_0

    .line 640
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    invoke-interface {v2, v3}, Leqp$a;->a(Leoe;)V

    .line 641
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Leqp$a;->b(Ljava/lang/String;)V

    .line 637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v2    # "tmp":Leqp$a;
    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    const/4 v1, 0x0

    .line 129
    .line 17305
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    instance-of v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    if-eqz v0, :cond_1

    .line 17306
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    check-cast v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s()Z

    move-result v0

    .line 17309
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v2}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 17310
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    :goto_1
    return-void

    .line 17312
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->X:Z

    return p1
.end method

.method private l()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 647
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v9, "renders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 650
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->y:Lere$a;

    if-eqz v10, :cond_0

    .line 651
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    invoke-interface {v10}, Leqn$a;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 652
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v10, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v11, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->y:Lere$a;

    invoke-direct {v0, p0, v10, v11}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    .line 653
    .local v0, "assureRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    .end local v0    # "assureRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_0
    new-instance v7, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v10, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    invoke-direct {v7, p0, v10}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 658
    .local v7, "recommendRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const/4 v1, 0x0

    .line 661
    .local v1, "hasContactRender":Z
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    if-eqz v10, :cond_1

    .line 663
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v1, 0x1

    .line 667
    :cond_1
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    if-eqz v10, :cond_2

    .line 669
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_2
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    if-eqz v10, :cond_3

    .line 674
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_3
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    if-eqz v10, :cond_4

    .line 679
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_4
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    if-eqz v10, :cond_5

    .line 684
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_5
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E:Leqz$a;

    if-eqz v10, :cond_6

    .line 689
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E:Leqz$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_6
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    if-eqz v10, :cond_7

    .line 694
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_7
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    if-eqz v10, :cond_8

    .line 699
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_8
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    if-eqz v10, :cond_9

    .line 704
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_9
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    if-eqz v10, :cond_a

    .line 709
    new-instance v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    invoke-direct {v10, p0, v11, v12}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_a
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v10

    const-string/jumbo v11, "f_search_results_new_render"

    invoke-virtual {v10, v11}, Lchx;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 714
    move-object v3, v7

    .line 716
    .local v3, "initRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    if-eqz v1, :cond_b

    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    invoke-interface {v10}, Leqr$a;->A_()Z

    move-result v10

    if-nez v10, :cond_b

    .line 717
    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 718
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "initRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    check-cast v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 721
    .restart local v3    # "initRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_b
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 722
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v10}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v10

    sget-object v11, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v10, v11, :cond_e

    .line 723
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "pref_key_search_search_render_delay_time"

    const/16 v12, 0x3e8

    .line 724
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 723
    invoke-static {v10, v11, v12}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v10

    iput v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ah:I

    .line 729
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_11

    .line 730
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 731
    .local v8, "render":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->af:Ljava/util/Map;

    .line 8483
    iget-object v11, v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 731
    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    add-int/lit8 v10, v2, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_f

    .line 9483
    iput-object v14, v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 10502
    :goto_2
    iget-object v10, v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->d:Leqp$a;

    .line 739
    if-eqz v10, :cond_d

    .line 11502
    iget-object v5, v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->d:Leqp$a;

    .line 741
    .local v5, "presenter":Leqp$a;
    instance-of v10, v5, Lerk$a;

    if-eqz v10, :cond_c

    move-object v4, v5

    .line 742
    check-cast v4, Lerk$a;

    .line 743
    .local v4, "msgPresenter":Lerk$a;
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    if-eqz v10, :cond_10

    .line 744
    iget-object v10, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v10}, Lcom/alibaba/android/search/SearchGroupType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lerk$a;->c(Ljava/lang/String;)V

    .line 12502
    .end local v4    # "msgPresenter":Lerk$a;
    :cond_c
    :goto_3
    iget-object v10, v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->d:Leqp$a;

    .line 749
    iget-object v11, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-interface {v10, v11, v13}, Leqp$a;->a(Ljava/lang/String;Z)V

    .line 729
    .end local v5    # "presenter":Leqp$a;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 726
    .end local v2    # "i":I
    .end local v8    # "render":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_e
    iput v13, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ah:I

    goto :goto_0

    .line 736
    .restart local v2    # "i":I
    .restart local v8    # "render":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_f
    add-int/lit8 v10, v2, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 10483
    iput-object v10, v8, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    goto :goto_2

    .line 746
    .restart local v4    # "msgPresenter":Lerk$a;
    .restart local v5    # "presenter":Leqp$a;
    :cond_10
    invoke-interface {v4, v14}, Lerk$a;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 753
    .end local v4    # "msgPresenter":Lerk$a;
    .end local v5    # "presenter":Leqp$a;
    .end local v8    # "render":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_11
    invoke-virtual {v3, v13}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(I)V

    .line 763
    .end local v2    # "i":I
    .end local v3    # "initRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_12
    return-void

    .line 758
    :cond_13
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_14
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 759
    .local v6, "r":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    if-eqz v6, :cond_14

    .line 13502
    iget-object v11, v6, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->d:Leqp$a;

    .line 759
    if-eqz v11, :cond_14

    .line 14502
    iget-object v11, v6, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->d:Leqp$a;

    .line 760
    iget-object v12, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method static synthetic l(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->Y:Z

    return p1
.end method

.method static synthetic m(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    const/high16 v8, 0x428c0000    # 70.0f

    const/high16 v7, 0x42340000    # 45.0f

    const/high16 v6, 0x41d80000    # 27.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 129
    .line 17360
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_commit_negative_samples_log"

    .line 18083
    invoke-virtual {v0, v1, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 17360
    if-eqz v0, :cond_0

    .line 17364
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 18084
    iget-object v0, v0, Leoe;->a:Ljava/lang/String;

    .line 17364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17382
    :cond_0
    :goto_0
    return-void

    .line 17368
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_search_negative_sample_rate"

    .line 17369
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 17368
    invoke-static {v0, v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 17370
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 19084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 17370
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 17374
    const/4 v0, 0x0

    .line 17375
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    instance-of v1, v1, Lcom/alibaba/android/search/fragment/AllSearchFragment;

    if-eqz v1, :cond_7

    .line 17376
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    check-cast v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 19535
    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Z)Ljava/util/List;

    move-result-object v1

    .line 19536
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v1

    :goto_1
    move-object v3, v0

    .line 17381
    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17385
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 17386
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 17387
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 17388
    if-eqz v0, :cond_2

    .line 17391
    new-instance v2, Leod;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 20084
    iget-object v6, v6, Leoe;->a:Ljava/lang/String;

    .line 17391
    iget-object v7, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 20160
    iget v7, v7, Leoe;->h:I

    .line 17391
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v5, v0, v6, v7}, Leod;-><init>(Landroid/app/Activity;Lcom/alibaba/android/search/model/BaseModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17386
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 19539
    :cond_3
    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Z)Ljava/util/List;

    move-result-object v1

    .line 19540
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 19544
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 19545
    iget-object v4, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 19547
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lemt$c;->global_search_tab_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 19550
    iget-object v4, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->u:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    const/16 v5, 0x9b

    if-lt v4, v5, :cond_5

    .line 19551
    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 19552
    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    div-int v0, v3, v0

    .line 19558
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 19559
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 19562
    :cond_4
    if-ltz v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 19563
    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 19554
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 19555
    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    div-int v0, v3, v0

    goto :goto_4

    .line 19565
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 17377
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    instance-of v1, v1, Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    if-eqz v1, :cond_9

    .line 17378
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    check-cast v0, Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->k()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2

    .line 17394
    :cond_8
    invoke-static {v4}, Letb;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    move-object v3, v0

    goto/16 :goto_2
.end method

.method private m()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2269
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v0, v1

    .line 2275
    :cond_1
    :goto_0
    return v0

    .line 2274
    :cond_2
    sget v2, Lemt$g;->dt_search_no_network_hint:I

    .line 15280
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15281
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15282
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 15286
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ab:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 15287
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqr$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerl$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqz$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E:Leqz$a;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerc$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqt$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    .line 21340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21341
    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21342
    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    invoke-direct {p0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 21343
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    if-nez v1, :cond_0

    .line 21344
    new-instance v1, Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-direct {v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 21345
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Ljava/lang/String;)V

    .line 21346
    const-string/jumbo v1, "choose_mode"

    iget v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21347
    const-string/jumbo v1, "intent_key_show_activity_banner"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21348
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 21349
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    .line 22282
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->c:Lerw$a;

    .line 21350
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D:Leqn$a;

    .line 22286
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->d:Leqn$a;

    .line 21351
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z:Leqr$a;

    .line 22290
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->e:Leqr$a;

    .line 21352
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A:Lerl$a;

    .line 22294
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->f:Leqp$a;

    .line 21353
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    .line 22298
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->g:Lerk$a;

    .line 21354
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    const/4 v1, 0x0

    .line 22330
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->n:Leqp$a;

    .line 21355
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C:Lerc$a;

    .line 23302
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h:Leqp$a;

    .line 21356
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F:Leqt$a;

    .line 23306
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->p:Leqp$a;

    .line 21357
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O:Leqp$a;

    .line 23310
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->i:Leqp$a;

    .line 21358
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->N:Leqp$a;

    .line 23322
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->l:Leqp$a;

    .line 21359
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M:Leqp$a;

    .line 23326
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->m:Leqp$a;

    .line 21360
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E:Leqz$a;

    .line 24314
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->j:Leqp$a;

    .line 21361
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->P:Leqp$a;

    .line 24338
    iput-object v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->q:Leqp$a;

    .line 21362
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 21363
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 21364
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "intent_key_search_show_more"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 24527
    iput-boolean v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->s:Z

    .line 21365
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "intent_key_search_show_feedback"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 24531
    iput-boolean v1, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->t:Z

    .line 21366
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 25523
    iput-object p0, v0, Lcom/alibaba/android/search/fragment/AllSearchFragment;->v:Lcom/alibaba/android/search/fragment/AllSearchFragment$a;

    .line 21368
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21381
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 129
    return-void

    .line 21369
    :catch_0
    move-exception v0

    .line 21370
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "switchToAllSearchFragment error: "

    aput-object v2, v1, v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 26050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 21373
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->b(Ljava/lang/String;)V

    .line 21375
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 21376
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p:Lcom/alibaba/android/search/fragment/AllSearchFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 21377
    :catch_1
    move-exception v0

    .line 21378
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "switchToAllSearchFragment error: "

    aput-object v2, v1, v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m:Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j:Z

    return v0
.end method

.method static synthetic z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o:Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/search/SearchGroupType;)I
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2470
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->af:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .line 2471
    .local v0, "render":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    if-eqz v0, :cond_0

    .line 16483
    iget v1, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    .line 2474
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V
    .locals 3
    .param p1, "narrowModel"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 354
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v0, p1}, Lerk$a;->a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aj:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lerk$a;->c(Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lerk$a;->a(Ljava/lang/String;Z)V

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v0}, Lerw$a;->b()V

    .line 364
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2344
    invoke-static {p0}, Lcms;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Ljava/lang/String;)V

    .line 2347
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 775
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i:Z

    .line 780
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 781
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 782
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lemt$g;->search_debug_input_tip_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lemt$g;->search_debug_input_finish:I

    new-instance v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$19;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$19;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lemt$g;->search_debug_input_continue:I

    const/4 v3, 0x0

    .line 790
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lemt$g;->cancel:I

    new-instance v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$18;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$18;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Ljava/lang/String;)V

    .line 791
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 807
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 809
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a()V

    goto :goto_0

    .line 800
    :cond_2
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    .line 801
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    if-eqz v1, :cond_3

    .line 802
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x:Lerw$a;

    invoke-interface {v1, p1}, Lerw$a;->a(Ljava/lang/String;)V

    .line 804
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j()V

    goto :goto_1

    .line 811
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->b()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 2351
    iget-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 2465
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j()V

    .line 2466
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2334
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 2335
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    if-eqz v1, :cond_0

    .line 2336
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ad:Leoe;

    .line 16084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 2336
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 2338
    :cond_0
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_RETURN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 2339
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 2340
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 3444
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 3445
    new-instance v1, Lerd;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->am:Lere$b;

    invoke-direct {v1, v0, v2}, Lerd;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lere$b;)V

    .line 3448
    :cond_0
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3449
    new-instance v1, Leqs;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->an:Leqr$b;

    iget-boolean v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->k:Z

    invoke-direct {v1, v0, v2, v3}, Leqs;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqr$b;Z)V

    .line 3451
    :cond_1
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3452
    new-instance v1, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ao:Lerl$b;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/search/presenter/MyGroupSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerl$b;)V

    .line 3454
    :cond_2
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3455
    new-instance v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ap:Lerk$b;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V

    .line 3457
    :cond_3
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3458
    new-instance v1, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->au:Lerc$b;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/android/search/presenter/FunctionSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerc$b;)V

    .line 3460
    :cond_4
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 3461
    new-instance v1, Lequ;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->av:Leqt$b;

    invoke-direct {v1, v0, v2}, Lequ;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqt$b;)V

    .line 3463
    :cond_5
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 3464
    new-instance v1, Lera;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ax:Leqz$b;

    invoke-direct {v1, v0, v2}, Lera;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqz$b;)V

    .line 3467
    :cond_6
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3468
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 3469
    new-instance v1, Leqw;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aq:Leqv$b;

    invoke-direct {v1, v0, v2}, Leqw;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqv$b;)V

    .line 3471
    :cond_7
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 3472
    new-instance v1, Lert;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->as:Lers$b;

    invoke-direct {v1, v0, v2}, Lert;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lers$b;)V

    .line 3474
    :cond_8
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    .line 3475
    new-instance v1, Lerj;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ar:Leri$b;

    invoke-direct {v1, v0, v2}, Lerj;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leri$b;)V

    .line 3479
    :cond_9
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3480
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    .line 3481
    new-instance v1, Leru;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->at:Lerv$b;

    invoke-direct {v1, v0, v2}, Leru;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerv$b;)V

    .line 3486
    :cond_a
    new-instance v1, Lerx;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->al:Lerw$b;

    iget v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    invoke-direct {v1, v0, v2, v3}, Lerx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerw$b;I)V

    .line 3487
    new-instance v1, Leqo;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aw:Leqn$b;

    invoke-direct {v1, v0, v2}, Leqo;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Leqn$b;)V

    .line 331
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0, p0}, Lenb;->a(Lenb$a;)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 334
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j()V

    .line 336
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 293
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "choose_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->l:J

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f:I

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_tab_show_flag"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_debug_receiver_uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_show_global_homepage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j:Z

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_search_demission_colleague"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->k:Z

    .line 301
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lerx;->d()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g:I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_search_entry"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ae:I

    .line 306
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ae:I

    if-ne v0, v4, :cond_1

    .line 307
    const-class v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid entry code for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 311
    :cond_1
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ae:I

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-nez v0, :cond_2

    .line 313
    const-class v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected entry code 101 for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 317
    :cond_2
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    sput-object v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e:Lcom/alibaba/android/search/SearchGroupType;

    .line 318
    return-void
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
    .line 322
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2504
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 2505
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->b(Landroid/content/Context;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    .line 2507
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    sget v2, Lemt$e;->ll_search_filter:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2508
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2509
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 2510
    check-cast v0, Landroid/view/ViewGroup;

    .line 2511
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2512
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2513
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setVisibility(I)V

    .line 2515
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    new-instance v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$12;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setOnMenuChangedListener(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$b;)V

    .line 2529
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    new-instance v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$15;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->setCallback(Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;)V

    .line 2596
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->network_error_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    .line 2597
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    sget v1, Lemt$e;->tv_network_error_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ab:Landroid/widget/TextView;

    .line 2598
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->aa:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$16;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2608
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->msg_guide_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 2609
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ac:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$17;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    return-object v0

    .line 2526
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    sget v2, Lemt$e;->ll_search_filter:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d:Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2323
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0, v1}, Lenb;->a(Lenb$a;)V

    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B:Lerk$a;

    invoke-interface {v0}, Lerk$a;->i()V

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ak:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2328
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2329
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onDestroy()V

    .line 2330
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 2318
    sget v0, Lemt$f;->activity_global_search:I

    return v0
.end method
