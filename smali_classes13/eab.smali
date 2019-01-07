.class public final Leab;
.super Ldzl;
.source "PushTaskListHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leab$a;,
        Leab$b;,
        Leab$c;
    }
.end annotation


# instance fields
.field f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Leab$a;

.field private n:Lcom/alibaba/doraemon/image/ImageMagician;

.field private o:Landroid/os/Handler;

.field private p:J

.field private q:J

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ldzl;-><init>()V

    .line 428
    return-void
.end method

.method static synthetic a(Leab;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Leab;

    .prologue
    .line 58
    iget-object v0, p0, Leab;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Leab;Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 3
    .param p0, "x0"    # Leab;
    .param p1, "x1"    # Landroid/support/v7/widget/ListPopupWindow;

    .prologue
    .line 58
    .line 1509
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Leab;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1510
    iget-object v1, p0, Leab;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lctk$i;->dt_guide_quit_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1511
    iget-object v1, p0, Leab;->c:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_close_guide_ok:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leab$6;

    invoke-direct {v2, p0, v0, p1}, Leab$6;-><init>(Leab;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1550
    iget-object v1, p0, Leab;->c:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_close_guide_cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leab$7;

    invoke-direct {v2, p0, v0, p1}, Leab$7;-><init>(Leab;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1558
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 58
    return-void
.end method

.method static synthetic b(Leab;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Leab;

    .prologue
    .line 58
    iget-object v0, p0, Leab;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Leab;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Leab;

    .prologue
    .line 58
    iget-object v0, p0, Leab;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic d(Leab;)J
    .locals 2
    .param p0, "x0"    # Leab;

    .prologue
    .line 58
    iget-wide v0, p0, Leab;->p:J

    return-wide v0
.end method

.method static synthetic e(Leab;)J
    .locals 2
    .param p0, "x0"    # Leab;

    .prologue
    .line 58
    iget-wide v0, p0, Leab;->q:J

    return-wide v0
.end method

.method static synthetic f(Leab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leab;

    .prologue
    .line 58
    iget-object v0, p0, Leab;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 295
    sget v0, Lctk$g;->layout_session_task_list_header:I

    return v0
.end method

.method a(Landroid/widget/ListAdapter;)I
    .locals 12
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 476
    const/4 v7, 0x0

    .line 477
    .local v7, "measureParent":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .line 478
    .local v6, "maxWidth":I
    const/4 v4, 0x0

    .line 479
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 481
    .local v3, "itemType":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 482
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 483
    .local v1, "heightMeasureSpec":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 484
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 485
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 486
    .local v8, "positionType":I
    if-eq v8, v3, :cond_0

    .line 487
    move v3, v8

    .line 488
    const/4 v4, 0x0

    .line 491
    :cond_0
    if-nez v7, :cond_1

    .line 492
    new-instance v7, Landroid/widget/FrameLayout;

    .end local v7    # "measureParent":Landroid/view/ViewGroup;
    iget-object v10, p0, Leab;->c:Landroid/app/Activity;

    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 495
    .restart local v7    # "measureParent":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {p1, v2, v4, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 496
    invoke-virtual {v4, v9, v1}, Landroid/view/View;->measure(II)V

    .line 498
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 500
    .local v5, "itemWidth":I
    if-le v5, v6, :cond_2

    .line 501
    move v6, v5

    .line 484
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v5    # "itemWidth":I
    .end local v8    # "positionType":I
    :cond_3
    iget-object v10, p0, Leab;->c:Landroid/app/Activity;

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    add-int/2addr v10, v6

    return v10
.end method

.method final b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->task_iconfont:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v6, p0, Leab;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 87
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->task_iconmore:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v6, p0, Leab;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 88
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->task_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Leab;->h:Landroid/widget/ImageView;

    .line 89
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->ll_task_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Leab;->i:Landroid/widget/LinearLayout;

    .line 91
    const-string/jumbo v6, "IMAGE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v6, p0, Leab;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 92
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->top_task_list:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView;

    iput-object v6, p0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    .line 93
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->tv_task_title:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Leab;->j:Landroid/widget/TextView;

    .line 94
    iget-object v6, p0, Leab;->a:Landroid/view/View;

    sget v7, Lctk$f;->tv_task_desc:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Leab;->k:Landroid/widget/TextView;

    .line 96
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 97
    .local v5, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v5, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 114
    .local v1, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 118
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 119
    .local v2, "orgId":J
    iput-wide v2, p0, Leab;->p:J

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "orgId"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, "role":I
    invoke-static {v1}, Leac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 124
    const/4 v4, 0x1

    .line 128
    :cond_2
    :goto_1
    const-string/jumbo v6, "role"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_3

    .line 130
    const-string/jumbo v6, "region"

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v6, "industry"

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3
    const-string/jumbo v6, "version"

    const-string/jumbo v7, "2"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "PushTaskListHolder"

    const-string/jumbo v8, "guide_TaskCenter_show"

    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
    iget-object v6, p0, Leab;->o:Landroid/os/Handler;

    if-nez v6, :cond_0

    .line 137
    new-instance v6, Leab$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Leab$1;-><init>(Leab;Landroid/os/Looper;)V

    iput-object v6, p0, Leab;->o:Landroid/os/Handler;

    goto :goto_0

    .line 125
    :cond_4
    invoke-static {v1}, Leac;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 283
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 20

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    invoke-static {v10}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->d:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Leab;->b(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Leab;->d:Ljava/lang/Object;

    check-cast v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;

    .line 159
    .local v8, "object":Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :goto_1
    iget-wide v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->taskCount:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->k:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Leab;->c:Landroid/app/Activity;

    sget v12, Lctk$i;->dt_im_task_AT_todo_num:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-wide v0, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->taskCount:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->k:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    new-instance v11, Leab$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Leab$3;-><init>(Leab;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 207
    :goto_2
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Leab;->r:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 209
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    invoke-static {v10}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 210
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    const-wide/16 v10, -0x1

    :goto_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Leab;->q:J

    .line 211
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->h:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    new-instance v2, Leab$b;

    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Leab$b;-><init>(Leab;Ljava/util/List;)V

    .line 217
    .local v2, "adapter":Leab$b;
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    .line 1309
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    invoke-static {v10}, Lcms;->a(Landroid/content/Context;)I

    move-result v12

    .line 1310
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v11, 0x42a00000    # 80.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    .line 1311
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 1312
    add-int v10, v14, v3

    mul-int/2addr v10, v13

    if-gt v10, v12, :cond_7

    .line 218
    .local v3, "dividerInPx":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->m:Leab$a;

    if-eqz v10, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v11, v0, Leab;->m:Leab$a;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 221
    :cond_2
    new-instance v10, Leab$a;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Leab$a;-><init>(Leab;I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Leab;->m:Leab$a;

    .line 222
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v11, v0, Leab;->m:Leab$a;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    new-instance v11, Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Leab;->c:Landroid/app/Activity;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 257
    .end local v2    # "adapter":Leab$b;
    .end local v3    # "dividerInPx":I
    :goto_5
    invoke-static {}, Leal;->a()Leal;

    invoke-static {}, Leal;->h()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 258
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v11, Leab$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Leab$4;-><init>(Leab;)V

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :goto_6
    iget-wide v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->expiredTime:J

    invoke-static {}, Lcms;->u()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 270
    .local v4, "delayInMills":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_10

    .line 271
    invoke-static {}, Leal;->a()Leal;

    move-result-object v10

    invoke-virtual {v10}, Leal;->d()V

    goto/16 :goto_0

    .line 162
    .end local v4    # "delayInMills":J
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    iget-object v11, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    iget-object v11, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->titleColor:Ljava/lang/String;

    sget v12, Lctk$c;->ui_common_cell_bg_color:I

    invoke-static {v11, v12}, Leay;->a(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->actionUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->j:Landroid/widget/TextView;

    new-instance v11, Leab$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Leab$2;-><init>(Leab;Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 204
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->k:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 210
    .restart local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->tasks:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    iget-wide v10, v10, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->groupId:J

    goto/16 :goto_3

    .line 1316
    .restart local v2    # "adapter":Leab$b;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v15

    .line 1317
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    .line 1318
    move-object/from16 v0, p0

    iget-object v11, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v16, 0x41a00000    # 20.0f

    move/from16 v0, v16

    invoke-static {v11, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    .line 1319
    sub-int/2addr v12, v15

    const-wide v16, 0x3fe3333333333333L    # 0.6

    int-to-double v0, v14

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    sub-int v15, v12, v15

    .line 1320
    add-int v16, v14, v10

    .line 1322
    const/4 v12, 0x0

    .line 1323
    add-int/lit8 v13, v13, -0x1

    :goto_7
    if-lez v13, :cond_8

    .line 1324
    mul-int v17, v16, v13

    move/from16 v0, v17

    if-ge v0, v15, :cond_9

    .line 1325
    div-int v12, v15, v13

    sub-int/2addr v12, v14

    .line 1330
    :cond_8
    if-le v12, v11, :cond_a

    .line 1331
    :goto_8
    if-ge v11, v10, :cond_b

    :goto_9
    move v3, v10

    .line 1333
    goto/16 :goto_4

    .line 1323
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_a
    move v11, v12

    .line 1330
    goto :goto_8

    :cond_b
    move v10, v11

    .line 1331
    goto :goto_9

    .line 227
    .end local v2    # "adapter":Leab$b;
    :cond_c
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Leab;->q:J

    .line 228
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->l:Landroid/support/v7/widget/RecyclerView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->k:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->c:Landroid/app/Activity;

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 232
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->iconUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 233
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->h:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 236
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->h:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    const/4 v7, 0x0

    .line 241
    .local v7, "mediaUrl":Ljava/lang/String;
    :try_start_0
    iget-object v10, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->iconUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 247
    :goto_a
    if-eqz v7, :cond_e

    .line 248
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v11, v0, Leab;->h:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v7, v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_5

    .line 242
    :catch_0
    move-exception v6

    .line 243
    .local v6, "me":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 244
    const-string/jumbo v10, "im"

    const-string/jumbo v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "iconUrl:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v8, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;->iconUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 251
    .end local v6    # "me":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->h:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 266
    .end local v7    # "mediaUrl":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 275
    .restart local v4    # "delayInMills":J
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->o:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->o:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v10, v0, Leab;->o:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->TASK_LIST:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 300
    return-void
.end method
