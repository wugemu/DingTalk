.class public Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingSenderCheckInActivity.java"


# instance fields
.field private A:Lbdk;

.field private B:J

.field private C:Z

.field private D:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lbeo;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/Runnable;

.field private F:Landroid/content/BroadcastReceiver;

.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ToggleButton;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private r:Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

.field private s:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

.field private t:Landroid/graphics/Bitmap;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private v:Landroid/widget/ListPopupWindow;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layd$a;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/view/View$OnClickListener;

.field private y:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->w:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->D:Lcma;

    .line 166
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$12;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Lbdk;)Lbdk;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Lbdk;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->A:Lbdk;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 393
    invoke-static {}, Lbju;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->p:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3018
    new-instance v2, Lbgm$1;

    invoke-direct {v2, v0}, Lbgm$1;-><init>(Lcma;)V

    .line 3025
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;->getDeviceInfoByMeetingId(Ljava/lang/Long;Liyv;)V

    .line 425
    invoke-static {}, Lbkk;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    .line 428
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    :cond_2
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v0}, Lbgm;->a(Lcma;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .param p1, "interval"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 671
    if-gez p1, :cond_0

    .line 672
    const/4 p1, 0x0

    .line 674
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->B:J

    .line 675
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 79
    .line 9464
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_2

    .line 9468
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 9469
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    .line 9498
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 9499
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9500
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->w:Ljava/util/List;

    .line 9506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9507
    new-instance v2, Layd$a;

    sget v3, Laxp$i;->dt_meeting_save_qr_code2:I

    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Layd$a;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9500
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9501
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    new-instance v1, Layd;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->w:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Layd;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9471
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$d;->ding_more_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 9472
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 9473
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 9474
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9492
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 9494
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 79
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    .line 4685
    :try_start_0
    const-string/jumbo v0, "https://qr.dingtalk.com/page/dingcheckin?code={0}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    sget v2, Laxp$c;->uidic_global_color_6_6:I

    .line 4688
    invoke-static {p0, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Laxp$c;->uidic_global_color_6_5:I

    .line 4689
    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4685
    invoke-static {v0, v1, v2, v3}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4706
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 5394
    const-string/jumbo v0, "ding_meeting_qrcode_show"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 4708
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4709
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4711
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v5, v0}, Lcms;->a(Landroid/app/Activity;ZF)V

    .line 79
    :cond_0
    return-void

    .line 4691
    :catch_0
    move-exception v0

    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4692
    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 4694
    :try_start_1
    const-string/jumbo v0, "https://qr.dingtalk.com/page/dingcheckin?code={0}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    sget v2, Laxp$c;->uidic_global_color_6_6:I

    .line 4697
    invoke-static {p0, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Laxp$c;->uidic_global_color_6_5:I

    .line 4698
    invoke-static {p0, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4694
    invoke-static {v0, v1, v2, v3}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4699
    :catch_1
    move-exception v0

    .line 4700
    const-string/jumbo v1, "show qr code failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4702
    :catch_2
    move-exception v0

    .line 4703
    const-string/jumbo v1, "show qr code failed"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->C:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->n:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 666
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->f:Landroid/widget/TextView;

    .line 3716
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_0

    .line 3717
    const-string/jumbo v0, ""

    .line 666
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    return-void

    .line 3719
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->M()I

    move-result v0

    .line 3720
    if-lez v0, :cond_1

    sget v2, Laxp$i;->dt_meeting_check_in_num_AT:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3721
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v0, Laxp$i;->dt_meeting_check_in_no_one:I

    .line 3722
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    .line 6456
    const-string/jumbo v0, "https://attend.dingtalk.com/atm/manage.html?corpId={0}&meetingId={1}#/signInForMeetings"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->p:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6457
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6458
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6460
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->p:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    .line 14735
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lcma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->D:Lcma;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    .line 5748
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 5751
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 5752
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$10;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    const-class v4, Lcma;

    invoke-static {v0, v4, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5922
    iget-object v4, v2, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$99;

    invoke-direct {v5, v2, v3, v1, v0}, Lbbp$99;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcma;)V

    invoke-virtual {v4, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lbdk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->A:Lbdk;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    .line 6561
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6562
    :cond_0
    :goto_0
    return-void

    .line 6564
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6567
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdu;

    .line 6568
    if-eqz v0, :cond_2

    .line 6571
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6572
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const/4 v5, 0x0

    iget-object v0, v0, Lbdu;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6575
    :cond_3
    sget v0, Laxp$i;->dt_meeting_device_multi_org_tips1:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 6576
    new-instance v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 7205
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 6578
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 6579
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/util/List;)V

    .line 7250
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->c:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    .line 6589
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    .line 7770
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 7773
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 7774
    new-instance v1, Lbfs;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 8109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 7774
    invoke-direct {v1, v2, v3, v0}, Lbfs;-><init>(JZ)V

    .line 7775
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$11;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8982
    iget-object v3, v2, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$104;

    invoke-direct {v4, v2, v1, v0}, Lbbp$104;-><init>(Lbbp;Lbfs;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->g:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    .line 9611
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 9614
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->y:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A(Lckm$a;)V

    .line 79
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 9625
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->h:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9626
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_0

    .line 9627
    const-string/jumbo v0, "[DingSenderCheckInActivity]refreshView failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9628
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    .line 9648
    :goto_0
    return-void

    .line 9631
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9633
    const-string/jumbo v0, "[DingSenderCheckInActivity]refreshView failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9634
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    goto :goto_0

    .line 9637
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 9824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 9637
    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v0, :cond_2

    .line 9638
    const-string/jumbo v0, "[DingSenderCheckInActivity]refreshView failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "eventsWrapperModel is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9639
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    goto :goto_0

    .line 9642
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 9642
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->r:Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    .line 9643
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->r:Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;->eventModels:Ljava/util/List;

    .line 9644
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 9646
    :cond_3
    const-string/jumbo v0, "[DingSenderCheckInActivity]refreshView failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "mainEvent is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9647
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    goto :goto_0

    .line 9650
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->s:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    .line 11662
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_meeting_start_time_AT:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->s:Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11656
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b()V

    .line 11657
    invoke-direct {p0, v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(I)V

    .line 11680
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->g:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 12193
    if-nez v0, :cond_5

    move v0, v1

    .line 11680
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 12824
    :cond_5
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 12197
    instance-of v3, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v3, :cond_6

    move v0, v1

    .line 12198
    goto :goto_1

    .line 12200
    :cond_6
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v0

    .line 13204
    if-nez v0, :cond_7

    move v0, v1

    .line 13205
    goto :goto_1

    .line 13207
    :cond_7
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    if-nez v3, :cond_8

    move v0, v1

    .line 13208
    goto :goto_1

    .line 13210
    :cond_8
    iget-object v3, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "checkInEnable"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    move v0, v1

    .line 13211
    goto :goto_1

    .line 13213
    :cond_9
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->extension:Ljava/util/Map;

    const-string/jumbo v1, "checkInEnable"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1
.end method

.method static synthetic o(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    .line 13593
    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->C:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->z:Ljava/util/List;

    .line 13594
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->A:Lbdk;

    if-eqz v0, :cond_2

    .line 13595
    :cond_1
    invoke-static {}, Lbju;->s()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13597
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13598
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->k:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13604
    :goto_0
    return-void

    .line 13601
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13603
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->A:Lbdk;

    if-nez v0, :cond_4

    .line 13604
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->k:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_meeting_not_associated_smart_device:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 13606
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->A:Lbdk;

    iget-object v1, v1, Lbdk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    const/16 v2, 0x8

    .line 79
    .line 14512
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 14513
    sget v0, Laxp$i;->pic_save_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 14514
    :goto_0
    return-void

    .line 14726
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_1

    .line 14727
    const/4 v0, 0x0

    sget v1, Laxp$i;->saving_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 14520
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14521
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14523
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 14731
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_1
.end method

.method static synthetic r(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->v:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    sget v0, Laxp$g;->ding_activity_sender_check_in:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->setContentView(I)V

    .line 1230
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->o:Ljava/lang/String;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->o:Ljava/lang/String;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1231
    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->p:J

    .line 2235
    sget v0, Laxp$f;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2236
    sget v0, Laxp$f;->ll_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b:Landroid/view/View;

    .line 2238
    sget v0, Laxp$f;->tv_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c:Landroid/widget/TextView;

    .line 2239
    sget v0, Laxp$f;->pb_load_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->d:Landroid/widget/ProgressBar;

    .line 2240
    sget v0, Laxp$f;->iv_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->e:Landroid/widget/ImageView;

    .line 2241
    sget v0, Laxp$f;->tv_statistic_fmt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->f:Landroid/widget/TextView;

    .line 2242
    sget v0, Laxp$f;->toggle_not_receiver_check_in:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->g:Landroid/widget/ToggleButton;

    .line 2244
    sget v0, Laxp$f;->rl_pb_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->h:Landroid/widget/RelativeLayout;

    .line 2246
    sget v0, Laxp$f;->rl_associated_smart_device:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->i:Landroid/view/View;

    .line 2247
    sget v0, Laxp$f;->ll_smart_device_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->j:Landroid/view/View;

    .line 2248
    sget v0, Laxp$f;->tv_smart_device_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->k:Landroid/widget/TextView;

    .line 2250
    sget v0, Laxp$f;->rl_not_receiver_check_in:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->l:Landroid/view/View;

    .line 2252
    sget v0, Laxp$f;->rl_refresh_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->m:Landroid/view/View;

    .line 2253
    sget v0, Laxp$f;->toggle_refresh_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->n:Landroid/widget/ToggleButton;

    .line 2257
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$13;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->x:Landroid/view/View$OnClickListener;

    .line 2263
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$14;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->y:Lckm$a;

    .line 2269
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->g:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$15;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2276
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$16;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2294
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->n:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$17;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2304
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$18;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2311
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$19;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2320
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->F:Landroid/content/BroadcastReceiver;

    .line 2349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2350
    const-string/jumbo v1, "com.workapp.ding.meeting.extension.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2351
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2357
    const-string/jumbo v0, "[DingSenderCheckInActivity]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    :goto_0
    return-void

    .line 2360
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2384
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    .line 2386
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 207
    .line 2618
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->q:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->y:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B(Lckm$a;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t:Landroid/graphics/Bitmap;

    .line 216
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 218
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 219
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 191
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 193
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRestart()V

    .line 226
    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->B:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 198
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 202
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 203
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->E:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->B:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
