.class public Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfty$a;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;
    }
.end annotation


# static fields
.field private static final aw:I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Lcom/alibaba/android/user/namecard/widget/WaveView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Lftz;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:F

.field private Y:F

.field private Z:Landroid/view/View$OnTouchListener;

.field a:Ljava/lang/String;

.field private final aa:I

.field private final ab:I

.field private ac:Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;

.field private ad:Landroid/widget/RelativeLayout;

.field private ae:Landroid/view/View;

.field private af:Landroid/widget/FrameLayout;

.field private ag:Landroid/view/View;

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftw;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftv;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftv;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

.field private aq:Lfui$a;

.field private ar:I

.field private as:I

.field private at:I

.field private au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

.field private av:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Landroid/view/animation/TranslateAnimation;

.field private ay:Landroid/view/MenuItem;

.field private az:Landroid/view/MenuItem;

.field b:Ljava/lang/String;

.field c:Z

.field d:F

.field e:I

.field f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;",
            ">;"
        }
    .end annotation
.end field

.field h:Lciq;

.field i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lftx;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ProgressBar;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1367
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aw:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 132
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    .line 171
    const/high16 v0, 0x43480000    # 200.0f

    sget v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aw:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->W:F

    .line 172
    const/high16 v0, 0x41400000    # 12.0f

    sget v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aw:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->X:F

    .line 173
    const v0, 0x3ecccccd    # 0.4f

    sget v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aw:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Y:F

    .line 179
    new-instance v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$1;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Z:Landroid/view/View$OnTouchListener;

    .line 350
    iput v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aa:I

    .line 351
    iput v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ab:I

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ah:Ljava/util/List;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    .line 362
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ak:I

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    .line 364
    iput v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->e:I

    .line 365
    iput v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->al:I

    .line 371
    new-instance v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$9;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aq:Lfui$a;

    .line 692
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f:Ljava/util/LinkedList;

    .line 694
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g:Ljava/util/LinkedList;

    .line 696
    iput v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ar:I

    .line 697
    iput v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->as:I

    .line 1057
    new-instance v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$3;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h:Lciq;

    .line 1093
    iput-boolean v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    .line 1110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    .line 1112
    iput v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->at:I

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->av:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->T:F

    return p1
.end method

.method private a(Landroid/graphics/Point;)I
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 806
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    if-nez v4, :cond_1

    move v2, v3

    .line 818
    :cond_0
    :goto_0
    return v2

    .line 809
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 810
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lftv;

    .line 811
    .local v1, "cardCell":Lftv;
    if-eqz v1, :cond_2

    .line 813
    iget-object v0, v1, Lftv;->a:Landroid/graphics/Point;

    .line 814
    .local v0, "apoint":Landroid/graphics/Point;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    if-ne v4, v5, :cond_2

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_0

    .line 809
    .end local v0    # "apoint":Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "cardCell":Lftv;
    :cond_3
    move v2, v3

    .line 818
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    return-object v0
.end method

.method private a(II)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 701
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 703
    .local v2, "shouldShowList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;>;"
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;

    .line 704
    .local v1, "nameCardAvatarViewInfo":Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;
    if-eqz v1, :cond_0

    .line 708
    iget v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->a:I

    int-to-float v4, v4

    int-to-float v5, p1

    iget v6, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    iget v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->a:I

    if-gt v4, p2, :cond_1

    .line 710
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    if-nez v4, :cond_0

    .line 712
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_1
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    if-eqz v4, :cond_0

    .line 718
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    invoke-static {v4}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/view/View;)V

    .line 719
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setVisibility(I)V

    .line 720
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g:Ljava/util/LinkedList;

    iget-object v5, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 721
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    goto :goto_0

    .line 725
    .end local v1    # "nameCardAvatarViewInfo":Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;

    .line 726
    .restart local v1    # "nameCardAvatarViewInfo":Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;
    if-eqz v1, :cond_3

    .line 730
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i()Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    move-result-object v0

    .line 732
    .local v0, "cardView":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    iget-object v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 733
    iget v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->a:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setTranslationX(F)V

    .line 734
    iget v4, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->b:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setTranslationY(F)V

    .line 735
    iput-object v0, v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    goto :goto_1

    .line 737
    .end local v0    # "cardView":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    .end local v1    # "nameCardAvatarViewInfo":Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;
    :cond_4
    iput p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ar:I

    .line 738
    iput p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->as:I

    .line 739
    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 553
    if-nez p0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 558
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 559
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 560
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 909
    :goto_0
    return-void

    .line 903
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    sget v0, Lezg$g;->name_card_pwd_f2f_code_hint_gray:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/amap/api/location/AMapLocation;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 94
    .line 18079
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    if-nez v0, :cond_0

    .line 18082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    .line 18083
    if-eqz p1, :cond_0

    .line 18084
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18085
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    .line 19053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19054
    new-instance v3, Lftz$1;

    invoke-direct {v3, v0}, Lftz$1;-><init>(Lftz;)V

    .line 19073
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19074
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lfug;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 18085
    :cond_0
    :goto_0
    return-void

    .line 18087
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    .line 19080
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19081
    new-instance v3, Lftz$2;

    invoke-direct {v3, v0}, Lftz$2;-><init>(Lftz;)V

    .line 19100
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19101
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lfug;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0, v0, p3, p4}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->T:F

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->U:F

    return p1
.end method

.method public static b(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 1372
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1373
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1374
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1376
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1377
    .local v1, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1378
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1384
    return-object v0

    .line 1380
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->U:F

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
    .param p1, "x1"    # F

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->V:F

    return p1
.end method

.method private c(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 8
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1117
    iget-boolean v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    if-eqz v5, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1120
    :cond_0
    if-eqz p1, :cond_2

    .line 1121
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .line 1122
    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    .line 1123
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1124
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->passwd:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    .line 1126
    :cond_1
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->cardUserObjectList:Ljava/util/List;

    .line 1127
    .local v3, "userModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;>;"
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1128
    iget-object v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 1129
    .local v1, "lastIndex":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1130
    move v0, v1

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1132
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 1133
    .local v2, "userModel":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    new-instance v4, Lftx;

    invoke-direct {v4}, Lftx;-><init>()V

    .line 9020
    .local v4, "visitable":Lftx;
    iput-object v2, v4, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 1135
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lftx;)V

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1141
    .end local v0    # "i":I
    .end local v1    # "lastIndex":I
    .end local v2    # "userModel":Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .end local v3    # "userModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;>;"
    .end local v4    # "visitable":Lftx;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->W:F

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->X:F

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Y:F

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aw:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/user/namecard/widget/WaveView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->G:Lcom/alibaba/android/user/namecard/widget/WaveView;

    return-object v0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->H:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Q:Landroid/view/View;

    return-object v0
.end method

.method private i()Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 742
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    .line 744
    .local v1, "v":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    invoke-static {v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/view/View;)V

    .line 745
    invoke-virtual {v1, v8}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setVisibility(I)V

    .line 752
    .end local v1    # "v":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    :goto_0
    return-object v1

    .line 748
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;-><init>(Landroid/content/Context;)V

    .line 749
    .local v0, "cardView":Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    float-to-int v3, v3

    iget v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    invoke-virtual {v0, v8}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setVisibility(I)V

    .line 751
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->af:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v1, v0

    .line 752
    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->V:F

    return v0
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    .line 1055
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1344
    const-string/jumbo v0, "pref_exchange_share_guide"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1345
    return-void
.end method

.method private l()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->ui_common_level8_base_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lftz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 94
    .line 17831
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->e:I

    .line 17832
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->getHeight()I

    move-result v0

    .line 17834
    if-eqz v0, :cond_3

    .line 17837
    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    .line 17838
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    float-to-int v4, v0

    .line 17843
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17844
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->al:I

    .line 17846
    int-to-float v0, v4

    div-float v1, v0, v5

    .line 17850
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->al:I

    rem-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 17852
    iget v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->al:I

    div-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    .line 17854
    add-float/2addr v0, v1

    move v3, v0

    .line 17857
    :goto_0
    sub-float v0, v3, v1

    .line 17859
    div-float/2addr v1, v5

    neg-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 17860
    int-to-float v1, v4

    add-float/2addr v0, v1

    :cond_0
    move v1, v2

    .line 17863
    :goto_1
    const/4 v5, 0x3

    if-ge v1, v5, :cond_2

    .line 17864
    new-instance v5, Lftw;

    invoke-direct {v5}, Lftw;-><init>()V

    .line 17865
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_1

    .line 17866
    float-to-int v6, v0

    iget v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->am:I

    add-int/2addr v6, v7

    iput v6, v5, Lftw;->a:I

    .line 17870
    :goto_2
    iget v6, v5, Lftw;->a:I

    iput v6, v5, Lftw;->b:I

    .line 17872
    mul-int v6, v4, v1

    add-int/lit8 v6, v6, 0x0

    iput v6, v5, Lftw;->c:I

    .line 17873
    iget v6, v5, Lftw;->c:I

    add-int/2addr v6, v4

    iput v6, v5, Lftw;->d:I

    .line 17875
    iget-object v6, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ah:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17863
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17868
    :cond_1
    float-to-int v6, v3

    iget v7, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->am:I

    add-int/2addr v6, v7

    iput v6, v5, Lftw;->a:I

    goto :goto_2

    .line 17839
    :cond_2
    iget v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->e:I

    invoke-direct {p0, v2, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(II)V

    .line 94
    :cond_3
    return-void

    :cond_4
    move v3, v0

    goto :goto_0
.end method

.method static synthetic q(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    .line 20096
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    if-nez v0, :cond_0

    .line 20100
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$4;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k()V

    return-void
.end method

.method static synthetic w(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 94
    .line 20405
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20406
    const-string/jumbo v2, "member_cnt"

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20407
    const/4 v0, 0x0

    const-string/jumbo v2, "CardExUpSlide"

    const-string/jumbo v3, "a2o5v.12302431.1.CardExUpSlide"

    invoke-static {v0, v2, v1, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 20408
    const-wide/16 v0, 0x0

    .line 20410
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    if-eqz v2, :cond_0

    .line 20411
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->id:J

    .line 20414
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 21116
    new-instance v0, Lftz$4;

    invoke-direct {v0, v2}, Lftz$4;-><init>(Lftz;)V

    .line 21134
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 21135
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 22131
    new-instance v1, Lfug$10;

    invoke-direct {v1, v2, v0}, Lfug$10;-><init>(Lfug;Lcma;)V

    .line 22137
    iget-object v0, v2, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/user/namecard/service/CardIService;->exchangeCards(Ljava/lang/Long;Liyv;)V

    .line 94
    return-void

    .line 20406
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1024
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h:Lciq;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 1025
    return-void
.end method

.method a(I)V
    .locals 5
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 625
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v3, "[recoverCells]"

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "mAllCardCells: "

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | index: "

    .line 626
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 627
    .local v1, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "User"

    const-string/jumbo v3, "NameCardExchangeActivity"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftv;

    .line 631
    .local v0, "cardCell":Lftv;
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v0    # "cardCell":Lftv;
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 16618
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 16619
    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->af:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 16620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->af:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 16621
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v22

    .line 16630
    invoke-static/range {v22 .. v22}, Lcms;->a(Landroid/content/Context;)I

    move-result v24

    .line 16631
    invoke-static/range {v22 .. v22}, Lcms;->b(Landroid/content/Context;)I

    move-result v22

    .line 16632
    new-instance v25, Landroid/graphics/Rect;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16633
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 16634
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16635
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_3

    .line 16636
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 16621
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 16622
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16619
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 16639
    :cond_3
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    goto :goto_2

    .line 1502
    .local v20, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v10, "endPoints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    .line 1504
    .local v8, "count":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    .local v7, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v13, "parabolaViews":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/namecard/widget/ParabolaView;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v8, :cond_6

    .line 1507
    new-instance v12, Lcom/alibaba/android/user/namecard/widget/ParabolaView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;-><init>(Landroid/content/Context;)V

    .line 1508
    .local v12, "nxHooldeView":Lcom/alibaba/android/user/namecard/widget/ParabolaView;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa999999999999aL    # 0.05

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa999999999999aL    # 0.05

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->a(II)V

    .line 1511
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [I

    .line 1512
    .local v14, "position":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1513
    new-instance v17, Landroid/graphics/Point;

    const/16 v21, 0x0

    aget v21, v14, v21

    const/16 v22, 0x1

    aget v22, v14, v22

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1514
    .local v17, "startPoint":Landroid/graphics/Point;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setStartPosition(Landroid/graphics/Point;)V

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 1516
    .local v15, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1518
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1519
    .local v19, "targetView":Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1520
    check-cast v19, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    .end local v19    # "targetView":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->getAvatarImageView()Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v19

    .line 1522
    .restart local v19    # "targetView":Landroid/view/View;
    :cond_5
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1523
    .local v18, "targetPosition":[I
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1525
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget v22, v18, v22

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getViewWidth()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    aput v22, v18, v21

    .line 1526
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget v22, v18, v22

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v23

    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getViewHeight()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    aput v22, v18, v21

    .line 1529
    new-instance v9, Landroid/graphics/Point;

    const/16 v21, 0x0

    aget v21, v18, v21

    const/16 v22, 0x1

    aget v22, v18, v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 1530
    .local v9, "endPoint":Landroid/graphics/Point;
    invoke-virtual {v12, v9}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->setEndPosition(Landroid/graphics/Point;)V

    .line 1531
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    invoke-virtual {v12}, Lcom/alibaba/android/user/namecard/widget/ParabolaView;->getBeizerAnimation$5ce750a4()Landroid/animation/Animator;

    move-result-object v6

    .line 1533
    .local v6, "animator":Landroid/animation/Animator;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1537
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v9    # "endPoint":Landroid/graphics/Point;
    .end local v12    # "nxHooldeView":Lcom/alibaba/android/user/namecard/widget/ParabolaView;
    .end local v14    # "position":[I
    .end local v15    # "rootView":Landroid/view/ViewGroup;
    .end local v17    # "startPoint":Landroid/graphics/Point;
    .end local v18    # "targetPosition":[I
    .end local v19    # "targetView":Landroid/view/View;
    :cond_6
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1538
    .local v16, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1539
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    .line 1540
    new-instance v21, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$8;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 8
    .param p1, "roomModel"    # Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1239
    :cond_0
    const-string/jumbo v0, "InputPWDSucc"

    const-string/jumbo v1, "a2o5v.12302431.1.InputPWDSucc"

    invoke-static {v2, v0, v2, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1240
    iput-boolean v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    .line 1241
    invoke-virtual {p0, v4, v5, v2, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 10648
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 10671
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 10672
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 10648
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10650
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 10652
    sget v0, Lezg$h;->ll_main_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10653
    if-eqz v0, :cond_1

    .line 10654
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10288
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ac:Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Z:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10289
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ad:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10290
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->az:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10291
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ay:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10293
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ae:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11348
    const-string/jumbo v0, "pref_exchange_share_guide"

    invoke-static {p0, v0, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 10295
    if-eqz v0, :cond_3

    .line 10296
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 10297
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$6;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11822
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$16;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->post(Ljava/lang/Runnable;)Z

    .line 10310
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ae:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10311
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10312
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10313
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10314
    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$7;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12391
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-direct {v0, v6, v6, v6, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    .line 12392
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 12393
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 12394
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 12395
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 12396
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 12397
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 12399
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Q:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 12400
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Q:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ax:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1243
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 10306
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_1

    .line 10310
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 2
    .param p1, "userObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->av:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->av:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setEditVisbility(Z)V

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->av:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->setData(Ljava/util/List;)V

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getCardAdapter()Lfum;

    move-result-object v0

    invoke-virtual {v0}, Lfum;->notifyDataSetChanged()V

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;->getCardPageIndicator()Lcom/alibaba/android/user/namecard/widget/CircleIndicator;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/CircleIndicator;->setVisibility(I)V

    .line 1365
    :cond_0
    return-void
.end method

.method a(Lftx;)V
    .locals 10
    .param p1, "visitable"    # Lftx;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9528
    if-eqz p1, :cond_4

    .line 9530
    iget-object v4, p1, Lftx;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 9531
    if-eqz v4, :cond_4

    .line 9533
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h()I

    move-result v0

    if-gtz v0, :cond_2

    .line 9637
    iget v5, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->al:I

    .line 9638
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    .line 9639
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 9640
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ah:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftw;

    .line 9642
    iget v3, v0, Lftw;->b:I

    .line 9643
    iget v6, v0, Lftw;->c:I

    .line 9645
    :goto_1
    int-to-float v7, v3

    iget v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->an:I

    sub-int v8, v5, v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 9646
    new-instance v7, Lftv;

    invoke-direct {v7}, Lftv;-><init>()V

    .line 9647
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v7, Lftv;->a:Landroid/graphics/Point;

    .line 9648
    iget-object v8, v7, Lftv;->a:Landroid/graphics/Point;

    iput v3, v8, Landroid/graphics/Point;->x:I

    .line 9649
    iget-object v8, v7, Lftv;->a:Landroid/graphics/Point;

    iput v6, v8, Landroid/graphics/Point;->y:I

    .line 9650
    int-to-float v3, v3

    iget v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 9652
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9653
    iget-object v8, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9655
    :cond_0
    iput v3, v0, Lftw;->b:I

    .line 9639
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 9657
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->al:I

    .line 9659
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "[drawCanvas]"

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mAllCardCells: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | mCardCells: "

    .line 9660
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 9661
    const-string/jumbo v1, "User"

    const-string/jumbo v3, "NameCardExchangeActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9537
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->h()I

    move-result v0

    .line 9538
    if-lez v0, :cond_4

    .line 9539
    new-instance v1, Ljava/util/Random;

    int-to-long v6, v0

    invoke-direct {v1, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 9540
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Random;->setSeed(J)V

    .line 9542
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 9673
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    if-eqz v1, :cond_5

    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 9674
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftv;

    .line 9675
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ai:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9676
    iget-object v0, v0, Lftv;->a:Landroid/graphics/Point;

    .line 9545
    :goto_2
    if-eqz v0, :cond_4

    .line 9546
    iput-object v0, p1, Lftx;->b:Landroid/graphics/Point;

    .line 9759
    if-eqz v0, :cond_4

    .line 9763
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/graphics/Point;)I

    move-result v1

    .line 9765
    new-instance v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;

    invoke-direct {v3, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;-><init>(B)V

    .line 9766
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->a:I

    .line 9767
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->b:I

    .line 9768
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    iput-wide v6, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->c:J

    .line 9769
    iput v1, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->d:I

    .line 9770
    iput-object v4, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 9771
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9775
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    add-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 9776
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9777
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9781
    :cond_3
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ar:I

    int-to-float v2, v2

    iget v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->d:F

    sub-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->as:I

    if-gt v0, v1, :cond_4

    .line 9782
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i()Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    move-result-object v0

    .line 9783
    iget-object v1, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->e:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 9784
    iget v1, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setTranslationX(F)V

    .line 9785
    iget v1, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setTranslationY(F)V

    .line 9786
    iput-object v0, v3, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$a;->f:Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;

    .line 9788
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 9789
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9790
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9791
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9792
    const-string/jumbo v3, "ScaleX"

    new-array v4, v9, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9793
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9794
    const-string/jumbo v3, "ScaleY"

    new-array v4, v9, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9795
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9796
    const-string/jumbo v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9797
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9798
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 9799
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 9801
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardAvatarView;->setTag(Ljava/lang/Object;)V

    .line 1196
    :cond_4
    return-void

    .line 9679
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 9792
    .line 9794
    .line 9796
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const/4 v1, 0x0

    const-string/jumbo v2, "InputPWDFail"

    const-string/jumbo v3, "a2o5v.12302431.1.InputPWDFail"

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1259
    iput-boolean v4, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    .line 1260
    invoke-virtual {p0, v4, v4, p1, p2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j()V

    .line 1262
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "cardRoomModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;>;"
    const/4 v4, 0x4

    const/4 v7, 0x0

    .line 882
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->J:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 896
    :goto_0
    return-void

    .line 885
    :cond_1
    const/4 v1, 0x0

    .line 886
    .local v1, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .line 887
    .local v0, "cardRoomModel":Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->freshCount:I

    add-int/2addr v1, v3

    .line 888
    goto :goto_1

    .line 889
    .end local v0    # "cardRoomModel":Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;
    :cond_2
    if-lez v1, :cond_3

    .line 890
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->J:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->dt_bizcard_new_received_cards:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 893
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->J:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "loading"    # Z
    .param p2, "success"    # Z
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 995
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->K:Z

    .line 996
    if-eqz p1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 998
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 999
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1020
    :goto_0
    return-void

    .line 1001
    :cond_0
    if-eqz p2, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1004
    :cond_1
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v2, "[switchLoading]fail: "

    invoke-direct {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "errorCode: "

    .line 1005
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | errorMsg: "

    .line 1006
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1007
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "User"

    const-string/jumbo v2, "NameCardExchangeActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1010
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1011
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j()V

    goto :goto_0

    .line 1015
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_bizcard_service_exception:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 3
    .annotation build Lcom/alibaba/android/dingtalk/permission/annotation/OnPermissionDenied;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1032
    const-string/jumbo v0, "100"

    sget v1, Lezg$l;->dt_bizcard_location_exception:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 1
    .param p1, "statusModel"    # Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .prologue
    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    .line 1267
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    if-nez v0, :cond_0

    .line 1268
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    .line 1270
    :cond_0
    return-void
.end method

.method c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1207
    sget v11, Lezg$l;->dt_bizcard_exchange_room_password:I

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    if-nez v10, :cond_0

    const-string/jumbo v10, ""

    :goto_0
    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "code":Ljava/lang/String;
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    if-nez v10, :cond_1

    const/4 v4, 0x1

    .line 1209
    .local v4, "size":I
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1210
    .local v5, "sizestr":Ljava/lang/String;
    sget v10, Lezg$l;->dt_bizcard_exchange_room_count:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "count":Ljava/lang/String;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1213
    .local v8, "stringBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    if-nez v10, :cond_2

    const/4 v6, 0x0

    .line 1214
    .local v6, "startIndex":I
    :goto_2
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    if-nez v10, :cond_3

    const/4 v10, 0x0

    :goto_3
    add-int v2, v6, v10

    .line 1215
    .local v2, "endIndex":I
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "#3296FA"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v11, 0x11

    invoke-virtual {v8, v10, v6, v2, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1217
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1218
    .local v9, "stringBuilder1":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1219
    .local v7, "startIndex1":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int v3, v7, v10

    .line 1220
    .local v3, "endIndex1":I
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v11, "#3296FA"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v11, 0x11

    invoke-virtual {v9, v10, v7, v3, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1222
    const-string/jumbo v10, "  "

    invoke-virtual {v8, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1223
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->N:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    const/4 v10, 0x1

    if-le v4, v10, :cond_4

    .line 1227
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->O:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lfxp;->a(Landroid/view/View;I)V

    .line 1231
    :goto_4
    return-void

    .line 1207
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "count":Ljava/lang/String;
    .end local v2    # "endIndex":I
    .end local v3    # "endIndex1":I
    .end local v4    # "size":I
    .end local v5    # "sizestr":Ljava/lang/String;
    .end local v6    # "startIndex":I
    .end local v7    # "startIndex1":I
    .end local v8    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v9    # "stringBuilder1":Landroid/text/SpannableStringBuilder;
    :cond_0
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    goto :goto_0

    .line 1208
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->j:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    goto :goto_1

    .line 1213
    .restart local v1    # "count":Ljava/lang/String;
    .restart local v4    # "size":I
    .restart local v5    # "sizestr":Ljava/lang/String;
    .restart local v8    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_2
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 1214
    .restart local v6    # "startIndex":I
    :cond_3
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_3

    .line 1229
    .restart local v2    # "endIndex":I
    .restart local v3    # "endIndex1":I
    .restart local v7    # "startIndex1":I
    .restart local v9    # "stringBuilder1":Landroid/text/SpannableStringBuilder;
    :cond_4
    iget-object v10, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->O:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_4
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->c:Z

    .line 1283
    return-void
.end method

.method public final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    .line 13154
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 13155
    const-string/jumbo v1, "from=room&categoryValue=%s&f2f=true"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13156
    const-string/jumbo v1, "pages/cardlist/cardlist"

    const-string/jumbo v2, "2018111662233068"

    invoke-static {p0, v0, v1, v2}, Lflz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->finish()V

    .line 1494
    return-void
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1424
    const-string/jumbo v0, "Mai_CardEx"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    const-string/jumbo v0, "a2o5v.12302431"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 1488
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    .line 15163
    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    .line 15164
    new-instance v2, Lftz$6;

    invoke-direct {v2, v0}, Lftz$6;-><init>(Lftz;)V

    .line 15181
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 15182
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v2

    .line 16109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 16155
    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 16156
    if-eqz v0, :cond_0

    .line 16157
    const-string/jumbo v1, "404"

    const-string/jumbo v2, "param is invalid"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 15183
    :cond_0
    :goto_0
    return-void

    .line 16161
    :cond_1
    new-instance v1, Lfug$12;

    invoke-direct {v1, v2, v0}, Lfug$12;-><init>(Lfug;Lcma;)V

    .line 16167
    iget-object v0, v2, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/user/namecard/service/CardIService;->leftRoom(Ljava/lang/Long;Liyv;)V

    goto :goto_0

    .line 15184
    :cond_2
    iget-object v0, v0, Lftz;->a:Lfty$a;

    invoke-interface {v0}, Lfty$a;->f()V

    .line 15185
    const-string/jumbo v0, "roomId null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_0:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_1:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_2:I

    if-eq v1, v2, :cond_0

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_3:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_4:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_5:I

    if-eq v1, v2, :cond_0

    .line 949
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_6:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_7:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_8:I

    if-eq v1, v2, :cond_0

    .line 950
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_tv_code_num_9:I

    if-ne v1, v2, :cond_7

    .line 951
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->K:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 992
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, p1

    .line 954
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    .line 956
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 957
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 970
    :cond_3
    :goto_1
    const-string/jumbo v1, "InputPWD"

    const-string/jumbo v2, "a2o5v.12302431.1.InputPWD"

    invoke-static {p1, v1, v3, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 959
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 960
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 962
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 963
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 965
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 966
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0, v4, v6, v3, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-static {p0}, Lftu;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    goto :goto_1

    .line 972
    .end local v0    # "code":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->name_card_pwd_rl_code_clear:I

    if-ne v1, v2, :cond_1

    .line 973
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->K:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 977
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 988
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 979
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 980
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 982
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 983
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 985
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 986
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 385
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 386
    sget v0, Lezg$j;->activity_name_card_exchange_password:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->setContentView(I)V

    .line 2411
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2412
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "roomId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    .line 2413
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "roomToken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->L:Ljava/lang/String;

    .line 2418
    :cond_0
    sget v0, Lezg$h;->exchange_qrcode_guide_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 2419
    sget v0, Lezg$h;->name_card_pwd_img_code_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k:Landroid/widget/ImageView;

    .line 2420
    sget v0, Lezg$h;->name_card_pwd_tv_code_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l:Landroid/widget/TextView;

    .line 2421
    sget v0, Lezg$h;->name_card_pwd_img_code_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    .line 2422
    sget v0, Lezg$h;->name_card_pwd_tv_code_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    .line 2423
    sget v0, Lezg$h;->name_card_pwd_img_code_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    .line 2424
    sget v0, Lezg$h;->name_card_pwd_tv_code_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    .line 2425
    sget v0, Lezg$h;->name_card_pwd_img_code_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    .line 2426
    sget v0, Lezg$h;->name_card_pwd_tv_code_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    .line 2427
    sget v0, Lezg$h;->name_card_pwd_tv_code_error:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->s:Landroid/widget/TextView;

    .line 2428
    sget v0, Lezg$h;->name_card_pwd_pb_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->t:Landroid/widget/ProgressBar;

    .line 2429
    sget v0, Lezg$h;->name_card_pwd_rl_code_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->u:Landroid/widget/RelativeLayout;

    .line 2430
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->v:Landroid/widget/TextView;

    .line 2431
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->w:Landroid/widget/TextView;

    .line 2432
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->x:Landroid/widget/TextView;

    .line 2433
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->y:Landroid/widget/TextView;

    .line 2434
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->z:Landroid/widget/TextView;

    .line 2435
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->A:Landroid/widget/TextView;

    .line 2436
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->B:Landroid/widget/TextView;

    .line 2437
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_8:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->C:Landroid/widget/TextView;

    .line 2438
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_9:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->D:Landroid/widget/TextView;

    .line 2439
    sget v0, Lezg$h;->name_card_pwd_tv_code_num_0:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->E:Landroid/widget/TextView;

    .line 2440
    sget v0, Lezg$h;->name_card_pwd_rl_code_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->F:Landroid/widget/RelativeLayout;

    .line 2442
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2443
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->m:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->o:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->q:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 2447
    sget v0, Lezg$h;->name_card_pwd_tv_room_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->N:Landroid/widget/TextView;

    .line 2448
    sget v0, Lezg$h;->tv_no_body_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->O:Landroid/widget/TextView;

    .line 2450
    sget v0, Lezg$h;->name_card_exchange_slider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->P:Lcom/alibaba/android/user/namecard/widget/NameCardsSlider;

    .line 2451
    sget v0, Lezg$h;->name_card_exchange_tv_exchange:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Q:Landroid/view/View;

    .line 2452
    sget v0, Lezg$h;->wave:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/WaveView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->G:Lcom/alibaba/android/user/namecard/widget/WaveView;

    .line 2453
    sget v0, Lezg$h;->wave_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->H:Landroid/view/View;

    .line 2454
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->G:Lcom/alibaba/android/user/namecard/widget/WaveView;

    if-eqz v0, :cond_1

    .line 2455
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->G:Lcom/alibaba/android/user/namecard/widget/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->am:I

    .line 2456
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->G:Lcom/alibaba/android/user/namecard/widget/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->an:I

    .line 2457
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->G:Lcom/alibaba/android/user/namecard/widget/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/WaveView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ao:I

    .line 2460
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->Q:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$10;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2468
    sget v0, Lezg$h;->name_card_exchange_shadow_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ac:Lcom/alibaba/android/user/namecard/widget/MyRelativeLayout;

    .line 2469
    sget v0, Lezg$h;->layout_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ad:Landroid/widget/RelativeLayout;

    .line 2470
    sget v0, Lezg$h;->layout_exchange:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ae:Landroid/view/View;

    .line 2472
    sget v0, Lezg$h;->name_card_pwd_ll_new_msg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->J:Landroid/view/View;

    .line 2473
    sget v0, Lezg$h;->name_card_pwd_tv_new_msg:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->I:Landroid/widget/TextView;

    .line 2474
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->I:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$11;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2484
    sget v0, Lezg$h;->name_card_ll_my_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->R:Landroid/view/View;

    .line 2485
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->R:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$12;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2498
    sget v0, Lezg$h;->cell_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->af:Landroid/widget/FrameLayout;

    .line 2499
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    .line 2500
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2501
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2502
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->af:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2503
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2504
    sget v0, Lezg$h;->my_scrollview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    .line 2506
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$13;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->setOnMyScrollListener(Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView$a;)V

    .line 2514
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ap:Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$14;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/widget/ScrollChangeListenerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2912
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2913
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2914
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2915
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2916
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2917
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2918
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2919
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2920
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2921
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2922
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2925
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$2;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_user_exchange_card:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v0, Lftz;

    invoke-direct {v0, p0}, Lftz;-><init>(Lfty$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->L:Ljava/lang/String;

    .line 3237
    new-instance v3, Lftz$8;

    invoke-direct {v3, v0}, Lftz$8;-><init>(Lftz;)V

    const-class v0, Lcma;

    invoke-static {v3, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3253
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v3

    .line 4109
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4120
    new-instance v1, Lfug$9;

    invoke-direct {v1, v3, v0}, Lfug$9;-><init>(Lfug;Lcma;)V

    .line 4126
    iget-object v0, v3, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v2, v1}, Lcom/alibaba/android/user/namecard/service/CardIService;->findRoomById(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    .line 6047
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 5106
    const/4 v2, 0x1

    new-instance v3, Lftz$3;

    invoke-direct {v3, v0}, Lftz$3;-><init>(Lftz;)V

    invoke-virtual {v1, v2, v3}, Lfuj;->a(ZLfuj$a;)V

    .line 397
    invoke-static {}, Lfui;->a()Lfui;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aq:Lfui$a;

    .line 7039
    if-eqz v1, :cond_3

    .line 7042
    iget-object v2, v0, Lfui;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7043
    iget-object v0, v0, Lfui;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1437
    .line 13450
    const/4 v1, 0x0

    .line 13451
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v6, [I

    sget v4, Lezg$d;->ui_common_base_ui_attr_toolbarForegroundColor:I

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 13452
    if-eqz v2, :cond_0

    .line 13453
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 13454
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13457
    :cond_0
    new-instance v0, Lecw;

    sget v2, Lezg$l;->icon_QRcode:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 13458
    sget v1, Lezg$f;->dp24:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 14070
    iput v1, v0, Lecw;->a:I

    .line 13459
    sget v1, Lezg$f;->dp24:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    .line 14079
    iput v1, v0, Lecw;->b:I

    .line 1438
    .local v0, "optionsMenuIcon":Lecw;
    sget v1, Lezg$l;->share:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ay:Landroid/view/MenuItem;

    .line 1439
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ay:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1440
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->ay:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1442
    sget v1, Lezg$l;->dt_card_exchange_history:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v5, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->az:Landroid/view/MenuItem;

    .line 1443
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->az:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1444
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->az:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1446
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1613
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 1614
    invoke-static {}, Lfui;->a()Lfui;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->aq:Lfui$a;

    .line 17048
    if-eqz v1, :cond_0

    .line 17051
    iget-object v0, v0, Lfui;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1615
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1466
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1483
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1468
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->onBackPressed()V

    goto :goto_0

    .line 1471
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->au:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-virtual {v0, p0, v1}, Lftz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    .line 1472
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->S:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 1473
    invoke-direct {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->k()V

    .line 1474
    const-string/jumbo v0, "MyQrcode"

    const-string/jumbo v1, "a2o5v.12302431.1.MyQrcode"

    invoke-static {v3, v0, v3, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 14191
    :sswitch_2
    if-eqz p0, :cond_0

    .line 14192
    const-string/jumbo v0, "type=face"

    .line 14193
    const-string/jumbo v1, "pages/roomlist/roomlist"

    const-string/jumbo v2, "2018111662233068"

    invoke-static {p0, v0, v1, v2}, Lflz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_0
    const-string/jumbo v0, "CardExHistory"

    const-string/jumbo v1, "a2o5v.12302431.1.CardExHistory"

    invoke-static {v3, v0, v3, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 1466
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
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
    .line 1045
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1046
    invoke-static {p0, p1, p3}, Lftu;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;I[I)V

    .line 1047
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 403
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->i:Z

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->finish()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->M:Lftz;

    .line 7199
    new-instance v1, Lftz$7;

    invoke-direct {v1, v0}, Lftz$7;-><init>(Lftz;)V

    .line 7216
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7217
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v1

    .line 8172
    new-instance v2, Lfug$2;

    invoke-direct {v2, v1, v0}, Lfug$2;-><init>(Lfug;Lcma;)V

    .line 8185
    iget-object v0, v1, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-interface {v0, v2}, Lcom/alibaba/android/user/namecard/service/CardIService;->getNewReceiveCards(Liyv;)V

    goto :goto_0
.end method
