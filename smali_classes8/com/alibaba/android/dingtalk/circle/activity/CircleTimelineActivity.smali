.class public Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lbnv$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;
    }
.end annotation


# static fields
.field public static final a:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

.field private D:Z

.field private E:Z

.field private F:Lbqd;

.field private G:Lbnn;

.field private H:Landroid/content/BroadcastReceiver;

.field protected b:Lecw;

.field protected c:J

.field protected d:Lbpz;

.field private e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

.field private f:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lecw;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:Landroid/view/View;

.field private p:Lbnq;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

.field private v:Z

.field private w:Lbns;

.field private x:Lboy;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x43520000    # 210.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 2018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->y:Ljava/util/Map;

    .line 776
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$9;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->H:Landroid/content/BroadcastReceiver;

    .line 915
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->t:I

    return p1
.end method

.method private a(J)Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;
    .locals 7
    .param p1, "postId"    # J

    .prologue
    const/4 v3, 0x0

    .line 901
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-static {v4}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-object v3

    .line 902
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 903
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 904
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 905
    .local v2, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v2, :cond_2

    .line 908
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    .line 909
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;-><init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;I)V

    goto :goto_0

    .line 903
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method private a(F)V
    .locals 3
    .param p1, "alpha"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 360
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 361
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->n:Z

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->n:Z

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->ui_common_white_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    .line 365
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->ui_common_white_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->n:Z

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->n:Z

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->ui_common_theme_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    .line 375
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbpu$a;->ui_common_theme_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 378
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 105
    .line 12445
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12448
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12449
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lbnn;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "videoPoster"    # Lbnn;

    .prologue
    .line 421
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 424
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget v3, Lbpu$f;->dt_circle_text:I

    .line 425
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lbpu$f;->and_chat_app_title_video:I

    .line 426
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lbpu$f;->dt_circle_take_photo_or_select_from_photos:I

    .line 427
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$16;-><init>(Landroid/app/Activity;Lbnn;)V

    .line 424
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # F

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Landroid/content/Intent;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 105
    .line 14826
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 14830
    const-string/jumbo v0, "extra_comments_added"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 14831
    const-string/jumbo v1, "extra_comments_deleted"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 15019
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14835
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14836
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 14837
    if-eqz v0, :cond_0

    .line 14838
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    .line 14840
    invoke-direct {p0, v6, v7}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(J)Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;

    move-result-object v5

    .line 14841
    if-eqz v5, :cond_0

    .line 14846
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    iget v6, v5, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;->b:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 14847
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 14848
    if-nez v6, :cond_1

    .line 16019
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14850
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14851
    iput-object v6, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 14856
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14853
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14860
    :cond_2
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14861
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 14862
    if-eqz v0, :cond_3

    .line 14864
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    .line 14866
    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(J)Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;

    move-result-object v4

    .line 14867
    if-eqz v4, :cond_3

    .line 14872
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    iget v5, v4, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;->b:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 14873
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 14874
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 14875
    :cond_4
    const-string/jumbo v0, "has not contained commentObject"

    .line 16076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_2

    .line 14879
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14881
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14885
    :cond_6
    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 14886
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 14887
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 14888
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;

    .line 14889
    if-eqz v0, :cond_7

    .line 14892
    iget v4, v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;->b:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v5}, Lbnq;->e()I

    move-result v5

    add-int/2addr v4, v5

    .line 14893
    if-lt v4, v1, :cond_7

    if-gt v4, v2, :cond_7

    .line 14894
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    iget v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;->b:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v5}, Lbnq;->e()I

    move-result v5

    add-int/2addr v0, v5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lbnq;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_3

    .line 105
    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 105
    .line 12926
    if-eqz p1, :cond_4

    .line 12929
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    if-nez v3, :cond_0

    .line 12930
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    .line 12933
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isMockPost()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    if-eqz v3, :cond_1

    .line 12934
    const-string/jumbo v3, "circle_last_postId"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v3, v4, v5}, Lcpk;->b(Ljava/lang/String;J)V

    .line 12937
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isFilePost()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isMockPost()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 12938
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->A:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isFilePost()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12939
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->r:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 12940
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 12941
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    if-eqz v0, :cond_5

    .line 12942
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v0}, Lbnq;->e()I

    move-result v0

    .line 12943
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v1, v0}, Lbnq;->notifyItemInserted(I)V

    .line 12944
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lbnq;->notifyItemRangeChanged(II)V

    .line 12980
    :cond_4
    :goto_0
    return-void

    .line 12946
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v0}, Lbnq;->notifyDataSetChanged()V

    goto :goto_0

    .line 12950
    :cond_6
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->r:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    goto :goto_0

    .line 12954
    :cond_7
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    if-eqz v3, :cond_b

    .line 12955
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    .line 12965
    :cond_8
    :goto_1
    if-eq v1, v0, :cond_9

    .line 12966
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 12967
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isMockPost()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12968
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12972
    :cond_9
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 12973
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v1}, Lbnq;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 12974
    if-eqz v0, :cond_a

    instance-of v1, v0, Lbnv;

    if-eqz v1, :cond_a

    .line 12975
    check-cast v0, Lbnv;

    .line 13217
    if-nez p1, :cond_d

    .line 13218
    const-string/jumbo v0, "post = null"

    .line 14076
    invoke-static {v2, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 12979
    :cond_a
    :goto_2
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    if-eqz v0, :cond_e

    .line 12980
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v1}, Lbnq;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lbnq;->notifyItemChanged(I)V

    goto :goto_0

    .line 12960
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_8

    :cond_c
    move v1, v0

    goto :goto_1

    .line 13221
    :cond_d
    iput-object p1, v0, Lbnv;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    goto :goto_2

    .line 12983
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v1}, Lbnq;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lbnq;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 105
    .line 12756
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12759
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->o:Landroid/view/View;

    if-nez v0, :cond_0

    .line 12760
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbpu$e;->item_circle_notice_layout:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->o:Landroid/view/View;

    .line 12762
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lbnq;->a(Landroid/view/View;Ljava/util/List;)V

    .line 105
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 989
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1003
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-virtual {v1, v2}, Lbnq;->a(Ljava/util/List;)V

    .line 1004
    :cond_1
    return-void

    .line 991
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 993
    .local v0, "firstPost":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isTakePhotoPost()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1001
    :cond_3
    iput-boolean v3, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->hideTime:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 702
    const-string/jumbo v0, "pref_circle_cover_mediaId"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e()V

    .line 704
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbnq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 4
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 105
    .line 12453
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12457
    const-string/jumbo v1, "allow_check_origin_origin_picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12458
    const-string/jumbo v1, "is_start_for_result"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12459
    const-string/jumbo v1, "album_choose_num"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12460
    const-string/jumbo v1, "album_show_video"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12461
    const-string/jumbo v1, "video_compress"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12462
    const-string/jumbo v1, "video_compress_worker"

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12463
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 105
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 105
    .line 16806
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 16809
    if-eqz p1, :cond_0

    .line 16810
    const/4 v2, -0x1

    .line 16811
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 16812
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getPostId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getPostId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 16818
    :goto_1
    if-lez v1, :cond_0

    .line 16819
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v2}, Lbnq;->e()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 105
    :cond_0
    return-void

    .line 16811
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->r:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->q:Ljava/util/List;

    return-object p1
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->A:Z

    .line 386
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->z:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-static {v1, v1}, Lbnm;->a(II)V

    .line 388
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$15;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 394
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d:Lbpz;

    .line 8100
    iget-object v1, v0, Lbpz;->b:Lbpw;

    invoke-virtual {v1}, Lbpw;->c()V

    .line 8101
    invoke-virtual {v0}, Lbpz;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private d()Lbnn;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->G:Lbnn;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lbnn;

    invoke-direct {v0, p0}, Lbnn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->G:Lbnn;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->G:Lbnn;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    return-object v0
.end method

.method private e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 669
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    if-nez v5, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->D:Z

    if-eqz v5, :cond_2

    .line 674
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->E:Z

    goto :goto_0

    .line 678
    :cond_2
    const-string/jumbo v5, "pref_circle_cover_mediaId"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "mediaId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbpu$a;->circle_cover_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 681
    .local v0, "color":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 684
    .end local v0    # "color":I
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 687
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;->setTag(Ljava/lang/Object;)V

    .line 689
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "_790x10000.jpg"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 691
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 692
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v4, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method private f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbqd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->F:Lbqd;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lboy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->t:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->z:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    const/4 v1, 0x0

    .line 105
    .line 17136
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->A:Z

    if-eqz v0, :cond_0

    .line 17138
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c()V

    .line 17140
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->z:Z

    .line 17141
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->A:Z

    .line 105
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->A:Z

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->r:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->v:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    .line 17145
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-static {v0}, Lbpa;->a(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->k:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/support/v7/widget/LinearLayoutManager;J)Lbnq;
    .locals 2
    .param p1, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p2, "uid"    # J

    .prologue
    .line 636
    new-instance v0, Lbnq;

    invoke-direct {v0, p1, p2, p3}, Lbnq;-><init>(Landroid/support/v7/widget/LinearLayoutManager;J)V

    return-object v0
.end method

.method protected a()Lecw;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v1, Lbpu$f;->icon_camera_fill:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lecw;

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .param p3, "listener"    # Lbpv;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1169
    new-instance v1, Lbpz;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p1, p2, p3, v0}, Lbpz;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;Z)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d:Lbpz;

    .line 1170
    return-void

    .line 1169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V
    .locals 1
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "comment"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .param p3, "position"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    invoke-virtual {v0, p1, p2, p3}, Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V

    .line 717
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 645
    sget v0, Lbpu$e;->item_circle_empty_posts:I

    return v0
.end method

.method public getRootContentViewLayoutRes()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x125

    const/4 v1, -0x1

    .line 1213
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1214
    if-ne p2, v1, :cond_0

    .line 1215
    const/16 v0, 0x123

    if-ne p1, v0, :cond_2

    .line 11229
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 11230
    if-eqz v0, :cond_0

    .line 11233
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 11234
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12071
    :cond_0
    :goto_0
    return-void

    .line 11237
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11238
    const-string/jumbo v2, "circle_pick_photo_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11239
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1217
    :cond_2
    const/16 v0, 0x124

    if-ne p1, v0, :cond_3

    .line 1218
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d()Lbnn;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;Lbnn;)V

    goto :goto_0

    .line 1219
    :cond_3
    const/16 v0, 0x200

    if-ne p1, v0, :cond_4

    .line 11707
    if-eqz p3, :cond_0

    .line 11710
    const-string/jumbo v0, "media_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11711
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :cond_4
    if-ne p1, v2, :cond_0

    .line 1222
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d()Lbnn;

    move-result-object v0

    .line 12070
    if-eqz p3, :cond_0

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 12079
    const-string/jumbo v1, "process-video"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lbnn$1;

    invoke-direct {v2, v0, p3}, Lbnn$1;-><init>(Lbnn;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    if-nez v0, :cond_1

    .line 511
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    invoke-virtual {v0}, Lboy;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->B:Z

    .line 177
    sget v0, Lbpu$e;->activity_circle_timeline:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->setContentView(I)V

    .line 2284
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2285
    if-eqz v0, :cond_0

    .line 2288
    const-string/jumbo v1, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c:J

    .line 2302
    :cond_0
    sget v0, Lbpu$d;->circle_timeline_toolbar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    .line 2303
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->createNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lecw;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l:Lecw;

    .line 2304
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a()Lecw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b:Lecw;

    .line 2305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->l:Lecw;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2306
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 2307
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2308
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 2341
    sget v0, Lbpu$d;->circle_timeline_content_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2342
    if-eqz v0, :cond_1

    .line 2343
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$14;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2312
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getStatusBarHeight()I

    move-result v1

    .line 2313
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2314
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2315
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2316
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setPadding(IIII)V

    .line 2318
    :cond_2
    sget v0, Lbpu$f;->dt_circle_title_posts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->setTitle(I)V

    .line 2319
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->m:Landroid/widget/TextView;

    .line 2320
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(F)V

    .line 2323
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$12;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 2330
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$13;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2467
    sget v0, Lbpu$d;->circle_timeline_refresh_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lin/srain/cube/views/ptr/PtrFrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 2468
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    const v1, 0x3fd9999a    # 1.7f

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setResistance(F)V

    .line 2469
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setRatioOfHeaderHeightToRefresh(F)V

    .line 2470
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setLoadingMinTime(I)V

    .line 2471
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v8}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToClose(I)V

    .line 2472
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v8}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 2473
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setKeepHeaderWhenRefresh(Z)V

    .line 2474
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 2475
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$17;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lkey;)V

    .line 2502
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$18;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setPtrHandler(Lkex;)V

    .line 2521
    sget v0, Lbpu$d;->circle_timeline_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 2524
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 2526
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    invoke-direct {v0, p0, v6, v5}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    .line 2528
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/support/v7/widget/LinearLayoutManager;J)Lbnq;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    .line 2530
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    .line 3075
    iput-object v1, v0, Lbnq;->e:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    .line 2561
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2562
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->u:Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2564
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    .line 3079
    iput-object v1, v0, Lbnq;->g:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    .line 2576
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    .line 3111
    iget-object v0, v0, Lbnq;->d:Lboh;

    invoke-virtual {v0, p0}, Lboh;->a(Lbnv$d;)V

    .line 2577
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2591
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 3640
    sget v0, Lbpu$d;->circle_header_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    .line 3641
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e:Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;

    sget v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/CircleScaleHeader;->setHeaderHeight(I)V

    .line 3649
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbpu$e;->item_circle_footer_layout:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->j:Landroid/view/View;

    .line 3651
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->k:Landroid/view/View;

    .line 3652
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a:I

    sub-int/2addr v0, v1

    .line 3653
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->k:Landroid/view/View;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v7, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3655
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbpu$e;->item_circle_header_layout:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3656
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i:Landroid/view/View;

    .line 3659
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i:Landroid/view/View;

    sget v2, Lbpu$d;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->setCircleLoadingCallback(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$a;)V

    .line 3665
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    invoke-virtual {v0, v1}, Lbnq;->a(Landroid/view/View;)V

    .line 2298
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e()V

    .line 3720
    new-instance v0, Lbnt;

    invoke-direct {v0}, Lbnt;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->w:Lbns;

    .line 3723
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->w:Lbns;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-interface {v0, v1}, Lbns;->a(Lbns$a;)V

    .line 3730
    sget v0, Lbpu$d;->circle_timeline_input_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 3731
    new-instance v0, Lboy;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$7;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v3, Lbpu$d;->circle_timeline_content_layout:I

    .line 3746
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lboy;-><init>(Landroid/app/Activity;Lboy$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    .line 3747
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$8;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    .line 4176
    iput-object v1, v0, Lboy;->c:Lcov;

    .line 4767
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4768
    const-string/jumbo v1, "circle_on_create_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4769
    const-string/jumbo v1, "circle_on_uploading_photos"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4770
    const-string/jumbo v1, "circle_on_read_notice"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4771
    const-string/jumbo v1, "action_comments_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4772
    const-string/jumbo v1, "circle_action_long_text_expand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4773
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5008
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    const-class v2, Lbpv;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpv;

    .line 5127
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->c:J

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->firstParam(J)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    move-result-object v1

    invoke-virtual {p0, p0, v1, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;)V

    .line 5128
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d:Lbpz;

    invoke-virtual {v0}, Lbpz;->a()V

    .line 184
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5276
    const-string/jumbo v0, "pref_show_circle_guide"

    invoke-static {v0, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5278
    const/16 v1, 0x124

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5279
    const-string/jumbo v0, "pref_show_circle_guide"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 6199
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;-><init>(Lbqe;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->F:Lbqd;

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->updateSystemUiVisibility()V

    .line 193
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->C:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->C:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    .line 7046
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->a(Z)V

    .line 196
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 400
    const/4 v1, 0x0

    sget v2, Lbpu$f;->dt_circle_action_post:I

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->b:Lecw;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 401
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 402
    return v3
.end method

.method protected onDestroy()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1174
    .line 8191
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8194
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v2

    .line 9019
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8196
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8197
    new-instance v5, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8199
    :cond_0
    invoke-virtual {v2, v3}, Lbpc;->a(Ljava/util/Collection;)V

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->p:Lbnq;

    .line 9100
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Lbnq;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 9102
    iget-object v0, v0, Lbnq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnv;

    .line 9268
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v0, v0, Lbnv;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 10203
    :cond_2
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 10207
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->w:Lbns;

    invoke-interface {v0}, Lbns;->a()V

    .line 10208
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    invoke-virtual {v0}, Lboy;->a()V

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i:Landroid/view/View;

    sget v1, Lbpu$d;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a()V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->C:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    if-eqz v0, :cond_4

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->C:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    .line 11081
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 11082
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11083
    iput-object v6, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    .line 1182
    :cond_3
    iput-object v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->C:Lcom/alibaba/android/dingtalk/circle/activity/upload/UploadPostRecorder;

    .line 1185
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->F:Lbqd;

    invoke-interface {v0}, Lbqd;->c()V

    .line 1187
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 1188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d()Lbnn;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;Lbnn;)V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->D:Z

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    invoke-virtual {v0}, Lboy;->d()V

    .line 251
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 268
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->D:Z

    .line 269
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->E:Z

    if-eqz v0, :cond_0

    .line 270
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->E:Z

    .line 271
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->e()V

    .line 273
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onWindowFocusChanged(Z)V

    .line 256
    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    .line 7106
    iget-boolean v0, v0, Lboy;->n:Z

    .line 258
    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    invoke-virtual {v0}, Lboy;->c()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->x:Lboy;

    .line 7110
    const/4 v1, 0x0

    iput-boolean v1, v0, Lboy;->n:Z

    .line 264
    :cond_1
    return-void
.end method
