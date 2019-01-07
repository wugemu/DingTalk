.class public Lfgo$h;
.super Lfgo$l;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgo$h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field b:Landroid/app/Activity;

.field c:Lfgo$h$a;

.field d:Ljava/lang/String;

.field e:Landroid/widget/TextView;

.field f:Z

.field g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field h:Z

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "holderDataManager"    # Lfgo$h$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "fromPage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 273
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;ZLcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;Z)V

    .line 274
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;ZLcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "holderDataManager"    # Lfgo$h$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "fromPage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isGroupApply"    # Z
    .param p6, "orgApplyObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .prologue
    .line 277
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;ZLcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;Z)V

    .line 278
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;ZLcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "holderDataManager"    # Lfgo$h$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "fromPage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isGroupApply"    # Z
    .param p6, "orgApplyObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .param p7, "isExColleagueRecommend"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Lfgo$l;-><init>()V

    .line 281
    iput-object p1, p0, Lfgo$h;->b:Landroid/app/Activity;

    .line 282
    iput-object p2, p0, Lfgo$h;->c:Lfgo$h$a;

    .line 283
    iput-object p3, p0, Lfgo$h;->a:Landroid/widget/ListView;

    .line 284
    iput-object p4, p0, Lfgo$h;->d:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lfgo$h;->b:Landroid/app/Activity;

    sget v1, Lezg$j;->item_friend_request:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfgo$h;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 288
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgo$h;->e:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_mobile:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgo$h;->k:Landroid/widget/TextView;

    .line 290
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->no_org_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgo$h;->l:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_remark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgo$h;->m:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_org_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgo$h;->n:Landroid/widget/TextView;

    .line 293
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->btn_receive_request:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lfgo$h;->o:Landroid/widget/Button;

    .line 294
    iget-object v0, p0, Lfgo$h;->i:Landroid/view/View;

    sget v1, Lezg$h;->tv_received_request:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgo$h;->p:Landroid/widget/TextView;

    .line 296
    iput-boolean p5, p0, Lfgo$h;->f:Z

    .line 297
    iput-object p6, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 299
    iput-boolean p7, p0, Lfgo$h;->h:Z

    .line 300
    return-void
.end method


# virtual methods
.method public final a(ILfgm;)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "data"    # Lfgm;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 309
    if-eqz p2, :cond_0

    iget-object v5, p2, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    if-nez v5, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v3, p2, Lfgm;->e:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 313
    .local v3, "newRequestObject":Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    iget-boolean v5, p0, Lfgo$h;->f:Z

    if-eqz v5, :cond_c

    .line 316
    iget-object v5, p0, Lfgo$h;->e:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_6

    .line 318
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v5, :cond_2

    .line 319
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    iput v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 321
    :cond_2
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 323
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$l;->action_agree:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 380
    :cond_3
    :goto_1
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_4

    .line 381
    iget-object v5, p0, Lfgo$h;->j:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iget-object v8, p0, Lfgo$h;->a:Landroid/widget/ListView;

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 386
    :cond_4
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->mobile:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 387
    iget-object v5, p0, Lfgo$h;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v5, p0, Lfgo$h;->k:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->mobile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_2
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->remark:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 395
    iget-object v5, p0, Lfgo$h;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-boolean v5, p0, Lfgo$h;->f:Z

    if-eqz v5, :cond_12

    .line 397
    iget-object v5, p0, Lfgo$h;->m:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lfgo$h;->b:Landroid/app/Activity;

    sget v8, Lezg$l;->dt_group_apply_remark:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ": "

    aput-object v7, v6, v11

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->remark:Ljava/lang/String;

    aput-object v7, v6, v12

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :goto_3
    iget-boolean v5, p0, Lfgo$h;->f:Z

    if-eqz v5, :cond_16

    .line 410
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    iget-object v6, p0, Lfgo$h;->b:Landroid/app/Activity;

    sget v7, Lezg$e;->ui_common_content_fg_color_alpha_56:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    iget-object v5, p0, Lfgo$h;->l:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_5

    .line 415
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->orgName:Ljava/lang/String;

    .line 416
    .local v4, "orgName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 417
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    sget v7, Lezg$l;->dt_group_apply_organization:I

    invoke-static {v7}, Leda;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ": "

    aput-object v7, v6, v11

    const-string/jumbo v7, "-"

    aput-object v7, v6, v12

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    .end local v4    # "orgName":Ljava/lang/String;
    :cond_5
    :goto_4
    iget-object v5, p0, Lfgo$h;->i:Landroid/view/View;

    new-instance v6, Lfgo$h$2;

    invoke-direct {v6, p0, v3, p2}, Lfgo$h$2;-><init>(Lfgo$h;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Lfgm;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 512
    iget-object v5, p0, Lfgo$h;->i:Landroid/view/View;

    new-instance v6, Lfgo$h$3;

    invoke-direct {v6, p0, p2, p1, v3}, Lfgo$h$3;-><init>(Lfgo$h;Lfgm;ILcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-boolean v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->isRead:Z

    if-nez v5, :cond_1e

    .line 560
    iget-object v5, p0, Lfgo$h;->i:Landroid/view/View;

    iget-object v6, p0, Lfgo$h;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->friend_request_unread_item_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 566
    :goto_5
    iget-object v5, p0, Lfgo$h;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1f

    .line 567
    .local v1, "displayName":Ljava/lang/String;
    :goto_6
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    new-instance v6, Lfgo$h$4;

    invoke-direct {v6, p0, v3, v1, p2}, Lfgo$h$4;-><init>(Lfgo$h;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;Lfgm;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 324
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_6
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_8

    .line 325
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v5, :cond_7

    .line 326
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    iput v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 328
    :cond_7
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    sget v6, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 331
    :cond_8
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_a

    .line 332
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v5, :cond_9

    .line 333
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    iput v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 335
    :cond_9
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    sget v6, Lezg$l;->hint_reject:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 338
    :cond_a
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_3

    .line 339
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v5, :cond_b

    .line 340
    iget-object v5, p0, Lfgo$h;->g:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    iput v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 342
    :cond_b
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    sget v6, Lezg$l;->dt_group_apply_hint_blocked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 349
    :cond_c
    iget-object v5, p0, Lfgo$h;->e:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v6}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 353
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    sget v6, Lezg$l;->received_friend_request:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 356
    :cond_d
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->INTRODUCE:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_e

    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->UNRELATION:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 357
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 358
    :cond_e
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$l;->dt_contact_friendRequest_add_friend:I

    invoke-static {v6}, Leda;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$g;->ui_common_level1_button_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 362
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$m;->ui_common_level1_button:I

    invoke-static {v5, v6}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 363
    :cond_f
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->SENT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_10

    .line 364
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$l;->dt_common_send_again:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 367
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$g;->ui_common_level4_button_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 368
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$m;->ui_common_level4_button:I

    invoke-static {v5, v6}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 370
    :cond_10
    iget-object v5, p0, Lfgo$h;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$l;->receive_friend_request:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 373
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$g;->ui_common_level1_button_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 374
    iget-object v5, p0, Lfgo$h;->o:Landroid/widget/Button;

    sget v6, Lezg$m;->ui_common_level1_button:I

    invoke-static {v5, v6}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 390
    :cond_11
    iget-object v5, p0, Lfgo$h;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 399
    :cond_12
    iget-object v5, p0, Lfgo$h;->m:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->remark:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 402
    :cond_13
    iget-boolean v5, p0, Lfgo$h;->f:Z

    if-eqz v5, :cond_14

    .line 403
    iget-object v5, p0, Lfgo$h;->m:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lfgo$h;->b:Landroid/app/Activity;

    sget v8, Lezg$l;->dt_group_apply_remark:I

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ": "

    aput-object v7, v6, v11

    const-string/jumbo v7, "-"

    aput-object v7, v6, v12

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 405
    :cond_14
    iget-object v5, p0, Lfgo$h;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 419
    .restart local v4    # "orgName":Ljava/lang/String;
    :cond_15
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    sget v7, Lezg$l;->dt_group_apply_organization:I

    invoke-static {v7}, Leda;->a(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string/jumbo v7, ": "

    aput-object v7, v6, v11

    aput-object v4, v6, v12

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 425
    .end local v4    # "orgName":Ljava/lang/String;
    :cond_16
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_17

    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->TO_ACCEPT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 426
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_17

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_1c

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    if-eqz v5, :cond_1c

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->showOrgToAll:Z

    if-eqz v5, :cond_1c

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v5, :cond_1c

    .line 429
    :cond_17
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 430
    .local v0, "authOrgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 431
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v5, p0, Lfgo$h;->l:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->corpId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 435
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    iget-object v6, p0, Lfgo$h;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->ui_common_link_bg_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    new-instance v6, Lfgo$h$1;

    invoke-direct {v6, p0, v0}, Lfgo$h$1;-><init>(Lfgo$h;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    :goto_7
    iget-object v5, p0, Lfgo$h;->b:Landroid/app/Activity;

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lfgo$h;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 447
    iget v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->authLevel:I

    invoke-static {v5}, Lfls;->a(I)Lecw;

    move-result-object v2

    .line 448
    .local v2, "icon":Lecw;
    if-eqz v2, :cond_18

    .line 449
    iget-object v5, p0, Lfgo$h;->b:Landroid/app/Activity;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 1070
    iput v5, v2, Lecw;->a:I

    .line 450
    iget-object v5, p0, Lfgo$h;->b:Landroid/app/Activity;

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 1079
    iput v5, v2, Lecw;->b:I

    .line 452
    :cond_18
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 443
    .end local v2    # "icon":Lecw;
    :cond_19
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    iget-object v6, p0, Lfgo$h;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 454
    :cond_1a
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 457
    :cond_1b
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v5, p0, Lfgo$h;->l:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 461
    .end local v0    # "authOrgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    :cond_1c
    iget-object v5, p0, Lfgo$h;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_1d

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    if-eqz v5, :cond_1d

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v5, :cond_1d

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->showOrgToAll:Z

    if-nez v5, :cond_1d

    .line 467
    iget-object v5, p0, Lfgo$h;->l:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 469
    :cond_1d
    iget-object v5, p0, Lfgo$h;->l:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 562
    :cond_1e
    iget-object v5, p0, Lfgo$h;->i:Landroid/view/View;

    sget v6, Lezg$g;->list_item_common_white_selector:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 566
    :cond_1f
    iget-object v5, p0, Lfgo$h;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6
.end method
