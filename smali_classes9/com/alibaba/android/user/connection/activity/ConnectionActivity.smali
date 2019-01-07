.class public Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ConnectionActivity.java"

# interfaces
.implements Lfcm$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private A:Ljava/util/Map;
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

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

.field private F:Z

.field private G:Z

.field private H:Lfez;

.field private I:Lfcd;

.field private J:Landroid/content/BroadcastReceiver;

.field protected b:Lecw;

.field protected c:J

.field protected d:Lfex;

.field private e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

.field private f:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Lecw;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Landroid/support/v7/widget/CardView;

.field private q:Landroid/view/View;

.field private r:Lfce;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

.field private x:Z

.field private y:Lfci;

.field private z:Lfdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 2018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->A:Ljava/util/Map;

    .line 807
    new-instance v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$9;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->J:Landroid/content/BroadcastReceiver;

    .line 954
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->v:I

    return p1
.end method

.method private a(J)Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;
    .locals 7
    .param p1, "postId"    # J

    .prologue
    const/4 v3, 0x0

    .line 938
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-static {v4}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-object v3

    .line 941
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 942
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 943
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 944
    .local v2, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v2, :cond_2

    .line 947
    iget-wide v4, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    .line 948
    new-instance v3, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;-><init>(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;I)V

    goto :goto_0

    .line 942
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method private a(F)V
    .locals 3
    .param p1, "alpha"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 378
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 379
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->o:Z

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->o:Z

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_white_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_white_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->o:Z

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->o:Z

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    .line 393
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b:Lecw;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_theme_icon_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lecw;->a(I)V

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b:Lecw;

    invoke-virtual {v0}, Lecw;->invalidateSelf()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 2
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 110
    .line 11465
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11468
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11469
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lfcd;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "videoPoster"    # Lfcd;

    .prologue
    .line 441
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget v3, Lezg$l;->dt_circle_text:I

    .line 445
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lezg$l;->and_chat_app_title_video:I

    .line 446
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lezg$l;->dt_circle_take_photo_or_select_from_photos:I

    .line 447
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$17;-><init>(Landroid/app/Activity;Lfcd;)V

    .line 444
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # F

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Landroid/content/Intent;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 110
    .line 11859
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 11863
    const-string/jumbo v0, "extra_comments_added"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 11864
    const-string/jumbo v1, "extra_comments_deleted"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 12020
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11868
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11869
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 11870
    if-eqz v0, :cond_0

    .line 11873
    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    .line 11875
    invoke-direct {p0, v6, v7}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(J)Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;

    move-result-object v6

    .line 11876
    if-eqz v6, :cond_0

    .line 11881
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    iget v7, v6, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;->b:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 11882
    iget-object v7, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 11883
    if-nez v7, :cond_1

    .line 13020
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11885
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11886
    iput-object v7, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 11891
    :goto_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11888
    :cond_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11895
    :cond_2
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11896
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 11897
    if-eqz v0, :cond_3

    .line 11901
    iget-wide v6, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    .line 11903
    invoke-direct {p0, v6, v7}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(J)Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;

    move-result-object v5

    .line 11904
    if-eqz v5, :cond_3

    .line 11909
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    iget v6, v5, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;->b:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 11910
    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 11911
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 11912
    :cond_4
    const-string/jumbo v0, "has not contained commentObject"

    .line 13060
    invoke-static {v3, v0}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_2

    .line 11916
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11918
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11922
    :cond_6
    invoke-static {v4}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 11923
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 11924
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    .line 11925
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;

    .line 11926
    if-eqz v0, :cond_7

    .line 11929
    iget v6, v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;->b:I

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v1}, Lfce;->e()I

    move-result v1

    :goto_4
    add-int/2addr v1, v6

    .line 11930
    if-lt v1, v2, :cond_7

    if-gt v1, v5, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v1, :cond_7

    .line 11931
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    iget v0, v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$a;->b:I

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v6}, Lfce;->e()I

    move-result v6

    add-int/2addr v0, v6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lfce;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    move v1, v3

    .line 11929
    goto :goto_4

    .line 110
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    .line 11785
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11788
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->q:Landroid/view/View;

    if-nez v0, :cond_0

    .line 11789
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->item_connection_notice_layout:I

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->q:Landroid/view/View;

    .line 11791
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v0, :cond_1

    .line 11792
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lfce;->a(Landroid/view/View;Ljava/util/List;)V

    .line 110
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 10
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 965
    if-nez p1, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    if-nez v5, :cond_2

    .line 969
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    .line 972
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isMockPost()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    if-eqz v5, :cond_3

    .line 973
    const-string/jumbo v5, "connection_last_postId"

    iget-wide v8, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v5, v8, v9}, Lcpk;->b(Ljava/lang/String;J)V

    .line 976
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isFilePost()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isMockPost()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 977
    :cond_4
    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->C:Z

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isFilePost()Z

    move-result v5

    if-nez v5, :cond_7

    .line 978
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 979
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 980
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v5, :cond_0

    .line 981
    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    if-eqz v5, :cond_6

    .line 982
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v5}, Lfce;->e()I

    move-result v2

    .line 983
    .local v2, "headViewCount":I
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v5, v2}, Lfce;->notifyItemInserted(I)V

    .line 984
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v7}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lfce;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 986
    .end local v2    # "headViewCount":I
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v5}, Lfce;->notifyDataSetChanged()V

    goto :goto_0

    .line 991
    :cond_7
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    goto :goto_0

    .line 994
    :cond_8
    const/4 v4, -0x1

    .line 995
    .local v4, "index":I
    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    if-eqz v5, :cond_c

    .line 996
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 997
    const/4 v4, 0x0

    .line 1006
    :cond_9
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 1007
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1008
    .local v0, "first":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isMockPost()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1009
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1013
    .end local v0    # "first":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    :cond_a
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 1014
    iget-object v7, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v5}, Lfce;->e()I

    move-result v5

    :goto_2
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1015
    .local v3, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_b

    instance-of v5, v3, Lfcm;

    if-eqz v5, :cond_b

    move-object v1, v3

    .line 1016
    check-cast v1, Lfcm;

    .line 6227
    .local v1, "h":Lfcm;
    if-nez p1, :cond_e

    .line 6228
    const-string/jumbo v5, "post = null"

    .line 7060
    invoke-static {v6, v5}, Lffe;->a(ZLjava/lang/String;)V

    .line 1020
    .end local v1    # "h":Lfcm;
    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v5, :cond_0

    .line 1021
    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    if-eqz v5, :cond_f

    .line 1022
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v6}, Lfce;->e()I

    move-result v6

    invoke-virtual {v5, v6}, Lfce;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 1001
    .end local v3    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_c
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_9

    .line 1002
    const/4 v4, 0x1

    goto :goto_1

    :cond_d
    move v5, v6

    .line 1014
    goto :goto_2

    .line 6231
    .restart local v1    # "h":Lfcm;
    .restart local v3    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_e
    iput-object p1, v1, Lfcm;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    goto :goto_3

    .line 1025
    .end local v1    # "h":Lfcm;
    :cond_f
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v6}, Lfce;->e()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lfce;->notifyItemChanged(I)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 729
    const-string/jumbo v0, "pref_circle_cover_mediaId"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f()V

    .line 731
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->B:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfce;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->u:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 4
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 110
    .line 11473
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11477
    const-string/jumbo v1, "allow_check_origin_origin_picture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11478
    const-string/jumbo v1, "is_start_for_result"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11479
    const-string/jumbo v1, "album_choose_num"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11480
    const-string/jumbo v1, "album_show_video"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11481
    const-string/jumbo v1, "video_compress"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11482
    const-string/jumbo v1, "video_compress_worker"

    new-instance v2, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker;

    invoke-direct {v2}, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11483
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    const/4 v2, 0x0

    .line 110
    .line 13839
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 13842
    if-eqz p1, :cond_1

    .line 13843
    const/4 v3, -0x1

    move v1, v2

    .line 13844
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 13845
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->getPostId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->getPostId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 13851
    :goto_1
    if-lez v1, :cond_1

    .line 13852
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v2}, Lfce;->e()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 110
    :cond_1
    return-void

    .line 13844
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1032
    iget-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    if-eqz v1, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1046
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-virtual {v1, v2}, Lfce;->a(Ljava/util/List;)V

    .line 1049
    :cond_1
    return-void

    .line 1034
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1036
    .local v0, "firstPost":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isTakePhotoPost()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1044
    :cond_3
    iput-boolean v3, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->hideTime:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->x:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->C:Z

    .line 404
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->B:Z

    if-eqz v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-static {v1, v1}, Lfcc;->a(II)V

    .line 408
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$16;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 414
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 415
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d:Lfex;

    invoke-virtual {v0}, Lfex;->b()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    return-object v0
.end method

.method private e()Lfcd;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->I:Lfcd;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lfcd;

    invoke-direct {v0, p0}, Lfcd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->I:Lfcd;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->I:Lfcd;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 692
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    if-nez v5, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-boolean v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->F:Z

    if-eqz v5, :cond_2

    .line 697
    iput-boolean v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->G:Z

    goto :goto_0

    .line 701
    :cond_2
    const-string/jumbo v5, "pref_circle_cover_mediaId"

    invoke-static {v5}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "mediaId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 703
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->circle_cover_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 704
    .local v0, "color":I
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    invoke-virtual {v5, v7}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 708
    .end local v0    # "color":I
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    invoke-virtual {v5}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 711
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    invoke-virtual {v5, v3}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->setTag(Ljava/lang/Object;)V

    .line 713
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 714
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

    .line 715
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 716
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v4, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 719
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfez;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->H:Lfez;

    return-object v0
.end method

.method private g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lfdp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->v:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->B:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    const/4 v1, 0x0

    .line 110
    .line 14190
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->C:Z

    if-eqz v0, :cond_0

    .line 14192
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d()V

    .line 14194
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->B:Z

    .line 14195
    iput-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->C:Z

    .line 110
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->C:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->t:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->x:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    .line 14199
    new-instance v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$11;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-static {v0}, Lfds;->a(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->k:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected a()Lecw;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v1, Lezg$l;->icon_online_editing:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lecw;

    return-object v0
.end method

.method protected a(Landroid/support/v7/widget/LinearLayoutManager;J)Lfce;
    .locals 2
    .param p1, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p2, "uid"    # J

    .prologue
    .line 657
    new-instance v0, Lfce;

    invoke-direct {v0, p1, p2, p3}, Lfce;-><init>(Landroid/support/v7/widget/LinearLayoutManager;J)V

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;
    .param p3, "listener"    # Lfet;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1223
    new-instance v1, Lfex;

    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p1, p2, p3, v0}, Lfex;-><init>(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;Z)V

    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d:Lfex;

    .line 1224
    return-void

    .line 1223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V
    .locals 1
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "comment"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .param p3, "position"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    invoke-virtual {v0, p1, p2, p3}, Lfdp;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V

    .line 744
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 666
    sget v0, Lezg$j;->item_connection_empty_posts:I

    return v0
.end method

.method protected c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 313
    new-instance v0, Landroid/support/v7/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 314
    .local v0, "decoration":Landroid/support/v7/widget/DividerItemDecoration;
    sget v1, Lezg$g;->shape_divider:I

    invoke-static {p0, v1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 316
    return-void
.end method

.method public getRootContentViewLayoutRes()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x125

    const/4 v1, -0x1

    .line 1269
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1270
    if-ne p2, v1, :cond_0

    .line 1271
    const/16 v0, 0x123

    if-ne p1, v0, :cond_2

    .line 10285
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 10286
    if-eqz v0, :cond_0

    .line 10289
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 10290
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11074
    :cond_0
    :goto_0
    return-void

    .line 10293
    :cond_1
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/connection_post.html"

    new-instance v3, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$13;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$13;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1273
    :cond_2
    const/16 v0, 0x124

    if-ne p1, v0, :cond_3

    .line 1274
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e()Lfcd;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Landroid/app/Activity;Lfcd;)V

    goto :goto_0

    .line 1275
    :cond_3
    const/16 v0, 0x200

    if-ne p1, v0, :cond_4

    .line 10734
    if-eqz p3, :cond_0

    .line 10737
    const-string/jumbo v0, "media_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10738
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_4
    if-ne p1, v2, :cond_0

    .line 1278
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e()Lfcd;

    move-result-object v0

    .line 11073
    if-eqz p3, :cond_0

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 11082
    const-string/jumbo v1, "process-video"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfcd$1;

    invoke-direct {v2, v0, p3}, Lfcd$1;-><init>(Lfcd;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    if-nez v0, :cond_1

    .line 532
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    invoke-virtual {v0}, Lfdp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->connection_header_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a:I

    .line 177
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->D:Z

    .line 179
    sget v0, Lezg$j;->activity_connection:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->setContentView(I)V

    .line 2289
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2290
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2291
    if-eqz v0, :cond_0

    .line 2292
    const-string/jumbo v1, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c:J

    .line 2294
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "circle_on_create_post"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 2295
    if-eqz v0, :cond_1

    .line 2296
    invoke-virtual {v0, p0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->save2DbAsync(Landroid/app/Activity;)V

    .line 2297
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 2319
    :cond_1
    sget v0, Lezg$h;->circle_timeline_toolbar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    .line 2320
    sget v0, Lezg$h;->card_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->p:Landroid/support/v7/widget/CardView;

    .line 2321
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->createNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lecw;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m:Lecw;

    .line 2322
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a()Lecw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b:Lecw;

    .line 2323
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->m:Lecw;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 2325
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2326
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 2359
    sget v0, Lezg$h;->circle_timeline_content_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2360
    if-eqz v0, :cond_2

    .line 2361
    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$15;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2330
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getStatusBarHeight()I

    move-result v1

    .line 2331
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2332
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2333
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2334
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setPadding(IIII)V

    .line 2336
    :cond_3
    sget v0, Lezg$l;->dt_user_connection_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->setTitle(I)V

    .line 2337
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->n:Landroid/widget/TextView;

    .line 2338
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(F)V

    .line 2341
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$12;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 2348
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    new-instance v2, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$14;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2487
    sget v0, Lezg$h;->circle_timeline_refresh_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lin/srain/cube/views/ptr/PtrFrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 2488
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    const v1, 0x3fd9999a    # 1.7f

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setResistance(F)V

    .line 2489
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setRatioOfHeaderHeightToRefresh(F)V

    .line 2490
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setLoadingMinTime(I)V

    .line 2491
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v7}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToClose(I)V

    .line 2492
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v7}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 2493
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setKeepHeaderWhenRefresh(Z)V

    .line 2494
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 2495
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$18;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lkey;)V

    .line 2522
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f:Lin/srain/cube/views/ptr/PtrFrameLayout;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$19;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setPtrHandler(Lkex;)V

    .line 2542
    sget v0, Lezg$h;->circle_timeline_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 2544
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 2546
    new-instance v0, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-direct {v0, p0, v6, v5}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    .line 2548
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Landroid/support/v7/widget/LinearLayoutManager;J)Lfce;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    .line 2550
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$20;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    .line 3074
    iput-object v1, v0, Lfce;->c:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    .line 2581
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2582
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->w:Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2583
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c()V

    .line 2584
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    .line 3078
    iput-object v1, v0, Lfce;->e:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

    .line 2596
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v0, p0}, Lfce;->a(Lfcm$b;)V

    .line 2597
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2611
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$4;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 3661
    sget v0, Lezg$h;->circle_header_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    .line 3662
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e:Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;

    sget v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/connection/ui/CircleScaleHeader;->setHeaderHeight(I)V

    .line 3670
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->item_connection_footer_layout:I

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->j:Landroid/view/View;

    .line 3672
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->k:Landroid/view/View;

    .line 3676
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->item_connection_header_layout:I

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3677
    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i:Landroid/view/View;

    .line 3680
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i:Landroid/view/View;

    sget v2, Lezg$h;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    new-instance v2, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$5;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->setCircleLoadingCallback(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$a;)V

    .line 3686
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v0, :cond_4

    .line 3687
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    invoke-virtual {v0, v1}, Lfce;->a(Landroid/view/View;)V

    .line 2309
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f()V

    .line 3747
    new-instance v0, Lfcj;

    invoke-direct {v0}, Lfcj;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->y:Lfci;

    .line 3750
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->y:Lfci;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$6;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-interface {v0, v1}, Lfci;->a(Lfci$a;)V

    .line 3757
    sget v0, Lezg$h;->circle_timeline_input_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 3758
    new-instance v0, Lfdp;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$7;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v3, Lezg$h;->circle_timeline_content_layout:I

    .line 3773
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lfdp;-><init>(Landroid/app/Activity;Lfdp$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    .line 3776
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$8;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    .line 4143
    iput-object v1, v0, Lfdp;->c:Lcov;

    .line 4798
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4799
    const-string/jumbo v1, "circle_on_create_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4800
    const-string/jumbo v1, "connection_on_uploading_photos"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4801
    const-string/jumbo v1, "connection_on_read_notice"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4802
    const-string/jumbo v1, "action_comments_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4803
    const-string/jumbo v1, "circle_action_long_text_expand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4804
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5053
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$10;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    const-class v2, Lfet;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfet;

    .line 5181
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->c:J

    invoke-static {v2, v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->firstParam(J)Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    move-result-object v1

    invoke-virtual {p0, p0, v1, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Landroid/app/Activity;Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;Lfet;)V

    .line 5182
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d:Lfex;

    invoke-virtual {v0}, Lfex;->a()V

    .line 186
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->g()Z

    .line 5201
    new-instance v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;-><init>(Lffa;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->H:Lfez;

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->updateSystemUiVisibility()V

    .line 195
    new-instance v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->E:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->E:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .line 6048
    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a(Z)V

    .line 198
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 420
    const/4 v1, 0x0

    sget v2, Lezg$l;->dt_circle_action_post:I

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->b:Lecw;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 421
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 422
    return v3
.end method

.method protected onDestroy()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1228
    .line 7247
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7250
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v2

    .line 8020
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7252
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->A:Ljava/util/Map;

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

    .line 7253
    new-instance v5, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/alibaba/android/user/connection/draft/CommentDraft;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7255
    :cond_0
    invoke-virtual {v2, v3}, Lfdu;->a(Ljava/util/Collection;)V

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->r:Lfce;

    .line 8099
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Lfce;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 8101
    iget-object v0, v0, Lfce;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfcm;

    .line 8278
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v0, v0, Lfcm;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 9259
    :cond_2
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 9263
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->y:Lfci;

    invoke-interface {v0}, Lfci;->a()V

    .line 9264
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    invoke-virtual {v0}, Lfdp;->a()V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i:Landroid/view/View;

    sget v1, Lezg$h;->item_circle_header_pull_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a()V

    .line 1236
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->E:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    if-eqz v0, :cond_4

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->E:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .line 10083
    iget-object v1, v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    .line 10084
    iget-object v1, v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10085
    iput-object v6, v0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b:Landroid/content/BroadcastReceiver;

    .line 1238
    :cond_3
    iput-object v6, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->E:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .line 1241
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->H:Lfez;

    invoke-interface {v0}, Lfez;->c()V

    .line 1243
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 1244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->e()Lfcd;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Landroid/app/Activity;Lfcd;)V

    .line 430
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->F:Z

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    invoke-virtual {v0}, Lfdp;->d()V

    .line 255
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 273
    iput-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->F:Z

    .line 274
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->G:Z

    if-eqz v0, :cond_0

    .line 275
    iput-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->G:Z

    .line 276
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->f()V

    .line 278
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onWindowFocusChanged(Z)V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->z:Lfdp;

    .line 6121
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfdp;->k:Z

    .line 268
    :cond_0
    return-void
.end method
