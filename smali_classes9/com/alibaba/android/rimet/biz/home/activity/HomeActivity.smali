.class public Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;,
        Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;,
        Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;,
        Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;,
        Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final aC:[Ljava/lang/Long;

.field private static aG:Lcpx$a;

.field private static final s:Ljava/text/SimpleDateFormat;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/alibaba/android/ding/base/objects/DingTabFragment;

.field private D:Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

.field private E:Z

.field private F:Z

.field private G:Landroid/support/v4/app/Fragment;

.field private H:Landroid/support/v4/app/Fragment;

.field private I:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;

.field private K:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

.field private L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

.field private M:Lejy;

.field private N:Lelp$a;

.field private final O:[Ljava/lang/String;

.field private P:Landroid/widget/TextView;

.field private Q:Lecw;

.field private R:Lecw;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Z

.field private V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private W:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

.field private X:F

.field private Y:I

.field private Z:Landroid/view/View;

.field private aA:Ljava/lang/Runnable;

.field private aB:Ljava/lang/Runnable;

.field private aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

.field private aE:Lcmq$a;

.field private aF:Ljava/lang/String;

.field private aH:Lcom/alibaba/wukong/im/UserListener;

.field private aI:Landroid/content/BroadcastReceiver;

.field private aJ:Lcjo$a;

.field private aK:Z

.field private aL:Z

.field private aM:Landroid/view/View$OnClickListener;

.field private aN:Landroid/widget/ListPopupWindow;

.field private aO:Z

.field private aP:Landroid/content/BroadcastReceiver;

.field private aQ:Lcmt$a;

.field private aR:Lcmt$a;

.field private aS:Landroid/database/ContentObserver;

.field private aT:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aU:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

.field private aV:Landroid/view/View$OnClickListener;

.field private aW:Landroid/view/View$OnClickListener;

.field private aX:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

.field private aY:Landroid/content/BroadcastReceiver;

.field private aa:Landroid/os/Handler;

.field private ab:I

.field private ac:Lejp;

.field private ad:Lejr;

.field private ae:Z

.field private af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

.field private ag:Lejt;

.field private ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field private ai:Z

.field private aj:J

.field private ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

.field private al:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

.field private am:Landroid/widget/ImageView;

.field private an:Landroid/widget/ImageView;

.field private ao:Landroid/view/View;

.field private ap:Z

.field private aq:Z

.field private ar:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Z

.field private au:Z

.field private final av:I

.field private aw:Z

.field private ax:Z

.field private ay:Z

.field private az:Z

.field b:Z

.field c:I

.field public d:I

.field e:I

.field f:I

.field public g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

.field public h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

.field public i:I

.field public j:Lejq;

.field k:Lcom/amap/api/location/AMapLocationClient;

.field l:Z

.field m:Landroid/content/DialogInterface$OnDismissListener;

.field n:Landroid/content/BroadcastReceiver;

.field o:Landroid/content/BroadcastReceiver;

.field p:Landroid/content/BroadcastReceiver;

.field q:Landroid/content/BroadcastReceiver;

.field r:Z

.field private t:Landroid/widget/ImageView;

.field private u:J

.field private v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private y:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

.field private z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x51fc

    .line 251
    const-class v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s:Ljava/text/SimpleDateFormat;

    .line 397
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5208

    .line 398
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x51fd

    .line 399
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x51f8

    .line 400
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x39dfc

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-wide/32 v2, 0x40d1c1

    .line 402
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-wide/32 v2, 0x28687

    .line 403
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-wide/16 v2, 0x51ff

    .line 404
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-wide/16 v2, 0x51f5

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-wide/16 v2, 0x5201

    .line 406
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-wide/32 v2, 0x28425

    .line 407
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-wide/16 v2, 0x51f7

    .line 408
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-wide/16 v2, 0x51fa

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-wide/32 v2, 0x39dfa

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-wide/16 v2, 0x5207

    .line 411
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-wide/32 v2, 0x76fcb19

    .line 412
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-wide/16 v2, 0x51f3

    .line 413
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-wide/16 v2, 0x5206

    .line 414
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-wide/16 v2, 0x51f2

    .line 415
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 416
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 417
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-wide/32 v2, 0xcd2e306

    .line 418
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-wide/32 v2, 0xa0e6ba4

    .line 419
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-wide/32 v2, 0x28426

    .line 420
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-wide/32 v2, 0x188b95b1

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-wide/32 v2, 0x1897bacc

    .line 422
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aC:[Ljava/lang/Long;

    .line 1410
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$15;

    invoke-direct {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$15;-><init>()V

    sput-object v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aG:Lcpx$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    .line 277
    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c:I

    .line 278
    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d:I

    .line 279
    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->e:I

    .line 280
    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f:I

    .line 281
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u:J

    .line 293
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->A:Z

    .line 294
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->B:Z

    .line 297
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->E:Z

    .line 298
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->F:Z

    .line 308
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SessionFragment"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DingTabFragment"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-class v2, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "HomeContactFragment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "MineFragment"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O:[Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X:F

    .line 326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    .line 328
    iput v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ab:I

    .line 340
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 342
    iput-boolean v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ai:Z

    .line 343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    .line 356
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aq:Z

    .line 358
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ar:Ljava/lang/String;

    .line 359
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->as:Ljava/lang/String;

    .line 361
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->at:Z

    .line 362
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->au:Z

    .line 364
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->av:I

    .line 366
    iput-boolean v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aw:Z

    .line 368
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ax:Z

    .line 370
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ay:Z

    .line 371
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->az:Z

    .line 375
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aA:Ljava/lang/Runnable;

    .line 382
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$12;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aB:Ljava/lang/Runnable;

    .line 395
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->k:Lcom/amap/api/location/AMapLocationClient;

    .line 645
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aF:Ljava/lang/String;

    .line 935
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l:Z

    .line 1417
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$16;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aH:Lcom/alibaba/wukong/im/UserListener;

    .line 1532
    iput-boolean v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aK:Z

    .line 1533
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aL:Z

    .line 1886
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$27;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aM:Landroid/view/View$OnClickListener;

    .line 2611
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aO:Z

    .line 2632
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$46;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$46;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aP:Landroid/content/BroadcastReceiver;

    .line 2639
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$47;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$47;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aQ:Lcmt$a;

    .line 2654
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$48;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$48;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aR:Lcmt$a;

    .line 2961
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$52;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->m:Landroid/content/DialogInterface$OnDismissListener;

    .line 3801
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$64;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aS:Landroid/database/ContentObserver;

    .line 3854
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$65;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$65;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aT:Lckm$a;

    .line 3864
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$66;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$66;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aU:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .line 4082
    iput-boolean v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->r:Z

    .line 4175
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$71;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$71;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aV:Landroid/view/View$OnClickListener;

    .line 4190
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$72;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aW:Landroid/view/View$OnClickListener;

    .line 4284
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$74;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aX:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const v4, 0x7f0907ba

    const/4 v0, 0x0

    .line 250
    .line 50734
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o()Z

    move-result v1

    if-nez v1, :cond_5

    .line 50739
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v1

    const-string/jumbo v2, "beacon_checkin_is_open"

    invoke-virtual {v1, v2, v0}, Lcnh;->d(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50761
    :cond_0
    :goto_0
    return v0

    .line 50744
    :cond_1
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v1

    const-string/jumbo v2, "sw_checkin_never_remind"

    invoke-virtual {v1, v2, v0}, Lcnh;->d(Ljava/lang/String;Z)Z

    move-result v1

    .line 50745
    if-nez v1, :cond_0

    .line 50751
    invoke-static {}, Lcms;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcms;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50756
    :cond_2
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v1

    const-string/jumbo v2, "sw_checkin_date"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcnh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50757
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 50758
    sget-object v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 50759
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 50760
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50765
    :cond_3
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v0

    const-string/jumbo v1, "sw_checkin_date"

    invoke-virtual {v0, v1, v2}, Lcnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50767
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50768
    invoke-static {}, Lcms;->p()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcms;->o()Z

    move-result v1

    if-nez v1, :cond_6

    .line 50769
    const v1, 0x7f0907b5

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50770
    const v1, 0x7f0907b7

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$75;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$75;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50813
    :cond_4
    :goto_1
    const v1, 0x7f0907b9

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$78;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$78;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50824
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50825
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 50835
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 250
    goto/16 :goto_0

    .line 50781
    :cond_6
    invoke-static {}, Lcms;->p()Z

    move-result v1

    if-nez v1, :cond_7

    .line 50782
    const v1, 0x7f0907b6

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50783
    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 50795
    :cond_7
    invoke-static {}, Lcms;->o()Z

    move-result v1

    if-nez v1, :cond_4

    .line 50796
    const v1, 0x7f0907b8

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50797
    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$77;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$77;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 50827
    :cond_8
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$79;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$79;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method static synthetic B(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aq:Z

    return v0
.end method

.method static synthetic C(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ap:Z

    return v0
.end method

.method static synthetic D(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->k()V

    return-void
.end method

.method static synthetic E(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic F(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 50836
    sget-object v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 50913
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v0

    invoke-virtual {v0}, Lelp;->c()Lejy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M:Lejy;

    .line 50914
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->W:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0923ee

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    .line 50925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l:Z

    .line 50926
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N:Lelp$a;

    if-nez v0, :cond_0

    .line 50927
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N:Lelp$a;

    .line 50934
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N:Lelp$a;

    invoke-virtual {v0, v1}, Lelp;->a(Lelp$a;)V

    .line 50936
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b()V

    .line 50938
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->h:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 50960
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->b:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$10;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 51001
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->l:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 51087
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->p:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 51094
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->B:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$8;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 51117
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51121
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->O:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$9;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 51143
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->ad:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 250
    return-void
.end method

.method static synthetic I(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    .line 51167
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ai:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    .line 51168
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v1, "dt_welcome"

    aput-object v1, v2, v4

    const-string/jumbo v1, "dt_welcome"

    aput-object v1, v2, v5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v1, "url"

    aput-object v1, v3, v4

    const-string/jumbo v1, "expiredTime"

    aput-object v1, v3, v5

    const-string/jumbo v1, "EVENTBUTLER"

    .line 51169
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$51;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$51;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 51168
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 250
    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 250
    .line 51192
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ae:Z

    if-nez v0, :cond_1

    .line 51193
    iput-boolean v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ae:Z

    .line 51194
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$50;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 51211
    if-eqz v0, :cond_1

    .line 51212
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.alibaba.android.dingtalk.new.message_notification"

    invoke-static {v1, v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcms;->h()Z

    move-result v1

    if-nez v1, :cond_5

    .line 51213
    invoke-static {}, Lcom/alibaba/laiwang/xpn/utils/RomUtils;->isHuaweiRom()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_notification_huawei_p_enable"

    .line 51244
    invoke-virtual {v1, v2, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 51213
    if-nez v1, :cond_2

    .line 51214
    :cond_0
    const v1, 0x7f091d5b

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f091d59

    .line 51215
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f091d5a

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_gdwt&questionId=201602043501"

    .line 51214
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51216
    invoke-interface {v0, v5}, Lemc$a;->a(Z)V

    .line 51238
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.alibaba.android.dingtalk.new.message_notification"

    invoke-static {v0, v1, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    .line 51217
    :cond_2
    invoke-static {}, Lcof;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51218
    const v1, 0x7f091f44

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f091f42

    .line 51219
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f091f43

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_gdwt&questionId=201602056905"

    .line 51218
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51221
    invoke-interface {v0, v5}, Lemc$a;->a(Z)V

    goto :goto_0

    .line 51222
    :cond_3
    invoke-static {}, Lcof;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51223
    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$58;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$58;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lemc$a;)V

    .line 51245
    const-string/jumbo v0, "HeartbeatUtils"

    invoke-static {v0, v5}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v2, Lemc$1;

    invoke-direct {v2, p0, v1}, Lemc$1;-><init>(Landroid/content/Context;Lemc$a;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 51235
    :cond_4
    invoke-interface {v0, v3}, Lemc$a;->a(Z)V

    goto :goto_0

    .line 51240
    :cond_5
    invoke-interface {v0, v3}, Lemc$a;->a(Z)V

    goto :goto_1
.end method

.method static synthetic K(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->A:Z

    return v0
.end method

.method static synthetic L(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 51272
    const v0, 0x7f1105ce

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    return-void
.end method

.method static synthetic M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 51274
    const v0, 0x7f1105ce

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    return-void
.end method

.method static synthetic N(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->B:Z

    return v0
.end method

.method static synthetic O(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ao:Landroid/view/View;

    return-object v0
.end method

.method static synthetic P(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ab:I

    return v0
.end method

.method static synthetic Q(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->E:Z

    return v0
.end method

.method static synthetic R(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->F:Z

    return v0
.end method

.method static synthetic S(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aW:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic U(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->m()V

    return-void
.end method

.method static synthetic V(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i()V

    return-void
.end method

.method static synthetic W(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j()V

    return-void
.end method

.method static synthetic X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic Y(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l()V

    return-void
.end method

.method static synthetic Z(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    return-object v0
.end method

.method private a(Lejs;)I
    .locals 12
    .param p1, "dropMenuAdapter"    # Lejs;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 2548
    const/4 v7, 0x0

    .line 2549
    .local v7, "mMeasureParent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 2550
    .local v8, "maxWidth":I
    const/4 v5, 0x0

    .line 2551
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 2553
    .local v4, "itemType":I
    move-object v0, p1

    .line 2554
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2555
    .local v10, "widthMeasureSpec":I
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2556
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2557
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2558
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 2559
    .local v9, "positionType":I
    if-eq v9, v4, :cond_0

    .line 2560
    move v4, v9

    .line 2561
    const/4 v5, 0x0

    .line 2564
    :cond_0
    if-nez v7, :cond_1

    .line 2565
    new-instance v7, Landroid/widget/FrameLayout;

    .end local v7    # "mMeasureParent":Landroid/view/ViewGroup;
    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2568
    .restart local v7    # "mMeasureParent":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {v0, v3, v5, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2569
    invoke-virtual {v5, v10, v2}, Landroid/view/View;->measure(II)V

    .line 2571
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 2573
    .local v6, "itemWidth":I
    if-le v6, v8, :cond_2

    .line 2574
    move v8, v6

    .line 2557
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2578
    .end local v6    # "itemWidth":I
    .end local v9    # "positionType":I
    :cond_3
    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {p0, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    add-int/2addr v11, v8

    return v11
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/ding/base/objects/DingTabFragment;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->C:Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->D:Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->K:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lejt;)Lejt;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lejt;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ag:Lejt;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lejy;)Lejy;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lejy;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M:Lejy;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ar:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;
    .locals 2
    .param p1, "orgMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4039
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    const-string/jumbo v1, "\u5de5\u4f5c"

    .line 4040
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    const-string/jumbo v1, "\u5fae\u5e94\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4041
    :cond_0
    const v0, 0x7f092189

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4043
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v1, "orgsWithScreenLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 782
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 783
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

    .line 784
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->allStaffSecurityPasscode:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 788
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 789
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 793
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    return-object v1
.end method

.method private a(I)V
    .locals 2
    .param p1, "pageNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 2867
    packed-switch p1, :pswitch_data_0

    .line 2892
    :goto_0
    return-void

    .line 2869
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0

    .line 2872
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0

    .line 2875
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0

    .line 2884
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0

    .line 2887
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0

    .line 2867
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private a(ILejr;)V
    .locals 3
    .param p1, "tabPosition"    # I
    .param p2, "homePopupManger"    # Lejr;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 4665
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->am:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 4674
    :cond_0
    :goto_0
    return-void

    .line 4669
    :cond_1
    if-eqz p2, :cond_0

    .line 4670
    if-nez p1, :cond_2

    .line 4671
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 4672
    .local v0, "showEnergy":Z
    :goto_1
    invoke-virtual {p2, v1, v0}, Lejr;->a(IZ)V

    goto :goto_0

    .line 4671
    .end local v0    # "showEnergy":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(J)V
    .locals 9
    .param p1, "orgId"    # J

    .prologue
    const/4 v7, 0x2

    .line 4233
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v5, v5, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v5, :cond_0

    .line 4234
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v5, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 35359
    iget-wide v0, v5, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 4235
    .local v0, "currentOrgId":J
    cmp-long v5, v0, p1

    if-nez v5, :cond_1

    .line 4252
    .end local v0    # "currentOrgId":J
    :cond_0
    :goto_0
    return-void

    .line 4238
    .restart local v0    # "currentOrgId":J
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(J)V

    .line 4239
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Leek;->b(J)V

    .line 4240
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v5, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v5, p1, p2}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(J)V

    .line 4241
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i()V

    .line 4242
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j()V

    .line 4243
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v3

    .line 4244
    .local v3, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    .line 4245
    .local v4, "orgName":Ljava/lang/String;
    :goto_1
    const v5, 0x7f1105c6

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4246
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setText(Ljava/lang/String;)V

    .line 4248
    if-eqz v3, :cond_3

    iget-object v2, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    .line 4249
    .local v2, "iconUrl":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setLargeIcon(Ljava/lang/String;)V

    .line 4250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->m()V

    goto :goto_0

    .line 4244
    .end local v2    # "iconUrl":Ljava/lang/String;
    .end local v4    # "orgName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 4248
    .restart local v4    # "orgName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-static {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 41
    .param p1, "commingIntent"    # Landroid/content/Intent;

    .prologue
    .line 1588
    const-string/jumbo v4, "to_page"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1589
    .local v35, "tag":Ljava/lang/String;
    const-string/jumbo v4, "org_id"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u:J

    .line 1590
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    if-eqz v4, :cond_1a

    .line 1591
    const-string/jumbo v4, "to_session"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1592
    const-string/jumbo v4, "showAnim"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aq:Z

    .line 1593
    const-string/jumbo v4, "general"

    sget-object v5, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "showAnim from buy"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aq:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v5, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1763
    :cond_0
    :goto_1
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1764
    .local v40, "urlString":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1765
    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    .line 1766
    .local v38, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "/action/dingword"

    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1767
    invoke-static {}, Lelg;->a()Lelg;

    move-result-object v4

    .line 27178
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v13, "share_invitation_listener"

    const/16 v17, 0x0

    .line 27179
    move/from16 v0, v17

    invoke-virtual {v5, v13, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 27180
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v13

    const-string/jumbo v17, "f_share_invitation_listener"

    .line 27181
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lchx;->a(Ljava/lang/String;)Z

    move-result v13

    .line 27182
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v17

    .line 27183
    if-eqz v5, :cond_1

    if-eqz v13, :cond_1

    if-nez v17, :cond_1b

    .line 27184
    .end local v38    # "uri":Landroid/net/Uri;
    .end local v40    # "urlString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 1592
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1595
    :cond_3
    const-string/jumbo v4, "to_ding"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1597
    const-string/jumbo v4, "ding_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1598
    .local v29, "dingId":Ljava/lang/String;
    const-string/jumbo v4, "confirm_ding"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1599
    .local v31, "needConfirm":Z
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1600
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$19;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;Z)V

    invoke-interface {v4, v5, v13}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1609
    .end local v29    # "dingId":Ljava/lang/String;
    .end local v31    # "needConfirm":Z
    :cond_4
    const-string/jumbo v4, "to_alimei_calendar_event_detail"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1610
    const-string/jumbo v4, "intent_key_event_id"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1611
    .local v6, "eventId":J
    const-string/jumbo v4, "intent_key_event_start_millis"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1612
    .local v8, "startMillis":J
    const-string/jumbo v4, "intent_key_event_end_millis"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1613
    .local v10, "endMillis":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1614
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Landroid/content/Context;JJJ)V

    goto/16 :goto_1

    .line 1615
    .end local v6    # "eventId":J
    .end local v8    # "startMillis":J
    .end local v10    # "endMillis":J
    :cond_5
    const-string/jumbo v4, "to_contact"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x3

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_1

    .line 1618
    :cond_6
    const-string/jumbo v4, "to_oa"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x2

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1620
    const-string/jumbo v4, "reload"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    .line 1621
    .local v33, "reload":Z
    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v4, :cond_7

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    move-object/from16 v32, v0

    check-cast v32, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 24574
    .local v32, "oaFragment":Lcom/alibaba/android/oa/fragment/OAFragment;
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    .line 1623
    if-eqz v4, :cond_7

    .line 1624
    invoke-virtual/range {v32 .. v32}, Lcom/alibaba/android/oa/fragment/OAFragment;->d()V

    .line 1627
    .end local v32    # "oaFragment":Lcom/alibaba/android/oa/fragment/OAFragment;
    :cond_7
    const-string/jumbo v4, "corpid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1628
    .local v28, "corpId":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1629
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 1631
    .local v14, "orgId":J
    :try_start_0
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, ""

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v19, "switchOA handleIntent TO_OA orgId "

    aput-object v19, v13, v17

    const/16 v17, 0x1

    .line 1632
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v17

    const/16 v17, 0x2

    const-string/jumbo v19, " orgIdFromIntent="

    aput-object v19, v13, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v17

    .line 1631
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v5, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1637
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_0

    .line 1638
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(J)V

    .line 1640
    const-string/jumbo v4, "appid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1641
    .local v16, "appId":Ljava/lang/String;
    const-string/jumbo v4, "agentid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1642
    .local v22, "agentId":Ljava/lang/String;
    const-string/jumbo v4, "groupkey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1643
    .local v30, "groupKey":Ljava/lang/String;
    const-string/jumbo v4, "scene"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1644
    .local v34, "scene":Ljava/lang/String;
    const-string/jumbo v4, "dd_params"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1645
    .local v18, "params":Ljava/lang/String;
    const-string/jumbo v4, "tips"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1646
    .local v36, "tips":Ljava/lang/String;
    const-string/jumbo v4, "1"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1648
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v13, Lcom/alibaba/android/oa/fragment/OAFragment;

    const-string/jumbo v17, "dd_params"

    invoke-virtual/range {v13 .. v18}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1650
    :cond_8
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    check-cast v19, Lcom/alibaba/android/oa/fragment/OAFragment;

    const-string/jumbo v23, "dd_params"

    move-wide/from16 v20, v14

    move-object/from16 v24, v18

    invoke-virtual/range {v19 .. v24}, Lcom/alibaba/android/oa/fragment/OAFragment;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1656
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v4, v4, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1657
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1658
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v4, Lcom/alibaba/android/oa/fragment/OAFragment;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1661
    :cond_a
    const-wide/16 v26, 0x0

    .line 1663
    .local v26, "aid":J
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v26

    .line 1666
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v4, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 25568
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    instance-of v5, v5, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    if-eqz v5, :cond_0

    .line 25569
    iget-object v4, v4, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    check-cast v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 26165
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 26168
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    if-nez v5, :cond_b

    .line 26169
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->c:Landroid/view/View;

    sget v13, Ledz$f;->oa_fragment_app_tip:I

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 26170
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v13, Lcom/alibaba/android/oa/fragment/CommonOAFragment$7;

    invoke-direct {v13, v4}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$7;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-virtual {v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26177
    :cond_b
    if-eqz v36, :cond_c

    .line 26178
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    .line 26182
    :goto_5
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->e:Z

    .line 26183
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->f:J

    .line 26184
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    if-eqz v5, :cond_0

    .line 26185
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v13, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;

    invoke-direct {v13, v4}, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;-><init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    invoke-virtual {v5, v13}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 26199
    iget-object v4, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b:Leee;

    invoke-virtual {v4}, Leee;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 26180
    :cond_c
    iget-object v5, v4, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const-string/jumbo v13, ""

    invoke-virtual {v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setContent(Ljava/lang/String;)V

    goto :goto_5

    .line 1668
    .end local v26    # "aid":J
    :cond_d
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v4, Lcom/alibaba/android/oa/fragment/OAFragment;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1672
    :cond_e
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$20;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1689
    .end local v14    # "orgId":J
    .end local v16    # "appId":Ljava/lang/String;
    .end local v18    # "params":Ljava/lang/String;
    .end local v22    # "agentId":Ljava/lang/String;
    .end local v28    # "corpId":Ljava/lang/String;
    .end local v30    # "groupKey":Ljava/lang/String;
    .end local v33    # "reload":Z
    .end local v34    # "scene":Ljava/lang/String;
    .end local v36    # "tips":Ljava/lang/String;
    :cond_f
    const-string/jumbo v4, "to_more"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x4

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_1

    .line 1692
    :cond_10
    const-string/jumbo v4, "to_chat"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1694
    const-string/jumbo v4, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1695
    .local v25, "cid":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1696
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1698
    .local v12, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$21;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1, v12}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$21;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1705
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v25    # "cid":Ljava/lang/String;
    :cond_11
    const-string/jumbo v4, "to_conference"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1706
    const-string/jumbo v4, "NAVIGATOR"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    const-string/jumbo v5, "https://qr.dingtalk.com/conference.html"

    new-instance v13, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$23;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-interface {v4, v5, v13}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 1713
    :cond_12
    const-string/jumbo v4, "to_oa_subapp"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x2

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1715
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1716
    .local v39, "url":Ljava/lang/String;
    const-string/jumbo v4, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1717
    .local v37, "title":Ljava/lang/String;
    const-string/jumbo v4, "corp_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1718
    .restart local v28    # "corpId":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1719
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 1722
    .restart local v14    # "orgId":J
    :try_start_2
    const-string/jumbo v4, "oa"

    const-string/jumbo v5, ""

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v19, "switchOA handleIntent TO_OA_SUBAPP orgId "

    aput-object v19, v13, v17

    const/16 v17, 0x1

    .line 1723
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v17

    const/16 v17, 0x2

    const-string/jumbo v19, " orgIdFromIntent="

    aput-object v19, v13, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v13, v17

    .line 1722
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v5, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1729
    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_13

    .line 1730
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(J)V

    .line 1733
    .end local v14    # "orgId":J
    :cond_13
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$24;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v4, v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1738
    .end local v28    # "corpId":Ljava/lang/String;
    .end local v37    # "title":Ljava/lang/String;
    .end local v39    # "url":Ljava/lang/String;
    :cond_14
    const-string/jumbo v4, "to_web"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1739
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1740
    .restart local v39    # "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1741
    .end local v39    # "url":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "to_common"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1742
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1743
    .restart local v39    # "url":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1744
    .end local v39    # "url":Ljava/lang/String;
    :cond_16
    const-string/jumbo v4, "to_calendar"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_1

    .line 1746
    :cond_17
    const-string/jumbo v4, "to_alert_page"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1747
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1748
    .restart local v39    # "url":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1749
    const-string/jumbo v4, "alert"

    const/4 v5, 0x0

    const-string/jumbo v13, "alert url is null"

    invoke-static {v4, v5, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1752
    :cond_18
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    invoke-static/range {v39 .. v39}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v13}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1753
    .end local v39    # "url":Ljava/lang/String;
    :cond_19
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1754
    const-string/jumbo v4, "com.alibaba.android.rimet.gov"

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d()V

    goto/16 :goto_1

    .line 1759
    :cond_1a
    const-string/jumbo v4, "com.alibaba.android.rimet.gov"

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    if-eqz v4, :cond_0

    .line 1761
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d()V

    goto/16 :goto_1

    .line 27187
    .restart local v38    # "uri":Landroid/net/Uri;
    .restart local v40    # "urlString":Ljava/lang/String;
    :cond_1b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1, v5}, Lelg;->a(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto/16 :goto_2

    .end local v38    # "uri":Landroid/net/Uri;
    .end local v40    # "urlString":Ljava/lang/String;
    .restart local v14    # "orgId":J
    .restart local v28    # "corpId":Ljava/lang/String;
    .restart local v37    # "title":Ljava/lang/String;
    .restart local v39    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_6

    .end local v37    # "title":Ljava/lang/String;
    .end local v39    # "url":Ljava/lang/String;
    .restart local v16    # "appId":Ljava/lang/String;
    .restart local v18    # "params":Ljava/lang/String;
    .restart local v22    # "agentId":Ljava/lang/String;
    .restart local v26    # "aid":J
    .restart local v30    # "groupKey":Ljava/lang/String;
    .restart local v33    # "reload":Z
    .restart local v34    # "scene":Ljava/lang/String;
    .restart local v36    # "tips":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .end local v16    # "appId":Ljava/lang/String;
    .end local v18    # "params":Ljava/lang/String;
    .end local v22    # "agentId":Ljava/lang/String;
    .end local v26    # "aid":J
    .end local v30    # "groupKey":Ljava/lang/String;
    .end local v34    # "scene":Ljava/lang/String;
    .end local v36    # "tips":Ljava/lang/String;
    :catch_2
    move-exception v4

    goto/16 :goto_3
.end method

.method private a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V
    .locals 7
    .param p1, "adsAlertStyleObject"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4522
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 4557
    :cond_1
    :goto_0
    return-void

    .line 4527
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->mediaId:Ljava/lang/String;

    .line 4529
    .local v0, "bannerMediaId":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4530
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;>;"
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;-><init>()V

    .line 4531
    .local v1, "item":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->setTitle(Ljava/lang/String;)V

    .line 4532
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->setContent(Ljava/lang/String;)V

    .line 4533
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;->actUrl1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->setActUrl(Ljava/lang/String;)V

    .line 4534
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4537
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    .line 4538
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    .line 36244
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->i:Ljava/lang/String;

    .line 4539
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a(III)V

    .line 4540
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 37232
    iput v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->f:I

    .line 4541
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    .line 38044
    iput-object v2, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->b:Ljava/util/List;

    .line 38046
    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;

    if-eqz v4, :cond_3

    .line 38047
    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->b:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;->b(Ljava/util/List;)V

    .line 4542
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$81;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;)V

    .line 38216
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->j:Landroid/widget/AdapterView$OnItemClickListener;

    .line 4549
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$82;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$82;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;)V

    .line 38220
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/ListViewWithArrowDialog;->k:Landroid/view/View$OnClickListener;

    .line 4556
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v2, 0x0

    .line 250
    .line 51153
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 51154
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 51155
    :goto_0
    if-ge v1, v3, :cond_2

    .line 51156
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51157
    if-eqz v0, :cond_0

    .line 51158
    if-ne v1, p1, :cond_1

    .line 51159
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51155
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51161
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 250
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;ILejr;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lejr;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(ILejr;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # J

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/content/Intent;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f09010d

    .line 250
    .line 51298
    const-string/jumbo v0, "recognize_card_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51299
    const-string/jumbo v1, "media_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51301
    invoke-static {v4}, Lcms;->a(I)V

    .line 51334
    :goto_0
    return-void

    .line 51305
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;

    invoke-static {v2, v0, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;

    .line 51306
    if-eqz v0, :cond_1

    .line 51307
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 51309
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 51310
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->mobilePhone:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 51311
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->mail:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 51312
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->company:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 51313
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->department:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptName:Ljava/lang/String;

    .line 51314
    iget-object v3, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->position:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 51315
    iget-object v0, v0, Lcom/alibaba/dingtalk/scanbase/model/RecognizeCardResult;->address:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    .line 51316
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    .line 51318
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/external/manage_external.html"

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$70;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$70;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 51319
    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51333
    :catch_0
    move-exception v0

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_0

    .line 51330
    :cond_1
    const v0, 0x7f09010d

    :try_start_1
    invoke-static {v0}, Lcms;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 250
    .line 50720
    check-cast p1, Lcom/alibaba/android/oa/fragment/OAFragment;

    .end local p1    # "x1":Landroid/support/v4/app/Fragment;
    invoke-virtual {p1}, Lcom/alibaba/android/oa/fragment/OAFragment;->d()V

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/view/View;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const v9, 0x7f091ba0

    const v8, 0x7f0918bd

    const v7, 0x7f090b19

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 250
    .line 49383
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->at:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->au:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->az:Z

    if-eqz v0, :cond_5

    .line 49384
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->at:Z

    .line 49385
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->au:Z

    .line 49386
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    const v3, 0x7f01013b

    const v4, 0x7f0c0151

    invoke-direct {v0, p0, v2, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    .line 49387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49388
    new-instance v0, Lejs$a;

    const v2, 0x7f09205c

    const v4, 0x7f09205c

    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09255d

    invoke-static {v5}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v4, v1, v5}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49390
    invoke-static {}, Lcom/alibaba/dingtalk/projection/FocusInterface;->d()Lcom/alibaba/dingtalk/projection/FocusInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/projection/FocusInterface;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49391
    new-instance v0, Lejs$a;

    invoke-virtual {p0, v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f09233b

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v8, v2, v1, v4}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49394
    :cond_1
    new-instance v0, Lejs$a;

    const v2, 0x7f091d4c

    const v4, 0x7f091d4c

    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f092498

    invoke-static {v5}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v4, v1, v5}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 49395
    iget-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ay:Z

    if-eqz v2, :cond_2

    .line 49396
    iput v6, v0, Lejs$a;->e:I

    .line 49397
    iput-boolean v1, v0, Lejs$a;->f:Z

    .line 49399
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49401
    new-instance v0, Lejs$a;

    const v2, 0x7f091d4b

    const v4, 0x7f091d4b

    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f092333    # 1.82287E38f

    invoke-static {v5}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v4, v1, v5}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49403
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49404
    new-instance v0, Lejs$a;

    invoke-virtual {p0, v7}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0924b0

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v7, v2, v1, v4}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49706
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->y()Z

    move-result v0

    .line 49415
    if-eqz v0, :cond_4

    .line 49417
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    if-eqz v0, :cond_a

    .line 49418
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->d()Z

    move-result v0

    .line 49420
    :goto_1
    new-instance v4, Lejs$a;

    const v5, 0x7f0913e4

    if-eqz v0, :cond_7

    const v2, 0x7f0913df

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v0, :cond_8

    const v0, 0x7f092428

    :goto_3
    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v2, v1, v0}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 49421
    iput-boolean v1, v4, Lejs$a;->f:Z

    .line 49423
    iput v1, v4, Lejs$a;->e:I

    .line 49424
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49427
    :cond_4
    new-instance v0, Lejs;

    invoke-direct {v0, p0, v3}, Lejs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 49428
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49430
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 49431
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lejs;)I

    move-result v0

    .line 49432
    if-le v1, v0, :cond_9

    .line 49433
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 49437
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 49438
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 49439
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    .line 49440
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;

    invoke-direct {v2, p0, v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$45;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/util/List;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49542
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 49544
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 250
    return-void

    .line 49408
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v2, "enterprise_square2"

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49409
    invoke-static {}, Lcms;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 49410
    new-instance v0, Lejs$a;

    invoke-virtual {p0, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f092598

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v9, v2, v1, v4}, Lejs$a;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49420
    :cond_7
    const v2, 0x7f0913e1

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_8
    const v0, 0x7f092429

    goto/16 :goto_3

    .line 49435
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    goto :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/view/View;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 250
    .line 51336
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 51337
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q:Lecw;

    if-eqz v0, :cond_0

    .line 51338
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->R:Lecw;

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51340
    :cond_0
    invoke-static {}, Leju;->a()Leju;

    move-result-object v1

    new-instance v2, Lejt;

    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, p0, v0, v6}, Lejt;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 51343
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 51344
    :cond_1
    :goto_0
    return-void

    .line 51347
    :cond_2
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51351
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04072c

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51353
    const v0, 0x7f11032d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    .line 51354
    const v4, 0x7f110d2d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Leju$1;

    invoke-direct {v5, v1}, Leju$1;-><init>(Leju;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51364
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {p0, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setListViewMaxHeight(I)V

    .line 51365
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51366
    new-instance v4, Leju$2;

    invoke-direct {v4, v1, p2, v2, p0}, Leju$2;-><init>(Leju;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;Landroid/widget/BaseAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51399
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {v0, v3, v7, v7, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 51400
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51401
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setTouchable(Z)V

    .line 51402
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setInputMethodMode(I)V

    .line 51403
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setSoftInputMode(I)V

    .line 51404
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setFocusable(Z)V

    .line 51405
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 51406
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    const v2, 0x7f0c0245

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setAnimationStyle(I)V

    .line 51408
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    new-instance v2, Leju$3;

    invoke-direct {v2, v1, p2}, Leju$3;-><init>(Leju;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 51416
    iget-object v0, v1, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->update()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    .prologue
    const v1, 0x7f1105c8

    const/4 v2, 0x0

    .line 250
    .line 41501
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41502
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41503
    :cond_0
    :goto_0
    return-void

    .line 41507
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .line 41508
    const-string/jumbo v1, "pref_key_show_work_method_push_reddot"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 41511
    const-string/jumbo v0, "pref_key_show_work_method_push_dialog"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->U:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 41515
    const-string/jumbo v0, "pref_key_show_work_method_push_dialog"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 41516
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 41508
    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;

    .prologue
    const/4 v1, 0x0

    .line 250
    .line 51418
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->dismiss()V

    .line 51421
    const-string/jumbo v0, "pref_key_show_work_method_push_reddot"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 51422
    const v0, 0x7f1105c8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 51424
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->getActUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51425
    :cond_0
    :goto_0
    return-void

    .line 51429
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->getActUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 250
    .line 50673
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->F_()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50675
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->f()Ljava/util/ArrayList;

    move-result-object v7

    .line 50676
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->F_()Landroid/widget/ListView;

    move-result-object v8

    .line 50677
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 50678
    invoke-virtual {v8}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v0, v2

    .line 50680
    :goto_0
    if-ge v0, v1, :cond_0

    .line 50681
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 50682
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 50680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50686
    :cond_0
    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 50687
    if-gez v0, :cond_7

    move v1, v2

    .line 50690
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v5

    move v6, v2

    .line 50692
    :goto_2
    if-ge v6, v9, :cond_6

    .line 50693
    add-int v0, v6, v1

    rem-int v4, v0, v9

    .line 50694
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 50695
    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 50696
    if-gez v3, :cond_1

    move v3, v4

    .line 50699
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    move v1, v4

    .line 50705
    :goto_3
    if-gez v1, :cond_5

    .line 50709
    :goto_4
    if-ltz v0, :cond_4

    .line 50710
    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v8, v0, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    :cond_2
    :goto_5
    return-void

    .line 50692
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 50712
    :cond_4
    invoke-virtual {v8, v2, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 50713
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    .line 50719
    iget-boolean v0, v0, Lejq;->c:Z

    .line 50713
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e()I

    move-result v0

    if-lez v0, :cond_2

    .line 50714
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    invoke-virtual {v0}, Lejq;->a()V

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v3

    move v1, v5

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_1

    :cond_8
    move v0, v5

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;Lejt;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;
    .param p2, "x2"    # Lejt;

    .prologue
    const/4 v1, 0x6

    .line 250
    .line 46783
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 46784
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 47359
    iget-wide v2, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 46787
    :cond_0
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->a()Ljava/util/List;

    move-result-object v3

    .line 46788
    if-eqz v3, :cond_6

    .line 46792
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 46793
    new-array v5, v4, [Ljava/lang/String;

    .line 46795
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 46796
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 46797
    if-eqz v0, :cond_1

    .line 46803
    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    aput-object v0, v5, v2

    .line 46795
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 48069
    :cond_2
    new-instance v0, Lejt$1;

    invoke-direct {v0, p2}, Lejt$1;-><init>(Lejt;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48092
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 48093
    iget-object v0, p2, Lejt;->a:Ljava/util/List;

    if-nez v0, :cond_4

    .line 48094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lejt;->a:Ljava/util/List;

    .line 48098
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 48099
    if-eqz v0, :cond_3

    .line 48100
    new-instance v3, Lgts;

    invoke-direct {v3, v0}, Lgts;-><init>(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    .line 48101
    iget-object v0, p2, Lejt;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 48096
    :cond_4
    iget-object v0, p2, Lejt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 46808
    :cond_5
    invoke-static {}, Leju;->a()Leju;

    move-result-object v2

    const v0, 0x7f1105c9

    .line 46809
    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 48139
    if-eqz p0, :cond_6

    if-nez p2, :cond_7

    .line 48140
    :cond_6
    :goto_3
    return-void

    .line 48143
    :cond_7
    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_8

    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 48147
    :cond_8
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 48148
    if-le v0, v1, :cond_9

    move v0, v1

    .line 48152
    :cond_9
    iget-object v1, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    if-nez v1, :cond_a

    .line 48153
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v4, 0x0

    const v5, 0x7f01013b

    const v6, 0x7f0c0151

    invoke-direct {v1, p0, v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    .line 48156
    :cond_a
    iget-object v1, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48157
    iget-object v1, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 48158
    iget-object v1, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/2addr v0, v3

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 48159
    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 48160
    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 48161
    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    new-instance v1, Leju$4;

    invoke-direct {v1, v2, p0, p1, p2}, Leju$4;-><init>(Leju;Landroid/app/Activity;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48185
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48186
    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 48187
    iget-object v0, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    new-instance v1, Leju$5;

    invoke-direct {v1, v2}, Leju$5;-><init>(Leju;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 48197
    iget-object v0, v2, Leju;->c:Lelp$a;

    if-nez v0, :cond_6

    .line 48198
    new-instance v0, Leju$6;

    invoke-direct {v0, v2, p2}, Leju$6;-><init>(Leju;Landroid/widget/BaseAdapter;)V

    iput-object v0, v2, Leju;->c:Lelp$a;

    .line 48204
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v0

    iget-object v1, v2, Leju;->c:Lelp$a;

    invoke-virtual {v0, v1}, Lelp;->a(Lelp$a;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lgts;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lgts;

    .prologue
    const/4 v2, 0x0

    .line 250
    .line 43268
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgts;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43269
    invoke-virtual {p1}, Lgts;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(J)V

    .line 43271
    if-eqz v2, :cond_0

    .line 43272
    const v0, 0x7f1105c6

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;->getWorkTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43274
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V

    .line 43276
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i()V

    .line 43277
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j()V

    .line 43278
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->m()V

    .line 43280
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/ShortcutObject;)V

    .line 250
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aF:Ljava/lang/String;

    .line 649
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aL:Z

    if-eqz v0, :cond_0

    .line 650
    invoke-static {p1}, Lcms;->a(Ljava/lang/String;)V

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aF:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "tips"    # Ljava/lang/String;
    .param p4, "linkUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3122
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 28218
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 28222
    iput-object p2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->e:Ljava/lang/String;

    .line 28239
    iput-object p3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 3126
    const v1, 0x7f091d58

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 3127
    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$56;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$56;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 28271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 3136
    const v1, 0x7f091eae

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 3137
    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$57;

    invoke-direct {v1, p0, v0, p4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$57;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;)V

    .line 29267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 3149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 29275
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 3151
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3152
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 3156
    :goto_0
    return-void

    .line 3154
    :cond_0
    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5
    .param p1, "isNeedSyn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3834
    const-string/jumbo v0, "dd"

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update local contact sync:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ax:Z

    .line 3836
    const-string/jumbo v0, "pref_key_contact_change"

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3837
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Z)V

    .line 3838
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aw:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->az:Z

    return p1
.end method

.method static synthetic aa(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac:Lejp;

    return-object v0
.end method

.method static synthetic ab(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejr;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ad:Lejr;

    return-object v0
.end method

.method static synthetic ac(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->D:Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    return-object v0
.end method

.method static synthetic ad(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 51276
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "init_current_company_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51277
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0}, Leek;->c()J

    move-result-wide v0

    .line 51278
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(J)V

    .line 51279
    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 51280
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    move-object v1, v0

    .line 51281
    :goto_0
    const v0, 0x7f1105c6

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    return-void

    .line 51280
    :cond_1
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic ae(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c()V

    return-void
.end method

.method static synthetic af(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    return-object v0
.end method

.method static synthetic ag(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const/4 v0, 0x1

    .line 250
    .line 51284
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    if-eqz v1, :cond_0

    .line 51285
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c:I

    iget v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c:I

    iget-boolean v5, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b:Z

    if-eqz v5, :cond_1

    :goto_0
    add-int/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 250
    :cond_0
    return-void

    .line 51285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic ah(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n()V

    return-void
.end method

.method static synthetic ai(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 51289
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    if-eqz v0, :cond_0

    .line 51290
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d:I

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 51292
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 51293
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 51294
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n()V

    .line 51296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aN:Landroid/widget/ListPopupWindow;

    .line 250
    return-void
.end method

.method static synthetic aj(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ax:Z

    return v0
.end method

.method static synthetic ak(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->am:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic al(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->an:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->as:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 962
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M:Lejy;

    if-nez v2, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v1

    .line 967
    .local v1, "webViewTab":Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;
    if-eqz v1, :cond_0

    .line 971
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M:Lejy;

    iget v0, v2, Lejy;->a:I

    .line 972
    .local v0, "total":I
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;I)V

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(ILejr;)V
    .locals 3
    .param p1, "tabPosition"    # I
    .param p2, "homePopupManger"    # Lejr;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4743
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->an:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 4760
    :cond_0
    :goto_0
    return-void

    .line 4747
    :cond_1
    if-eqz p2, :cond_0

    .line 4749
    if-nez p1, :cond_2

    const/4 v1, 0x1

    .line 4750
    .local v1, "showRedPacket":Z
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->l()Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    move-result-object v0

    .line 4751
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
    if-eqz v0, :cond_3

    .line 4752
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->mediaId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Ljava/lang/String;)V

    .line 4754
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->isShow()Z

    move-result v2

    and-int/2addr v1, v2

    .line 4758
    :goto_2
    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Lejr;->a(IZ)V

    goto :goto_0

    .line 4749
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
    .end local v1    # "showRedPacket":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 4756
    .restart local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
    .restart local v1    # "showRedPacket":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private b(J)V
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    const/4 v1, 0x0

    .line 4763
    .line 38772
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 4763
    :goto_0
    if-eqz v0, :cond_4

    .line 4764
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4768
    :goto_1
    return-void

    .line 38775
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 38776
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 38777
    goto :goto_0

    .line 38779
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->settingsObject:Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->recruitmentOrg:Z

    goto :goto_0

    .line 4766
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1527
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    const v0, 0x7f091f12

    invoke-static {v0}, Lcms;->a(I)V

    .line 1530
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const v6, 0x7f091beb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    .line 39613
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39614
    const-string/jumbo v0, "current_custom_theme"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39615
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    .line 40383
    iget-object v1, v1, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    .line 39616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39617
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39620
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 39621
    if-eqz v0, :cond_0

    .line 39622
    const-string/jumbo v2, "current_custom_theme"

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39623
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Ljava/lang/String;)V

    .line 39628
    :cond_0
    :goto_0
    return-void

    .line 39627
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39628
    :cond_2
    const-string/jumbo v0, "current_custom_theme"

    invoke-static {v0}, Lcpk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 39631
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39634
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 39635
    if-eqz v0, :cond_0

    .line 39636
    const-string/jumbo v2, "current_custom_theme"

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->mediaId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39637
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;ILejr;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lejr;

    .prologue
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(ILejr;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 9
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 4715
    const-string/jumbo v2, ""

    .line 4716
    .local v2, "url":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4718
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4723
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4724
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4725
    .local v0, "mImageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->an:Landroid/widget/ImageView;

    const/4 v4, 0x6

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 4734
    .end local v0    # "mImageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_1
    return-void

    .line 4719
    :catch_0
    move-exception v8

    .line 4720
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ay:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ab:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->H:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1306
    const-string/jumbo v1, "pref_key_xpn_jump_url"

    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    .local v0, "xpnJumpUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    const-string/jumbo v1, "pref_key_xpn_jump_url"

    invoke-static {v1}, Lcpk;->a(Ljava/lang/String;)V

    .line 1309
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I

    .line 1311
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->at:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    return p1
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1774
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n()V

    .line 1775
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->au:Z

    return v0
.end method

.method private e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1796
    invoke-static {}, Lcms;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1797
    invoke-static {}, Lcms;->t()V

    .line 1799
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1800
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v2, v9, v8}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 1805
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aq:Z

    .line 1806
    const-string/jumbo v2, "general"

    sget-object v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "showAnim from first time install"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    :cond_1
    :goto_1
    return-void

    .line 1801
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v8, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1803
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v2, v9, v8}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1809
    :cond_3
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1810
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1811
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1812
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "work_on_start"

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1813
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v2, v9, v8}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    .line 40797
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->as:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 40798
    :cond_0
    :goto_0
    return-void

    .line 40802
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ar:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    move v3, v0

    .line 40809
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->as:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v0, v4, v6, v7}, Lcni;->a(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    .line 40814
    :cond_2
    :goto_3
    const-string/jumbo v0, "screenlock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[home]hasLockPwd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "hasLockScreen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40815
    if-eqz v3, :cond_3

    if-nez v2, :cond_0

    .line 40819
    :cond_3
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 40820
    const-string/jumbo v2, "screenlock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[home]num of orgs having screen lock"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40821
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 40823
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 40824
    const-string/jumbo v3, "conference_from_home"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40825
    const-string/jumbo v1, "key_orgs"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40826
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 40802
    goto :goto_1

    .line 40803
    :catch_0
    move-exception v0

    .line 40805
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    goto/16 :goto_2

    .line 40810
    :catch_1
    move-exception v0

    .line 40812
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aq:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2337
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v5

    .line 2338
    .local v5, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v5, :cond_1

    .line 2339
    const/4 v0, 0x0

    .line 2340
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 2341
    .local v4, "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    if-eqz v4, :cond_0

    .line 2342
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 2345
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2346
    .local v1, "data":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v3

    .line 2347
    .local v3, "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    .line 2349
    invoke-interface {v3, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->initSecurityBody(Ljava/lang/String;)Z

    .line 2350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 2351
    .local v6, "timestamp":Ljava/lang/String;
    invoke-interface {v3, v6, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2352
    .local v7, "wuaForKey":Ljava/lang/String;
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2353
    const-string/jumbo v8, "wua"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2354
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2361
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "sbComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    .end local v4    # "sdsComp":Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;
    .end local v5    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v6    # "timestamp":Ljava/lang/String;
    .end local v7    # "wuaForKey":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 2357
    :catch_0
    move-exception v2

    .line 2358
    .local v2, "je":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2361
    .end local v2    # "je":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v8, ""

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ai:Z

    return v0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2595
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v0

    invoke-virtual {v0}, Lcmp;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2596
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27604
    :goto_0
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v0

    invoke-virtual {v0}, Lcmp;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27614
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aO:Z

    if-nez v0, :cond_0

    .line 27615
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 27616
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27617
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27618
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27619
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27620
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aP:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aO:Z

    .line 27605
    :cond_0
    :goto_1
    return-void

    .line 2598
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 27607
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h()V

    goto :goto_1
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->B:Z

    return p1
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->W:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 2626
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aO:Z

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aP:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aO:Z

    .line 2630
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->A:Z

    return p1
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->K:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    return-object v0
.end method

.method private i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2831
    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    invoke-interface {v2}, Leek;->a()Ljava/util/List;

    move-result-object v0

    .line 2832
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_1

    .line 2833
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    .line 2838
    :goto_0
    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    if-ne v2, v6, :cond_0

    .line 2840
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 2841
    .local v1, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v1, :cond_2

    .line 2842
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "orgMicroAPPObject is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    iput v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    .line 2852
    .end local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    :goto_1
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "mOrgSize:%d"

    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    return-void

    .line 2835
    :cond_1
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "orgMicroAPPObject list is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    iput v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    goto :goto_0

    .line 2844
    .restart local v1    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_2
    iget-wide v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2845
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "orgMicroAPPObject orgid invalid"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    iput v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    goto :goto_1

    .line 2847
    :cond_3
    iget-boolean v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->hasDefaultOA:Z

    if-nez v2, :cond_0

    .line 2848
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, "oa"

    const-string/jumbo v4, "orgMicroAPPObject hasDefaultOA is false"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iput v7, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    goto :goto_1
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->F:Z

    return p1
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2856
    const-string/jumbo v1, "first_org_guide_tag"

    invoke-static {p0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2857
    .local v0, "isMultiOrgFirst":Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    if-le v1, v2, :cond_0

    .line 2858
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->U:Z

    .line 2859
    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(I)V

    .line 2864
    :goto_0
    return-void

    .line 2861
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->U:Z

    .line 2862
    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->E:Z

    return p1
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2974
    const-string/jumbo v0, "pref_key_show_anim_overlay"

    invoke-static {v0}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2975
    const-string/jumbo v0, "general"

    sget-object v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "showAnim"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3001
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    const-string/jumbo v0, "showAnimOverlay"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Z)V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ay:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private l()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 3400
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    if-nez v0, :cond_0

    .line 3426
    :goto_0
    return-void

    .line 3404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v1, 0x7f091ecb

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3406
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 3407
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 3409
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3410
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v1, 0x7f092333    # 1.82287E38f

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    .line 3411
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setVisibility(I)V

    .line 3413
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v1, 0x7f091c07

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3415
    :cond_1
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-nez v0, :cond_2

    .line 3416
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setVisibility(I)V

    .line 3417
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v1, 0x7f09232e

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    .line 3420
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 3421
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCountNumberShow(Z)V

    goto :goto_0

    .line 3423
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ax:Z

    return v0
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v2, 0x7f1105c9

    .line 3429
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v1, :cond_0

    .line 3430
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/fragment/OAFragment;->f()Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 3431
    .local v0, "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v0, :cond_1

    .line 3432
    iget-object v1, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3435
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3441
    .end local v0    # "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    :goto_0
    return-void

    .line 3438
    .restart local v0    # "orgMicroAPPModel":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const/4 v1, 0x1

    .line 250
    .line 41790
    const v0, 0x7f092648

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 41793
    :goto_0
    if-eqz v0, :cond_1

    .line 41794
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->y:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    if-nez v0, :cond_0

    .line 41795
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/biz/update/DownloadManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->y:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .line 41797
    :cond_0
    invoke-static {}, Lelc;->a()Lelc;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->y:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    invoke-virtual {v0, p0, v1, v2}, Lelc;->a(Landroid/content/Context;ILjaw;)Z

    .line 250
    :cond_1
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aw:Z

    return p1
.end method

.method private n()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4012
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;->getCount()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4013
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    .line 4014
    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    invoke-interface {v2}, Leek;->c()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 4015
    .local v0, "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v0, :cond_0

    .line 4016
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v1, Lcom/alibaba/android/oa/fragment/OAFragment;

    iget-wide v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/oa/fragment/OAFragment;->a(J)V

    .line 4017
    const v1, 0x7f1105c6

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4018
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setText(Ljava/lang/String;)V

    .line 4019
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setLargeIcon(Ljava/lang/String;)V

    .line 4020
    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-ne v1, v6, :cond_0

    .line 4021
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i()V

    .line 4022
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j()V

    .line 4023
    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Leel;->f()Leek;

    move-result-object v1

    invoke-interface {v1}, Leek;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4024
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aW:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4025
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q:Lecw;

    invoke-virtual {v1, v5, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4033
    .end local v0    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    :goto_0
    return-void

    .line 4027
    .restart local v0    # "model":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4028
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    const/4 v2, 0x0

    .line 250
    .line 41822
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->U:Z

    .line 41823
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 41824
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 41825
    const-string/jumbo v0, "first_org_guide_tag"

    invoke-static {p0, v0, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 250
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ag:Lejt;

    return-object v0
.end method

.method private o()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 4419
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4425
    :cond_0
    :goto_0
    return v0

    .line 4422
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4425
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u:J

    return-wide v0
.end method

.method private p()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4434
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_welcome"

    const-string/jumbo v9, "url"

    invoke-virtual {v7, v8, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4435
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_welcome"

    const-string/jumbo v9, "expiredTime"

    invoke-virtual {v7, v8, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4436
    .local v1, "expiredTime":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4438
    .local v0, "expired":Z
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4439
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4440
    .local v2, "time":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 4441
    invoke-static {}, Lhrm;->a()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gtz v7, :cond_1

    move v0, v5

    .line 4447
    .end local v2    # "time":J
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "-1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4448
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v8, "dt_welcome"

    const-string/jumbo v9, "url"

    const-string/jumbo v10, "-1"

    sget-object v11, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 4449
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p0, v4, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    const-string/jumbo v7, "user_set"

    sget-object v8, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    new-array v9, v12, [Ljava/lang/String;

    const-string/jumbo v10, "showWelcome:"

    aput-object v10, v9, v6

    aput-object v4, v9, v5

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4454
    :goto_1
    return v5

    .restart local v2    # "time":J
    :cond_1
    move v0, v6

    .line 4441
    goto :goto_0

    .line 4445
    .end local v2    # "time":J
    :catch_0
    move-exception v7

    const-string/jumbo v7, "user_set"

    sget-object v8, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    new-array v9, v12, [Ljava/lang/String;

    const-string/jumbo v10, "parseLong error:"

    aput-object v10, v9, v6

    aput-object v1, v9, v5

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4453
    :cond_2
    const-string/jumbo v7, "user_set"

    sget-object v8, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    new-array v9, v12, [Ljava/lang/String;

    const-string/jumbo v10, "skip showWelcome:"

    aput-object v10, v9, v6

    aput-object v4, v9, v5

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 4454
    goto :goto_1
.end method

.method static synthetic q(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 42731
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAFragment;->f()Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 42732
    if-eqz v1, :cond_0

    .line 42733
    iget-object v2, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgCid:Ljava/lang/String;

    .line 42734
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42735
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;

    invoke-direct {v3, p0, v2, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    invoke-interface {v0, v3, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method private static q()Z
    .locals 2

    .prologue
    .line 4593
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4594
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "new_work_method"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4595
    const/4 v0, 0x1

    .line 4598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 48578
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 49359
    iget-wide v0, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 48579
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 48581
    const-string/jumbo v0, "pref_key_work_method_url"

    invoke-static {v0}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48583
    const-string/jumbo v0, "https://tms.dingtalk.com/markets/dingtalk/caselist-h5?wh_ttid=phone&showhead=0&lwfrom=20170730143447854&wh_ttid=phone&showhead=0"

    .line 48585
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 48586
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v3, "&corpId="

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48588
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->C:Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->H:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q:Lecw;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->R:Lecw;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    .line 50722
    const-string/jumbo v0, "wua_track"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$44;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$44;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .param p1, "notifyCount"    # I
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3600
    iput p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->e:I

    .line 3601
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    if-eqz v0, :cond_0

    .line 3602
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 3604
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4496
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2946
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/rimet/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2947
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2948
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "guide_newrole_quit_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2949
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_new_user_logon_role_select_frame_close_icon_click"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Ljava/lang/String;)V

    .line 2951
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3005
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onAttachedToWindow()V

    .line 3006
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 3008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 3011
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$55;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$55;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27832
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 27833
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a()V

    .line 27838
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 27839
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aB:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3022
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    if-eqz v0, :cond_2

    .line 3023
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->c()V

    .line 3025
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3766
    const/4 v0, 0x2

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 30207
    iget-boolean v3, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->d:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    instance-of v3, v3, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->a:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    check-cast v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .line 30469
    iget-object v3, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v3}, Lhdf;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30470
    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a:Lhdf;

    invoke-interface {v0}, Lhdf;->goBack()V

    move v0, v1

    .line 30209
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 3768
    :goto_1
    if-eqz v0, :cond_3

    .line 3785
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 30473
    goto :goto_0

    :cond_2
    move v0, v2

    .line 30209
    goto :goto_1

    .line 3772
    :cond_3
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->C:Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->C:Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    .line 3774
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3779
    :cond_4
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3784
    :goto_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppBack()V

    goto :goto_2

    .line 3782
    :catch_0
    move-exception v0

    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "Home moveTaskToBack exception"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    .line 5593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aE:Lcmq$a;

    if-nez v2, :cond_0

    .line 5594
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$54;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$54;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aE:Lcmq$a;

    .line 5608
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aE:Lcmq$a;

    invoke-virtual {v2, v3}, Lcmq;->a(Lcmq$a;)V

    .line 431
    :cond_0
    invoke-static {}, Leim;->a()Leim;

    move-result-object v2

    .line 6197
    invoke-static {}, Leim;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6198
    const-string/jumbo v2, "theme"

    const-string/jumbo v3, "CustomThemeLoadManager"

    const-string/jumbo v4, "onHomeCreate isCustomThemeClosed true and clearThemeMem"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6199
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2}, Lcmq;->b()V

    .line 432
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 6784
    .local v10, "oncreateTime":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    if-nez v2, :cond_8

    .line 6785
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    .line 6786
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->finish()V

    .line 6788
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->d()V

    .line 6789
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->clearLocalCache()V

    .line 6790
    const/4 v2, 0x0

    .line 435
    :goto_1
    if-nez v2, :cond_9

    .line 568
    :cond_2
    :goto_2
    return-void

    .line 6202
    .end local v10    # "oncreateTime":J
    :cond_3
    invoke-static {}, Leim;->b()J

    move-result-wide v4

    .line 6203
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    .line 6204
    const-string/jumbo v2, "theme"

    const-string/jumbo v3, "CustomThemeLoadManager"

    const-string/jumbo v4, "onHomeCreate currentOrgId <= 0 clearThemeMem"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6205
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2}, Lcmq;->b()V

    goto :goto_0

    .line 6208
    :cond_4
    invoke-virtual {v2, v4, v5}, Leim;->c(J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 6209
    const-string/jumbo v2, "theme"

    const-string/jumbo v3, "CustomThemeLoadManager"

    const-string/jumbo v4, "onHomeCreate hasThemeConfig  clearThemeMem"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6210
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2}, Lcmq;->b()V

    goto :goto_0

    .line 6213
    :cond_5
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcmq;->b(J)Z

    move-result v2

    if-nez v2, :cond_6

    .line 6214
    const-string/jumbo v2, "theme"

    const-string/jumbo v3, "CustomThemeLoadManager"

    const-string/jumbo v4, "onHomeCreate CustomThemeManager.getInstance().hasTheme  clearThemeMem"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6215
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2}, Lcmq;->b()V

    goto/16 :goto_0

    .line 6218
    :cond_6
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2}, Lcmq;->c()Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    move-result-object v2

    .line 6220
    if-eqz v2, :cond_7

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->orgId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 6221
    :cond_7
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcmq;->d(J)V

    goto/16 :goto_0

    .line 6792
    .restart local v10    # "oncreateTime":J
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 441
    :cond_9
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 7458
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$80;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$80;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 7710
    :cond_a
    const-string/jumbo v2, "pref_key_authorize_by_autologin"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    .line 7711
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$73;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$73;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-class v4, Lcma;

    move-object/from16 v0, p0

    invoke-static {v2, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcma;)V

    .line 452
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ap:Z

    .line 454
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setUseBaseUt(Z)V

    .line 7735
    const-string/jumbo v2, "screenlock"

    const-string/jumbo v3, "[home]navToLockPwdSettingPageIfNecessary"

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7736
    invoke-static/range {p0 .. p0}, Lcms;->q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7738
    const-string/jumbo v2, "screenlock"

    const-string/jumbo v3, "[home]device locked: true"

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8314
    :goto_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/rimet/RimetDDContext;->updateLocaleInCloudSetting(Ljava/util/Locale;Z)V

    .line 8315
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const/16 v3, 0x1e

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "user_settings"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "user_settings"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "dt_safe"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "dt_safe"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "dt_safe"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "dt_safe"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "user_settings"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "wk_xpn"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "dt_secret_chat"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "dt_org"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "goodTimeRedEnvelop"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "festivalRedEnvelop"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "user_settings"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string/jumbo v5, "calendar_function"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string/jumbo v5, "dt_live"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string/jumbo v5, "dt_health"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string/jumbo v5, "user_settings"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string/jumbo v5, "festivalRedEnvelop"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string/jumbo v5, "dt_im"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string/jumbo v5, "user_settings"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "silence_mode"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "silence_mode_time_range"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "just_hide_boss_chat"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "passcode"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "protect_lockscreen"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "hide_bossmode"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "efficient_mode"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "switch"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "secret_chat_icon"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, "share_biz_card"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "open"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "festival_red_packet"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "shield_unknown_contact_msg"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "c_setting_ding"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string/jumbo v6, "c_setting_alimei"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string/jumbo v6, "c_setting_alimei_share"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string/jumbo v6, "c_setting_alimei_notice"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string/jumbo v6, "c_setting_system"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string/jumbo v6, "c_setting_system_notice"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "c_setting_attendance"

    aput-object v6, v4, v5

    const/16 v5, 0x14

    const-string/jumbo v6, "c_setting_attendance_notice"

    aput-object v6, v4, v5

    const/16 v5, 0x15

    const-string/jumbo v6, "c_setting_journal"

    aput-object v6, v4, v5

    const/16 v5, 0x16

    const-string/jumbo v6, "c_setting_journal_notice"

    aput-object v6, v4, v5

    const/16 v5, 0x17

    const-string/jumbo v6, "ding_morning_brief"

    aput-object v6, v4, v5

    const/16 v5, 0x18

    const-string/jumbo v6, "gray_anchor"

    aput-object v6, v4, v5

    const/16 v5, 0x19

    const-string/jumbo v6, "u_time_sample"

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    const-string/jumbo v6, "streamline_mode_quick_menu_enabled"

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    const-string/jumbo v6, "red_packet_bomb"

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    const-string/jumbo v6, "quick_praise_default_url"

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    const-string/jumbo v6, "im_not_disturb_only_at_msgs"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcmt;->a([Ljava/lang/String;[Ljava/lang/String;)V

    .line 8382
    invoke-static {}, Lchx;->a()Lchx;

    .line 9114
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_efficient_mode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_user_unify_choose_kit"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "open_decrypt_send_message"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_js_api_biz_verify"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_user_report_security_data"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_user_org_industry_setting"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_user_org_manage"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_user_sub_manager"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_user_change_logo_title"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_search_new_entry"

    aput-object v4, v2, v3

    .line 9056
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9248
    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_user_merge_partial_profile"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "feature_im_inner_video_player"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_share_invitation"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_share_invitation_listener"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_user_add_staff_auto_add_country_code"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_user_use_profile_version_check"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "feature_im_msg_reply"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_uc_core"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ding_draft_disabled"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_im_banner_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_im_conversation_setting"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_ads_listener_class_check"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "dt_fuc_is_workmate_show"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_system_ui_flag"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_cspace_forward_cross_orgs"

    aput-object v4, v2, v3

    .line 9057
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9797
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_calendar_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_ding_sub_filter"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_user_use_create_org_v3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_red_packets_enterprise_b2c"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_im_cooperative_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_user_i18n"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_sw_gmap_manager"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_sw_location_mock_forbid_manager"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "friends_bulk_sync"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "call_support_fixline"

    aput-object v4, v2, v3

    .line 9058
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9812
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_support_conversation_narrow_search"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_animator_confetti"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_external_complete"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "ding_restart_not_pull"

    aput-object v4, v2, v3

    .line 9059
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9821
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ding_meeting_minutes"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ding_recall"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_lab_at_me_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_update_check_ttid_with_taobao"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_original_url_append_param_to_jump_enable"

    aput-object v4, v2, v3

    .line 9060
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9831
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_meizu_accs_disabled"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_industry_setting_show_share"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_cmail_calendar_alarm"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_system_calendar_alarm"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "im_chat_topic_store_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "im_chat_topic_store_play_gif_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_search_commit_negative_samples_log"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_ding_calendar_create_schedule"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_im_chat_cancel_as_up_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_doraemon_down_cdn_use_http"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_facebox_reenterlock_enable"

    aput-object v4, v2, v3

    .line 9061
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9852
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_push_task_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_facebox_tools_process"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_msg_global_sort"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "ding_show_advertise"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "ding_list_sample_style"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "calendar_show_meeting_status"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_uni_pro_jump_to_chat_not_new_task"

    aput-object v4, v2, v3

    .line 9062
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9864
    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_ant_face_detect_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_ant_face_verify_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_non_relation_contacts"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_ding_new_popup_window"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_calendar_new_popup_window"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_im_unlimit_coorperate_org"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_xpn_fcm_zh_open"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_power_thread_time_alarm"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_im_topic_emotion_search"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_calendar_almail_share_setting"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_system_calendar_verify"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_cloud_printer"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_search_activity_keywords"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_search_activity_search_view"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_im_enable_check_similar_group"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_oto_unreadmessage_to_ding"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_face_attention_alarm"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_face_attention_check_call_id"

    aput-object v4, v2, v3

    .line 9063
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9888
    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_calendar_meeting_show_yellow_bg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_calendar_show_mail"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_local_group_search"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_space_upload_task_channel"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_search_click_history"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_search_recall_results_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "feature_search_global_msg_search"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_im_show_bomb_banner"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_calendar_support_delete_event"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_auto_attendance_location_config"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_auto_attendance_on_open_link"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_group_announce_ding"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_im_show_bomb_banner"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_im_show_self_happy_banner"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_search_engine_use_fts"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_search_engine_disable_trigger"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_qrcode_org_creation"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_scan_alipay_sdk"

    aput-object v4, v2, v3

    .line 9064
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9911
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_op_pr_with_wv"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_js_api_pick_rp"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_user_phonebook_contacts_upload"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_user_upload_play_store_referrer"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_im_single_chat_todo_task"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_space_same_space_copy"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_circle_entry"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_user_medal_entry_v2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_im_assist_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_sports_base_step_determine"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_sports_upload_yesterday_steps"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_uc_apollo_new_version"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_live_anchor_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_live_viewer_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_search_remote_recommend_group_search_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_fix_im_in_wrong_conversation"

    aput-object v4, v2, v3

    .line 9065
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9932
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_search_remote_friend"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_search_present_medal_entry_logic"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_disable_result_keyword_match_check"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_sport_disable_add_sensor_reset_steps"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_ding_modify_send_type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_meeting_detail_add_receiver"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_transfer_task"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_search_update_click_history_recommend_object"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_lv_create_live_preview"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_search_rec_use_sync_a"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_cspace_list_dentry_retry"

    aput-object v4, v2, v3

    .line 9066
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9948
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_expand_msg_page_create_task"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_multi_message_to_task"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_im_forward_combine_message_to_ding"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_im_recall_msg_reedit"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_search_results_new_render"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_search_low_credibility_rec_reorder"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_im_against_harassment"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_im_md_support_inline_img"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_live_face_beauty"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_im_common_markdown_copy"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_calendar_mail_share_event_penetrate_through"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_im_video_encode_update"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_vivo_accs_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_im_photo_fetch_middle_cursor"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_search_fts_self_check"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_im_sys_msg_jump_internal"

    aput-object v4, v2, v3

    .line 9067
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9969
    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_space_file_decrypt_before_forward"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_picture_to_task"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_im_enable_js_api_preview_video"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_base_can_wheel_view_item_click"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_im_msg_ding_new_style"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_im_svc_grp_entry"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_rating_bar_merge_more_time"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_im_no_menu_link_msg"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_user_use_create_org_v4"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_user_create_org_v3_use_org_search"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_show_contact_match_guide"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_ding_meeting_map_location"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_live_disable_live_oversea"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_search_new_retail_member_search"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_im_emotion_fast_send_recommend"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_live_enable_nsagc"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_search_alias_search_check_user_type"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_deployment_record_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_space_message_upload_progress_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_only_fetch_employee_info_when_type_is_0"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "f_space_lwp_upload_limited_max_size_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "f_im_last_message_group_task"

    aput-object v4, v2, v3

    .line 9068
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 9996
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_base_input_panel_compat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_conf_floating_enter_opt_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_space_disable_dentry_space_id_modification"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_jsapi_asg_check"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_ding_meeting_repeat_frequency"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_calendar_system_event_query_frequency"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_ding_drop_table_if_database_exception"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_csconfig_force_sync"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_web_view_compat_v2"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_live_token_recreate"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_space_file_permission_unify_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_space_local_edit_write_enable"

    aput-object v4, v2, v3

    .line 9069
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10013
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_calendar_share_open"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_chat_theme_setting_enabled"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_user_register_org_name_global"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_user_use_personal_medal_logic"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_im_chat_theme_supported"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_scan_jump_url"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_recruitment_video_use_ffmpeg"

    aput-object v4, v2, v3

    .line 9070
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10025
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_ding_message_to_task_relate_group"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_ding_new_tab_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_live_full_screen_adapter"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_use_party_contact_service"

    aput-object v4, v2, v3

    .line 9071
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10034
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_user_choose_contact_limit_new_logic_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_qr_login_only_from_scan"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_create_org_region_town_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_share_show_and_sys_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_focus_projection_ping_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_cspace_file_link_bubble_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_thumb_id_invalid_comp_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_calendar_day_view"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_crypto_sdk_retry_init"

    aput-object v4, v2, v3

    .line 9072
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10048
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_live_anchor_disable_low_version"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_jsapi_call_back_when_paused_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_msg_use_im_style"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_search_filter_optimize"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_search_global_msg_new_style"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_im_enable_add_member_recall"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_ding_msg_to_ding_new_style"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_recruitment_wml_nav_url"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_recruitment_entrance_open"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_conf_space_acl_permission_setting_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_conf_video_share_zoom_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_crypto_sdk_retry_init_v2"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_eapp_entry_red_dot"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_auto_attendance_new_fast_checkin_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_im_fix_bad_net_create_group"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_xpn_huawei_o_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_xpn_huawei_less_o_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_upgrade_update_oa_config"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_live_huawei_software_encode"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_ding_meeting_device_signin_enable"

    aput-object v4, v2, v3

    .line 9073
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10073
    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_share_new_task_move_to_back"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_search_new_feedback"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_assure_area"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_oa_json_read_from_file"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_register_compat_hw"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_im_send_audio_success_play_tip"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_ding_ding_id_exchange"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_im_not_disturb_only_at"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_internatoinal_upload_compiled_content_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_user_contact_choose_max_limit"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_user_contact_batch_request_use_local"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_im_praise_belong_org"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_live_share_same_org_group"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_cspace_send_other_org_file_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_user_group_apply_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_user_rpc_enterprise_name_cacheable"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_redpack_record_delete_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_im_emotion_pattern_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_crypto_encrypt_file_auto_degree_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_pk_load_video_v2"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "f_conf_live_call_busy_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "f_cspace_single_task_download_enable"

    aput-object v4, v2, v3

    .line 9074
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10101
    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_use_v3_load_convs"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_conversation_config_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_service_group_forbidden_add_friend_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_svg_set_forbidden_add_friend_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_inner_department_upgrade_service_group_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_search_msg_car_brand"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_search_search_date_token"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_search_redundant"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_search_new_function_has_perm"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_search_pinyin"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_search_full_sync"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_user_contact_permission"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_user_org_apply_items_new"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_encrypt_all_degrade_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_encrypt_audio_to_text_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_spcae_acl_file_logic_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_im_gif_downgrade_to_normal"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_share_mini_app_new_api"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_upstream_sms_verify"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_im_md_header_parse_with_color"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "f_im_conv_force_sync"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "f_voice_use_seek_bar"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "f_splash_local_resize_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "f_contact_upload_phone_book_list_better"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "f_im_v_local_read_instantly"

    aput-object v4, v2, v3

    .line 9075
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10131
    const/16 v2, 0x1f

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_search_full_sync_when_table_create"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_scan_huawei_device_flashing"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_scan_other_device_flashing"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_org_manage_apply_customize_entry"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_im_fix_auto_translate_at_string"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_im_voip_not_connect_tip_show"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_search_function_history"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_search_all_expand"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_im_group_sub_admin"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_user_regist_join_team"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_im_conversation_setting_merge"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_calendar_instance_use_cache"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_calendar_share_view_detail"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_calendar_rpc_frequency_control"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_calendar_report_check_data"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_calendar_hide_status_bar"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_ding_notify_center_red_dot"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_config_oa_update_cache_new_logic"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_im_combine_foward_md_show"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_config_cmail_lwp_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "f_config_cmail_okhttp_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "f_config_cmail_push_all_folder"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "f_cspace_editable_link_for_single_chat_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "f_search_reusing_search_fragment"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "f_contact_find_more_team_from_contact_adding"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "f_base_notification_crash_catch"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "f_js_mtop_over_lwp_new_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "f_encrypt_format_error_retry"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "f_im_sys_for_text_parse_link"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "f_contact_make_phone_call_use_new_field"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "f_photokit_argb_8888"

    aput-object v4, v2, v3

    .line 9076
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10167
    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_search_show_diagnostics_setting"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_search_check_message_exist"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_can_search_contact_local_enhance"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_search_support_demission_colleague"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_search_support_contact_local_enhance"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_im_conv_handle_entrance"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_files_helper_setting_v2"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_screen_shot_feed_back"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_chat_combine_praises"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_account_unregister_show_always"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_merge_ding_schedule"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_cspace_unify_conversation_space_id_logic"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_cspace_file_list_order_folder_top"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_cspace_xpn_fcm"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_mtop_over_lwp_login_site_param_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_im_check_o2o_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_contact_get_user_profile_under_org_context"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_im_group_chat_guide_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_live_record_rename_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_notification_huawei_p_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "f_im_education_group_check_teacher_msg_entrance"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "f_ding_calendar_share_tips_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "f_calendar_nav"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "f_calendar_diurnal_view_arrow_indicator"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "f_sjlink_gather_tel_link_v2"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "f_screen_shot_feedback"

    aput-object v4, v2, v3

    .line 9077
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10198
    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_search_append_remain_msg"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_search_task_compat"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_search_suggestion_guide"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_search_sqlite3_log_open"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_calendar_alibaba_user_ali_mei_folder_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_conf_lockscreen_notification_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_calendar_alibaba_user_ali_mei_folder_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "f_conf_voipconf_reenter_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "f_user_z_project"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "f_conf_voip_fail_ring_unblock_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "f_cmail_search_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f_circle_v2"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "f_im_group_ring_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "f_cmail_upload_ops_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "f_contact_employee_recommend_enable"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "f_calendar_diurnal_view_refresh_by_scroll"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "f_calendar_can_drag_modify"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "f_calendar_can_drag_create"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "f_user_connection_circle"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "f_calendar_drag_vibrate"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "f_ding_eapp_task"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "f_doraemon_new_trace"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "f_cspace_grid_file_list_enable"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "f_im_session_emotion"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "f_open_motu_watch"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "f_im_anheng_hash_ignore"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "f_im_encrypt_voice_preload"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "f_im_markdown_reply_filter_src"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "f_base_new_install_action"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "f_wukong_delete_msg_use_drop"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "f_im_chat_remind_birthday"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "f_im_dynamic_default_emotion"

    aput-object v4, v2, v3

    .line 9078
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 10235
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f_im_emotion_doutu"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "f_im_emotion_show_origin"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "f_contact_sync_phone_contact_occasion_new"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f_cspace_trace_level_info_disable"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "f_im_voice_read_fix"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "f_wallet_name_downgrade_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "f_focus_projection_status_store"

    aput-object v4, v2, v3

    .line 9079
    invoke-static {v2}, Lchx;->a([Ljava/lang/String;)V

    .line 8383
    sget-object v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aG:Lcpx$a;

    invoke-static {v2}, Lcpx;->a(Lcpx$a;)V

    .line 10389
    invoke-static {}, Lcof;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 10390
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$14;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    :cond_c
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 10895
    const v2, 0x7f0400e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->setContentView(I)V

    .line 10896
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->hideToolbar()V

    .line 10898
    const v2, 0x7f1105d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    .line 11883
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_d

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v2, v3, :cond_12

    :cond_d
    const/4 v2, 0x1

    .line 10901
    :goto_4
    if-eqz v2, :cond_e

    .line 10902
    const v2, 0x7f1105cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t:Landroid/widget/ImageView;

    .line 10903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->t:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$28;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10911
    const v2, 0x7f1105c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$29;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$29;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10924
    :cond_e
    new-instance v2, Lejq;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lejq;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    .line 10925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    if-eqz v2, :cond_f

    .line 10926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v2, v3}, Lejq;->a(Landroid/support/v4/app/Fragment;)V

    .line 10928
    :cond_f
    new-instance v2, Lejr;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lejr;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ad:Lejr;

    .line 10930
    new-instance v2, Lejp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ad:Lejr;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lejp;-><init>(Landroid/app/Activity;Lejr;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac:Lejp;

    .line 10932
    const v2, 0x7f1105c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->al:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .line 10933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->al:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$30;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$30;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10944
    const v2, 0x7f1105d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 10945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$31;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$31;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10954
    const v2, 0x7f1105c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T:Landroid/view/View;

    .line 10955
    const v2, 0x7f1105c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->W:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .line 10956
    const v2, 0x7f1105c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P:Landroid/widget/TextView;

    .line 10957
    new-instance v2, Lecw;

    const v3, 0x7f09232c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f100480

    invoke-static {v4}, Leda;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lecw;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q:Lecw;

    .line 10958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q:Lecw;

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lecw;->c(I)V

    .line 10959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q:Lecw;

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lecw;->b(I)V

    .line 10961
    new-instance v2, Lecw;

    const v3, 0x7f09232b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f100480

    invoke-static {v4}, Leda;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lecw;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->R:Lecw;

    .line 10962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->R:Lecw;

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lecw;->c(I)V

    .line 10963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->R:Lecw;

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lecw;->b(I)V

    .line 10965
    const v2, 0x7f1105ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->S:Landroid/view/View;

    .line 10966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->S:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aV:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10967
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->S:Landroid/view/View;

    .line 12602
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_13

    .line 12603
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    .line 12604
    :goto_5
    if-nez v2, :cond_14

    .line 12605
    const/4 v2, 0x0

    .line 10967
    :goto_6
    if-eqz v2, :cond_19

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10968
    const v2, 0x7f1105c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCountNumberShow(Z)V

    .line 10969
    const v2, 0x7f1105c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aM:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10970
    const v2, 0x7f1105cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aM:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10971
    const v2, 0x7f1105c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11017
    const v2, 0x7f1105c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 11018
    invoke-static {}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11019
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$34;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11043
    const v2, 0x7f1105be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .line 11044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ak:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$35;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$35;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11065
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l()V

    .line 11067
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ao:Landroid/view/View;

    .line 11068
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11070
    const/4 v2, 0x0

    const v4, 0x7f1105bd

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11071
    const v2, 0x7f1105bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ao:Landroid/view/View;

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11073
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    .line 11074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    const v3, 0x7f1105bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ao:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    const v3, 0x7f1105c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    const v3, 0x7f1105cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->w:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11080
    const v2, 0x7f1100ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 11081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setPageMargin(I)V

    .line 11082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02104a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOffscreenPageLimit(I)V

    .line 11084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    if-nez v2, :cond_10

    .line 11085
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcn;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    .line 11087
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 11089
    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->getButtonsCount()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 11091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$36;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11089
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7741
    :cond_11
    const-string/jumbo v2, "screenlock"

    const-string/jumbo v3, "[home]device locked: false"

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7742
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$84;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$84;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v3, v2}, Lekw;->a(Lcom/alibaba/wukong/Callback;)V

    .line 7759
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v3, v2}, Lekw;->b(Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_3

    .line 11883
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 12603
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 12607
    :cond_14
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v2

    .line 12608
    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 12609
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 12611
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 12612
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcoc;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 12614
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_17

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 12616
    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 10967
    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 11018
    :cond_1a
    const/16 v2, 0x8

    goto/16 :goto_8

    .line 11111
    :cond_1b
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$37;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$37;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 11118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$38;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11125
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$39;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 11141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$40;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11150
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$41;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$41;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 11162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$42;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$42;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11170
    invoke-static {}, Lcpo;->a()Lcpo;

    move-result-object v2

    const v3, 0x7f1105bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 13039
    if-eqz v3, :cond_1c

    .line 13043
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 13044
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcpo$1;

    invoke-direct {v6, v2, v4}, Lcpo$1;-><init>(Lcpo;Landroid/content/Context;)V

    invoke-direct {v5, v4, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13053
    new-instance v4, Lcpo$2;

    invoke-direct {v4, v2, v5}, Lcpo$2;-><init>(Lcpo;Landroid/view/GestureDetector;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11172
    :cond_1c
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->J:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;

    .line 11173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    .line 11174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->J:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 13584
    const v2, 0x7f1105c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z:Landroid/view/View;

    .line 13585
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g()V

    .line 13586
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aQ:Lcmt$a;

    invoke-virtual {v2, v3}, Lcmt;->a(Lcmt$a;)V

    .line 11179
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->e()V

    .line 11181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->J:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;

    if-eqz v2, :cond_1d

    .line 11182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->J:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->onPageSelected(I)V

    .line 14491
    :cond_1d
    invoke-static {}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b(Landroid/app/Activity;)V

    .line 11187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ad:Lejr;

    .line 14646
    const v2, 0x7f1105d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->am:Landroid/widget/ImageView;

    .line 14647
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v2

    .line 14648
    if-eqz v2, :cond_33

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 14649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->am:Landroid/widget/ImageView;

    const v4, 0x7f0202bc

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14653
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->am:Landroid/widget/ImageView;

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$85;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$85;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14660
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(ILejr;)V

    .line 11188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ad:Lejr;

    .line 14682
    invoke-static {}, Lcms;->k()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 14686
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 14689
    const v2, 0x7f1105d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->an:Landroid/widget/ImageView;

    .line 14690
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->l()Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    move-result-object v2

    .line 14691
    if-eqz v2, :cond_1e

    .line 14692
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->mediaId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Ljava/lang/String;)V

    .line 14695
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->an:Landroid/widget/ImageView;

    new-instance v5, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(ILejr;)V

    .line 11190
    :cond_1f
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    .line 11191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;->b()V

    .line 15607
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v2

    .line 16082
    iget-object v2, v2, Lejv;->a:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 15608
    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 15609
    invoke-static {}, Lejk;->a()Lejk;

    move-result-object v3

    .line 17048
    iget-object v4, v3, Lejk;->b:Lejk$a;

    iput v2, v4, Lejk$a;->a:I

    .line 17049
    iget-object v4, v3, Lejk;->b:Lejk$a;

    iput v2, v4, Lejk$a;->b:I

    .line 17050
    invoke-virtual {v3}, Lejk;->b()V

    .line 464
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Landroid/content/Intent;)V

    .line 468
    :cond_21
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->m()V

    .line 471
    const-string/jumbo v2, "general"

    const-string/jumbo v3, "ConfigEngine"

    const-string/jumbo v4, "homeactivity is oncreate"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Leii;->a()Leii;

    move-result-object v2

    .line 17105
    const-string/jumbo v3, "ConfigEngine"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Leii$1;

    invoke-direct {v4, v2}, Leii$1;-><init>(Leii;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 475
    invoke-static {}, Leii;->a()Leii;

    move-result-object v2

    .line 17243
    invoke-static {}, Lfvv;->a()Lfvv;

    move-result-object v3

    const-string/jumbo v4, "oa_config_check_local_data"

    invoke-virtual {v3, v4}, Lfvv;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 17244
    const-string/jumbo v3, "syncOAConfigService"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Leii$3;

    invoke-direct {v4, v2}, Leii$3;-><init>(Leii;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 477
    :goto_b
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k()V

    .line 479
    invoke-static {}, Lcms;->q()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 480
    invoke-static {}, Lcms;->s()V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aA:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 487
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->F()V

    .line 498
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v2, :cond_23

    const-string/jumbo v2, "pref_key_is_third_login_way"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_23

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->x:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 17823
    if-eqz v2, :cond_22

    const-string/jumbo v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 17824
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17827
    :cond_22
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string/jumbo v5, "-"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17829
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pref_mobile_pwd_init_"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 17830
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$25;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18455
    :cond_23
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aJ:Lcjo$a;

    if-nez v2, :cond_24

    .line 18460
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aJ:Lcjo$a;

    .line 18513
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aJ:Lcjo$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcjo$a;)V

    .line 502
    :cond_24
    const-string/jumbo v2, "showOperateOrgRedDot"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ab:I

    .line 505
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_25

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->launch(Landroid/content/Context;)V

    .line 508
    :cond_25
    const-class v2, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/UserService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aH:Lcom/alibaba/wukong/im/UserListener;

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/UserService;->addUserListener(Lcom/alibaba/wukong/im/UserListener;)V

    .line 510
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aT:Lckm$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Lckm$a;)V

    .line 511
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aU:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 18844
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 18847
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aS:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19669
    :cond_26
    :goto_e
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$61;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$61;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    .line 19682
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "im_action_move_task_to_back"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19683
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    .line 19684
    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aI:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_27

    .line 20440
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$17;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aI:Landroid/content/BroadcastReceiver;

    .line 20447
    :cond_27
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.PROFILE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20448
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20617
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$59;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n:Landroid/content/BroadcastReceiver;

    .line 20643
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.HOMETAB_CLICKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20644
    const-string/jumbo v3, "com.workapp.show.jump_xpn_url"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20645
    const-string/jumbo v3, "ding_view_switch_action"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20646
    const-string/jumbo v3, "pref_key_recommend_info_first_show_"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20647
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20654
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$60;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$60;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o:Landroid/content/BroadcastReceiver;

    .line 20663
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "org_micro_sync_success"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20664
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o:Landroid/content/BroadcastReceiver;

    .line 20665
    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 20691
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$62;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$62;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q:Landroid/content/BroadcastReceiver;

    .line 20709
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.privilege_change"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20710
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q:Landroid/content/BroadcastReceiver;

    .line 20711
    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21051
    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$67;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 21065
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 21066
    const-string/jumbo v2, "com.workapp.org_employee_change"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21067
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 21110
    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$68;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$68;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 21116
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 21117
    const-string/jumbo v2, "com.workapp.org.sync"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21118
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 21122
    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$69;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$69;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 21128
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 21129
    const-string/jumbo v2, "com.workapp.vcard.camera.recognized"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21130
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 21131
    move-object/from16 v0, p0

    invoke-interface {v2, v3, v0, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 21622
    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$83;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$83;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aY:Landroid/content/BroadcastReceiver;

    .line 21633
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alibaba.dingtalk.telebase.action.UNREAD_COUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21634
    invoke-static/range {p0 .. p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aY:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 515
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 516
    .local v8, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aX:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v8, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c()V

    .line 519
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    invoke-virtual {v2}, Lcok;->b()V

    .line 22236
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/RimetDDContext;->updateUserAccount()V

    .line 22237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loading(\u9996\u9875\uff0d\u52a0\u8f7d) start :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22238
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 22239
    const-string/jumbo v3, "login"

    const-string/jumbo v4, "to_home_activity"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 22241
    const-string/jumbo v3, "login_no_pwd"

    const-string/jumbo v4, "to_home_activity"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 22243
    const-string/jumbo v3, "login"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 22244
    const-string/jumbo v3, "login_no_pwd"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 22245
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "login"

    const-string/jumbo v5, "totalTime"

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22246
    const-string/jumbo v3, "DD"

    const-string/jumbo v4, "login_no_pwd"

    const-string/jumbo v5, "totalTime"

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    sget-wide v6, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sSplashCostTime:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    .line 22249
    const-string/jumbo v3, "launch_time"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "homeActivity takes "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22253
    sget v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    sget v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 22254
    :cond_28
    if-eqz v2, :cond_29

    .line 22255
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 22256
    const-string/jumbo v4, "totalTime"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 22257
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    .line 22258
    const-string/jumbo v5, "Launch_status"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 22259
    const-string/jumbo v5, "DD"

    const-string/jumbo v6, "process_start"

    invoke-interface {v2, v5, v6, v4, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 22260
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    .line 22261
    const-string/jumbo v4, "Launch_status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 22262
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v4

    .line 22263
    const-string/jumbo v5, "totalTime"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    long-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 22264
    const-string/jumbo v5, "DD"

    const-string/jumbo v6, "process_start"

    invoke-interface {v2, v5, v6, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 22265
    const-string/jumbo v3, "process_start"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->reportOffLineDurationStatistics(Ljava/lang/String;J)V

    .line 22266
    const-string/jumbo v4, "Launch"

    sget v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_38

    const-string/jumbo v3, "cold"

    :goto_f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v4, v3, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 22268
    :cond_29
    sget v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2b

    :cond_2a
    sget v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 22270
    :cond_2b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22271
    const-string/jumbo v3, "launch_time"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aj:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22272
    const-string/jumbo v3, "launch_status"

    sget v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22273
    const-string/jumbo v3, "splash_cost"

    sget-wide v4, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sSplashCostTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22274
    sget v3, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 22275
    const-string/jumbo v3, "attach_oncreate"

    sget-wide v4, Lcom/alibaba/android/rimet/RimetDDContext;->sAttachBaseCostTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22276
    const-string/jumbo v3, "init_wukong"

    sget-wide v4, Lcom/alibaba/android/rimet/RimetDDContext;->sInitWukongCostTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22278
    :cond_2c
    new-instance v3, Lhzu;

    invoke-direct {v3}, Lhzu;-><init>()V

    .line 22279
    const-string/jumbo v4, "launch"

    iput-object v4, v3, Lhzu;->a:Ljava/lang/String;

    .line 22280
    const/16 v4, 0x130

    iput v4, v3, Lhzu;->c:I

    .line 22281
    const-string/jumbo v4, "Launch alarm"

    iput-object v4, v3, Lhzu;->d:Ljava/lang/String;

    .line 22282
    iput-object v2, v3, Lhzu;->b:Ljava/util/Map;

    .line 22283
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v3}, Lhzr;->c(Lhzu;)V

    .line 22286
    :cond_2d
    const/4 v2, 0x0

    sput v2, Lcom/alibaba/android/rimet/biz/SplashActivityContext;->sLaunchStatus:I

    .line 22670
    sget-object v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$63;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$63;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 524
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->h()V

    .line 527
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v3, :cond_2e

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v2, v3, :cond_2f

    .line 528
    :cond_2e
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$22;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-string/jumbo v4, "TOKEN_MESSAGE_AUTO_UPDATE_DELAY_CHECK"

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v12, 0x1d4c0

    add-long/2addr v6, v12

    .line 528
    invoke-virtual {v2, v3, v4, v6, v7}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 538
    :cond_2f
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v2

    invoke-virtual {v2}, Lccq;->c()V

    .line 539
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->p()V

    .line 541
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aR:Lcmt$a;

    invoke-virtual {v2, v3}, Lcmt;->a(Lcmt$a;)V

    .line 22681
    const-string/jumbo v2, "pref_key_official_contacts_preload_ver"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_30

    .line 22682
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aC:[Ljava/lang/Long;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$c;-><init>(B)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 546
    :cond_30
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$33;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->U()V

    .line 558
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->f()V

    .line 560
    invoke-static {}, Lela;->b()V

    .line 562
    invoke-static {}, Lejn;->a()V

    .line 563
    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    .line 23015
    const-string/jumbo v2, "HotPatch"

    const-string/jumbo v3, "AndFixTest"

    const-string/jumbo v4, "testAndFix"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23016
    invoke-static {}, Lejn;->c()V

    .line 23024
    if-eqz p0, :cond_2

    .line 23027
    invoke-static/range {p0 .. p0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23028
    const-string/jumbo v9, "xpn"

    .line 23029
    const-string/jumbo v12, "HmsSupport"

    .line 23030
    const-string/jumbo v13, "hms_brand"

    .line 23031
    const-string/jumbo v14, "hms_version"

    .line 23032
    const-string/jumbo v15, "hms_code"

    .line 23033
    const-string/jumbo v16, "hms_support"

    .line 23035
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 23037
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    .line 23038
    invoke-virtual {v5, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 23039
    invoke-virtual {v5, v14}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 23040
    invoke-virtual {v5, v15}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 23043
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v6

    .line 23044
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 23046
    const-string/jumbo v3, "Thread"

    const-string/jumbo v4, "UTime"

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 23049
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 23050
    const/4 v4, 0x0

    .line 23051
    const/4 v3, 0x0

    .line 23054
    :try_start_1
    const-string/jumbo v6, "com.huawei.hwid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 23055
    if-eqz v5, :cond_31

    .line 23056
    iget v4, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 23057
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23058
    const-string/jumbo v5, "general"

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v18, "hms support verName:"

    aput-object v18, v7, v17

    const/16 v17, 0x1

    aput-object v3, v7, v17

    const/16 v17, 0x2

    const-string/jumbo v18, " verCode:"

    aput-object v18, v7, v17

    const/16 v17, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 23068
    :cond_31
    :goto_10
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 23069
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v13, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 23070
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    const-string/jumbo v3, "unknow"

    :cond_32
    invoke-virtual {v6, v14, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 23071
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v15, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 23072
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 23074
    const v5, 0x13a55ed

    if-lt v4, v5, :cond_39

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_11
    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 23076
    invoke-interface {v2, v9, v12, v6, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_2

    .line 14651
    .end local v8    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->am:Landroid/widget/ImageView;

    const v4, 0x7f0202bb

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 17251
    :cond_34
    invoke-virtual {v2}, Leii;->c()V

    goto/16 :goto_b

    .line 489
    :cond_35
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Z)V

    goto/16 :goto_c

    .line 492
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aA:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Z)V

    goto/16 :goto_c

    .line 17841
    :cond_37
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$26;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Ljava/lang/String;)V

    const-class v6, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v2, v5, v6, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->b(Ljava/lang/String;Lcma;)V

    goto/16 :goto_d

    .line 18848
    :catch_0
    move-exception v2

    .line 18849
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 22266
    .restart local v8    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :cond_38
    const-string/jumbo v3, "hot"

    goto/16 :goto_f

    .line 23062
    :catch_1
    move-exception v5

    const-string/jumbo v5, "general"

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v18, "hms NameNotFoundException verName:"

    aput-object v18, v7, v17

    const/16 v17, 0x1

    aput-object v3, v7, v17

    const/16 v17, 0x2

    const-string/jumbo v18, " verCode:"

    aput-object v18, v7, v17

    const/16 v17, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 23064
    :catch_2
    move-exception v5

    const-string/jumbo v5, "general"

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string/jumbo v18, "hms exception verName:"

    aput-object v18, v7, v17

    const/16 v17, 0x1

    aput-object v3, v7, v17

    const/16 v17, 0x2

    const-string/jumbo v18, " verCode:"

    aput-object v18, v7, v17

    const/16 v17, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 23074
    :cond_39
    const-wide/16 v4, 0x0

    goto/16 :goto_11
.end method

.method protected onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3885
    .line 30664
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aE:Lcmq$a;

    if-eqz v2, :cond_0

    .line 30665
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aE:Lcmq$a;

    invoke-virtual {v2, v3}, Lcmq;->b(Lcmq$a;)V

    .line 30953
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N:Lelp$a;

    if-eqz v2, :cond_1

    .line 30954
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N:Lelp$a;

    invoke-virtual {v2, v3}, Lelp;->b(Lelp$a;)V

    .line 30955
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N:Lelp$a;

    .line 30958
    :cond_1
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v2

    .line 31176
    iget-object v3, v2, Lelp;->b:Lejy;

    invoke-virtual {v2, v3}, Lelp;->a(Lejy;)V

    .line 31177
    iget-object v2, v2, Lelp;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3887
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 3888
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3889
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p:Landroid/content/BroadcastReceiver;

    .line 3892
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aJ:Lcjo$a;

    if-eqz v2, :cond_3

    .line 3893
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aJ:Lcjo$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 3894
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aJ:Lcjo$a;

    .line 3896
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3899
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 3900
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3903
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_5

    .line 3904
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3907
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aI:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_6

    .line 3908
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aI:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3911
    :cond_6
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aR:Lcmt$a;

    invoke-virtual {v2, v3}, Lcmt;->b(Lcmt$a;)V

    .line 31638
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aY:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_7

    .line 31639
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aY:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 31640
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aY:Landroid/content/BroadcastReceiver;

    .line 3925
    :cond_7
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aT:Lckm$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Lckm$a;)V

    .line 3926
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aU:Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 3927
    const-class v2, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/UserService;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aH:Lcom/alibaba/wukong/im/UserListener;

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/UserService;->removeUserListener(Lcom/alibaba/wukong/im/UserListener;)V

    .line 3928
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aS:Landroid/database/ContentObserver;

    if-eqz v2, :cond_8

    .line 3930
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aS:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3934
    :goto_0
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aS:Landroid/database/ContentObserver;

    .line 32590
    :cond_8
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aQ:Lcmt$a;

    invoke-virtual {v2, v3}, Lcmt;->b(Lcmt$a;)V

    .line 32591
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h()V

    .line 3939
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aA:Ljava/lang/Runnable;

    if-eqz v2, :cond_9

    .line 3940
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aA:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3942
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aB:Ljava/lang/Runnable;

    if-eqz v2, :cond_a

    .line 3943
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aB:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3946
    :cond_a
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa:Landroid/os/Handler;

    .line 3948
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->y:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    if-eqz v2, :cond_b

    .line 3949
    invoke-static {}, Lelc;->a()Lelc;

    move-result-object v2

    invoke-virtual {v2}, Lelc;->b()V

    .line 3950
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->y:Lcom/alibaba/android/rimet/biz/update/DownloadManager;

    .line 3953
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    if-eqz v2, :cond_c

    .line 3954
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->z:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/support/v4/app/Fragment;Lcrb;)V

    .line 3957
    :cond_c
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->D:Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    if-eqz v2, :cond_d

    .line 3958
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->D:Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/AbsHomeContactFragment;->c()V

    .line 3961
    :cond_d
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_e

    .line 3962
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->G:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 33454
    iput-object v4, v2, Lcom/alibaba/android/oa/fragment/OAFragment;->e:Lcrb;

    .line 33455
    iget-object v3, v2, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    if-eqz v3, :cond_e

    .line 33456
    iget-object v2, v2, Lcom/alibaba/android/oa/fragment/OAFragment;->b:Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(Lcrb;)V

    .line 3965
    :cond_e
    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Leek;->a(Z)V

    .line 3966
    invoke-static {}, Leej;->e()Leei;

    move-result-object v2

    invoke-interface {v2}, Leei;->d()V

    .line 3967
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->d()V

    .line 3969
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    if-eqz v2, :cond_f

    .line 3970
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    .line 34149
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcmt;->b(Lcmt$a;)V

    .line 3972
    :cond_f
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac:Lejp;

    if-eqz v2, :cond_11

    .line 3973
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ac:Lejp;

    .line 34243
    iget-object v3, v2, Lejp;->b:Landroid/content/Context;

    if-eqz v3, :cond_11

    .line 34246
    iput-object v4, v2, Lejp;->a:Landroid/app/Activity;

    .line 34247
    iput-object v4, v2, Lejp;->g:Ljava/util/List;

    .line 34248
    iget-object v3, v2, Lejp;->c:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_10

    .line 34249
    iget-object v3, v2, Lejp;->b:Landroid/content/Context;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v2, v2, Lejp;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 34251
    :cond_10
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->setCheckInListener(Lgvg;)V

    .line 3976
    :cond_11
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ah:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    .line 3977
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->af:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;

    .line 3981
    const-string/jumbo v2, "LIFECYCLE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 3982
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aX:Lcom/alibaba/doraemon/lifecycle/APPStateListener;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 3984
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3985
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3986
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3987
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3988
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3989
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3990
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->O:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3991
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v2

    sget-object v3, Lble;->ad:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 3993
    invoke-static {}, Leju;->a()Leju;

    move-result-object v2

    .line 35210
    iput-object v4, v2, Leju;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 35211
    iput-object v4, v2, Leju;->b:Landroid/widget/ListPopupWindow;

    .line 3997
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    if-eqz v2, :cond_12

    .line 3998
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 3999
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$b;

    .line 4000
    iput-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 4008
    :cond_12
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 4009
    return-void

    .line 3931
    .end local v1    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    :catch_0
    move-exception v0

    .line 3932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3029
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDetachedFromWindow()V

    .line 3030
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aD:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$a;

    .line 28016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 3033
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1779
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1780
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Landroid/content/Intent;)V

    .line 1781
    return-void
.end method

.method protected onPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1569
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onPause()V

    .line 1571
    iput-boolean v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aL:Z

    .line 1573
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Z)V

    .line 1575
    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 1576
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I:Landroid/util/SparseArray;

    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 1578
    .local v0, "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    if-eqz v0, :cond_0

    .line 1579
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O:[Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1585
    .end local v0    # "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 1537
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onResume()V

    .line 1539
    iput-boolean v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aL:Z

    .line 23657
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23658
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aF:Ljava/lang/String;

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 23659
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aF:Ljava/lang/String;

    .line 1542
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aK:Z

    if-eqz v1, :cond_2

    .line 1543
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aK:Z

    .line 1544
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Leim;->b(J)V

    .line 1549
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Z)V

    .line 1551
    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 1552
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 1553
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I:Landroid/util/SparseArray;

    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 1554
    .local v0, "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    if-eqz v0, :cond_1

    .line 1555
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O:[Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1562
    .end local v0    # "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v1

    .line 24175
    iput-boolean v4, v1, Lekg;->c:Z

    .line 1563
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->b()V

    .line 1564
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ab()V

    .line 1565
    return-void

    .line 1546
    :cond_2
    invoke-static {}, Leim;->a()Leim;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Leim;->b(J)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3762
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1518
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onStart()V

    .line 1519
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Landroid/content/Context;)V

    .line 1520
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2291
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onWindowFocusChanged(Z)V

    .line 2292
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ap:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ap:Z

    .line 2294
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b()V

    .line 2297
    invoke-static {p0}, Lcms;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    aget-object v1, v1, v2

    const-string/jumbo v2, "safe_system_lockscreen_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2301
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$43;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$43;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2312
    iget v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2313
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->k()V

    .line 2317
    :cond_1
    return-void
.end method
