.class final Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;
.super Ljava/lang/Object;
.source "JoinGroupConfirmActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/ConversationCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 430
    const-string/jumbo v0, "400007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "verifyGroupInfo onException code:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " qrcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " groupId:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, " cid:"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->t(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    sget v2, Lctk$i;->dt_converstion_verify_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v10, 0x8

    const/4 v4, 0x0

    .line 312
    check-cast p1, Lcom/alibaba/wukong/im/ConversationCard;

    .line 1322
    if-nez p1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->o(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    .line 1390
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/ConversationCard;->getConversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->b(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->o(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    goto :goto_0

    .line 1335
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/ConversationCard;->isMember()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    sget v1, Lctk$f;->iv_group_qrcode_enterprise_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1346
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2031
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v1

    .line 1347
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-virtual {v1, v5}, Ldik;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 1348
    if-eqz v5, :cond_9

    .line 1350
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1351
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1352
    invoke-interface {v1, v0, v5, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    move v1, v3

    .line 1356
    :goto_1
    if-nez v1, :cond_3

    .line 1357
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v1, v6, v8

    if-nez v1, :cond_4

    .line 1358
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1359
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v1

    .line 1360
    if-eqz v1, :cond_3

    .line 1361
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1368
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Ldjl;->H(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1377
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/ConversationCard;->getOwnerId()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;J)J

    .line 1380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->q(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    .line 1382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->m(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    goto/16 :goto_0

    .line 1364
    :cond_4
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1372
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1373
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->p(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1386
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->joinValidationType()Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$JoinValidationType;->ONLY_MASTER:Lcom/alibaba/wukong/im/Conversation$JoinValidationType;

    if-eq v0, v1, :cond_7

    .line 1387
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1388
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lctk$i;->confirm_join_group_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->r(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->s(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1392
    :cond_7
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v3, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->hasApplyJoinGroupRecently(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method
