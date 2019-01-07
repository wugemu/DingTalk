.class public final Lemz;
.super Lemv;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/android/search/model/BaseModel;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcif;

.field public f:Lenx;

.field public g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field public h:I

.field public i:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field private o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private p:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/alibaba/android/dingtalk/userbase/IChooseControl;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "chooseLimit"    # I
    .param p3, "chooseLimitTips"    # I
    .param p4, "chooseControl"    # Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 100
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v0

    iput v0, p0, Lemz;->h:I

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lemz;->k:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lemz;->d:Ljava/util/List;

    .line 122
    iput p2, p0, Lemz;->l:I

    .line 123
    iput p3, p0, Lemz;->m:I

    .line 124
    iput-object p4, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 125
    iget-object v0, p0, Lemz;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lemz;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lemz;->o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1018
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    iput-object v0, p0, Lemz;->j:Ljava/util/Map;

    .line 129
    return-void
.end method

.method static synthetic a(Lemz;)I
    .locals 1
    .param p0, "x0"    # Lemz;

    .prologue
    .line 78
    iget v0, p0, Lemz;->h:I

    return v0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V
    .locals 2
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "checkBox"    # Landroid/widget/CheckBox;
    .param p3, "chooseMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 604
    iget-object v0, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_4

    .line 605
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 606
    iget-object v0, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    invoke-direct {p0, p2}, Lemz;->a(Landroid/widget/CheckBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    sget v0, Lemt$d;->checkbox_pressed:I

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 615
    iget-object v0, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 616
    invoke-direct {p0}, Lemz;->d()V

    goto :goto_0

    .line 620
    :cond_3
    sget v0, Lemt$d;->checkbox_normal:I

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 621
    iget-object v0, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 622
    invoke-direct {p0}, Lemz;->d()V

    goto :goto_0

    .line 625
    :cond_4
    iget-object v0, p0, Lemz;->e:Lcif;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 627
    invoke-direct {p0, p2}, Lemz;->a(Landroid/widget/CheckBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lemz;->e:Lcif;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1}, Lcif;->a(ILjava/lang/Object;)V

    .line 629
    invoke-direct {p0}, Lemz;->d()V

    goto :goto_0

    .line 632
    :cond_5
    iget-object v0, p0, Lemz;->e:Lcif;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Lcif;->a(ILjava/lang/Object;)V

    .line 633
    invoke-direct {p0}, Lemz;->d()V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/search/model/BaseModel;Landroid/view/View;)V
    .locals 2
    .param p1, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "convertView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 324
    :cond_0
    new-instance v0, Lemz$3;

    invoke-direct {v0, p0, p1}, Lemz$3;-><init>(Lemz;Lcom/alibaba/android/search/model/BaseModel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    :cond_1
    return-void
.end method

.method private a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V
    .locals 6
    .param p1, "baseModel"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "checkBox"    # Landroid/widget/CheckBox;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 549
    .local v1, "oldUserIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_0

    .line 553
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 557
    iget-object v2, p0, Lemz;->o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_2

    .line 558
    iget-object v2, p0, Lemz;->o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(J)V

    .line 560
    :cond_2
    new-instance v0, Lemz$6;

    invoke-direct {v0, p0, v1, p2, p1}, Lemz$6;-><init>(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 596
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v2, p0, Lemz;->b:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 597
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    iget-object v4, p0, Lemz;->b:Landroid/app/Activity;

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 599
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lemz;ILandroid/widget/CheckBox;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 6
    .param p0, "x0"    # Lemz;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/CheckBox;
    .param p3, "x3"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    const/4 v5, 0x1

    .line 78
    .line 4451
    iget-object v0, p0, Lemz;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4453
    invoke-virtual {p3}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 4454
    if-eqz v0, :cond_0

    .line 4458
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-ne v1, v5, :cond_4

    .line 4459
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 4460
    invoke-direct {p0, p3, p2}, Lemz;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V

    .line 4462
    :cond_0
    :goto_0
    return-void

    .line 4499
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 4500
    if-eqz v1, :cond_0

    .line 4504
    iget-object v0, p0, Lemz;->o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_2

    .line 4505
    iget-object v0, p0, Lemz;->o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(J)V

    .line 4507
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4508
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4509
    new-instance v0, Lemz$5;

    invoke-direct {v0, p0, v1, p3, p2}, Lemz$5;-><init>(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V

    .line 4536
    iget-object v1, p0, Lemz;->b:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 4537
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v3, Lcma;

    iget-object v4, p0, Lemz;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4539
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0

    .line 4465
    :cond_4
    invoke-virtual {p3}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lemz;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V

    goto :goto_0
.end method

.method static synthetic a(Lemz;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V
    .locals 0
    .param p0, "x0"    # Lemz;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Landroid/widget/CheckBox;
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lemz;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V

    return-void
.end method

.method static synthetic a(Lemz;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;ILandroid/widget/CheckBox;)V
    .locals 1
    .param p0, "x0"    # Lemz;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/widget/CheckBox;

    .prologue
    .line 78
    .line 3471
    iget-object v0, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3486
    :cond_0
    :goto_0
    return-void

    .line 3475
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 3476
    iget-object v0, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3479
    iget-object v0, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3481
    :cond_2
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3482
    invoke-direct {p0, p3}, Lemz;->a(Landroid/widget/CheckBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3484
    sget v0, Lemt$d;->checkbox_pressed:I

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 3485
    iget-object v0, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 3486
    invoke-direct {p0}, Lemz;->d()V

    goto :goto_0

    .line 3490
    :cond_3
    sget v0, Lemt$d;->checkbox_normal:I

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 3491
    iget-object v0, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 3492
    invoke-direct {p0}, Lemz;->d()V

    goto :goto_0
.end method

.method static synthetic a(Lemz;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 8
    .param p0, "x0"    # Lemz;
    .param p1, "x1"    # Lcom/alibaba/android/search/model/BaseModel;

    .prologue
    const-wide/16 v6, 0x0

    .line 78
    .line 5365
    if-eqz p1, :cond_0

    .line 5369
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v2

    .line 5370
    if-eqz v2, :cond_0

    .line 5371
    invoke-static {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getAssureType(Lcom/alibaba/android/search/model/BaseModel;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v0

    .line 5372
    sget-object v1, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->UnKown:Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    if-eq v0, v1, :cond_0

    .line 5373
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v3

    .line 5374
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6034
    const-string/jumbo v0, "baseModel = null"

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6036
    invoke-static {p1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getAssureType(Lcom/alibaba/android/search/model/BaseModel;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v0

    .line 6037
    sget-object v1, Lenk$1;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6046
    new-instance v0, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/UnkownAssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    move-object v1, v0

    .line 5376
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->isContact()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5377
    invoke-virtual {v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->getSearchId()Ljava/lang/String;

    move-result-object v0

    .line 6109
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5378
    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 5379
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 5380
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    new-instance v7, Lemz$4;

    invoke-direct {v7, p0, v1, v2, v3}, Lemz$4;-><init>(Lemz;Lcom/alibaba/android/search/assure/model/AssureModel;Lenh;Ljava/lang/String;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lemz;->b:Landroid/app/Activity;

    invoke-interface {v0, v7, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v6, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 5401
    :cond_0
    :goto_1
    return-void

    .line 6039
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/search/assure/model/ContactAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/ContactAssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    move-object v1, v0

    goto :goto_0

    .line 6041
    :pswitch_1
    new-instance v0, Lcom/alibaba/android/search/assure/model/GroupAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/GroupAssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    move-object v1, v0

    goto :goto_0

    .line 6043
    :pswitch_2
    new-instance v0, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;

    invoke-direct {v0, p1}, Lcom/alibaba/android/search/assure/model/FunctionAssureModel;-><init>(Lcom/alibaba/android/search/model/BaseModel;)V

    move-object v1, v0

    goto :goto_0

    .line 5402
    :cond_1
    invoke-interface {v2, v3, v1}, Lenh;->a(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    goto :goto_1

    .line 6037
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lemz;Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V
    .locals 0
    .param p0, "x0"    # Lemz;
    .param p1, "x1"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "x2"    # Landroid/widget/CheckBox;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lemz;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;)V

    return-void
.end method

.method private a(Landroid/widget/CheckBox;)Z
    .locals 8
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 690
    iget v6, p0, Lemz;->l:I

    if-gtz v6, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v4

    .line 694
    :cond_1
    const/4 v0, 0x0

    .line 696
    .local v0, "count":I
    iget-object v6, p0, Lemz;->e:Lcif;

    if-eqz v6, :cond_2

    .line 697
    iget-object v6, p0, Lemz;->e:Lcif;

    invoke-virtual {v6}, Lcif;->a()I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 700
    :cond_2
    iget-object v6, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v6, :cond_3

    .line 701
    iget-object v6, p0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v6}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v3

    .line 702
    .local v3, "userList":Ljava/util/List;
    if-eqz v3, :cond_3

    .line 703
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v0, v6

    .line 707
    .end local v3    # "userList":Ljava/util/List;
    :cond_3
    iget-object v6, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v6, :cond_4

    .line 708
    iget-object v6, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v6}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v2

    .line 709
    .local v2, "groupList":Ljava/util/List;
    if-eqz v2, :cond_4

    .line 710
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v0, v6

    .line 714
    .end local v2    # "groupList":Ljava/util/List;
    :cond_4
    iget v6, p0, Lemz;->l:I

    if-lt v0, v6, :cond_0

    .line 715
    if-eqz p1, :cond_5

    .line 716
    invoke-virtual {p1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 718
    :cond_5
    sget v1, Lemt$g;->choose_limit:I

    .line 719
    .local v1, "defaultTip":I
    iget-object v6, p0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v6, :cond_6

    .line 720
    sget v1, Lemt$g;->dt_choose_limit_default_tip:I

    .line 722
    :cond_6
    iget-object v6, p0, Lemz;->b:Landroid/app/Activity;

    iget v7, p0, Lemz;->m:I

    if-nez v7, :cond_7

    .end local v1    # "defaultTip":I
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lemz;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v6, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    move v4, v5

    .line 723
    goto :goto_0

    .line 722
    .restart local v1    # "defaultTip":I
    :cond_7
    iget v1, p0, Lemz;->m:I

    goto :goto_1
.end method

.method static synthetic b(Lemz;)Z
    .locals 1
    .param p0, "x0"    # Lemz;

    .prologue
    .line 78
    iget-boolean v0, p0, Lemz;->i:Z

    return v0
.end method

.method static synthetic c(Lemz;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lemz;

    .prologue
    .line 78
    iget-object v0, p0, Lemz;->o:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lemz;->f:Lenx;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lemz;->f:Lenx;

    invoke-interface {v0}, Lenx;->a()V

    .line 734
    :cond_0
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 737
    const/4 v3, 0x0

    .line 738
    .local v3, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    iget-object v4, p0, Lemz;->a:Ljava/util/List;

    if-nez v4, :cond_0

    .line 739
    const/4 v4, 0x0

    .line 765
    :goto_0
    return-object v4

    .line 742
    :cond_0
    const/4 v1, -0x1

    .line 743
    .local v1, "lastClickedPos":I
    iget-object v4, p0, Lemz;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_5

    .line 744
    iget-object v4, p0, Lemz;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .line 745
    .local v2, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v2, :cond_2

    .line 749
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/BaseModel;->isItemClicked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 750
    if-gez v1, :cond_1

    .line 751
    move v1, v0

    .line 753
    :cond_1
    if-nez v0, :cond_2

    .line 754
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 756
    :cond_3
    if-ltz v1, :cond_2

    .line 757
    if-nez v3, :cond_4

    .line 758
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .restart local v3    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_4
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/model/BaseModel;->setListPosition(I)V

    .line 761
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_5
    move-object v4, v3

    .line 765
    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lemz;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lemz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lemz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lemz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 143
    .local v0, "model":Lcom/alibaba/android/search/model/BaseModel;
    if-eqz v0, :cond_2

    .line 144
    instance-of v3, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lemz;->p:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 146
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    iget-object v4, p0, Lemz;->b:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lemz;->p:Ljava/lang/Boolean;

    .line 148
    :cond_0
    iget-object v3, p0, Lemz;->p:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 149
    check-cast v2, Lcom/alibaba/android/search/model/MsgModel;

    .line 150
    .local v2, "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/MsgModel;->getMessageType()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->ordinal()I

    move-result v3

    .line 158
    .end local v2    # "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    :goto_0
    return v3

    .line 153
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getModelType()Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v1

    .line 154
    .local v1, "modelType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->getValue()I

    move-result v3

    goto :goto_0

    .line 158
    .end local v1    # "modelType":Lcom/alibaba/android/search/model/BaseModel$ModelType;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 1656
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lemz;->b:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1657
    invoke-virtual/range {p0 .. p1}, Lemz;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 1658
    instance-of v6, v5, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v6, :cond_2

    .line 1660
    check-cast v5, Lcom/alibaba/android/search/model/MsgModel;

    .line 1662
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lemz;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/alibaba/android/search/model/MsgModel;->getMessageType()I

    move-result v5

    invoke-virtual {v6, v10, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;I)Ldcs;

    move-result-object v5

    .line 1663
    if-eqz v5, :cond_2

    .line 1664
    move-object/from16 v0, p0

    iget-object v6, v0, Lemz;->b:Landroid/app/Activity;

    invoke-interface {v5, v6}, Ldcs;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 1665
    .end local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/search/model/BaseModel;

    .line 184
    .local v8, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    if-nez v8, :cond_4

    .line 317
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    return-object p2

    .line 1671
    .end local v8    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lemz;->b:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p1}, Lemz;->getItemViewType(I)I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->valueOf(I)Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v5

    .line 2033
    sget-object v10, Leub$1;->a:[I

    invoke-virtual {v5}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->ordinal()I

    move-result v5

    aget v5, v10, v5

    packed-switch v5, :pswitch_data_0

    .line 2101
    new-instance v5, Letf;

    sget v10, Lemt$f;->item_search:I

    invoke-direct {v5, v6, v10}, Letf;-><init>(Landroid/app/Activity;I)V

    .line 1672
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lemz;->j:Ljava/util/Map;

    invoke-virtual {v5, v6}, Lete;->a(Ljava/util/Map;)V

    .line 1673
    invoke-virtual {v5}, Lete;->a()Landroid/view/View;

    move-result-object p2

    .line 1674
    .end local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 2050
    .restart local p2    # "convertView":Landroid/view/View;
    :pswitch_0
    new-instance v5, Letf;

    sget v10, Lemt$f;->item_search:I

    invoke-direct {v5, v6, v10}, Letf;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2053
    :pswitch_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2054
    new-instance v5, Letx;

    sget v10, Lemt$f;->search_item_chat2:I

    invoke-direct {v5, v6, v10}, Letx;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2056
    :cond_3
    new-instance v5, Letx;

    sget v10, Lemt$f;->search_item_chat:I

    invoke-direct {v5, v6, v10}, Letx;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2060
    :pswitch_2
    new-instance v5, Letm;

    sget v10, Lemt$f;->item_ding_search:I

    invoke-direct {v5, v6, v10}, Letm;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2063
    :pswitch_3
    new-instance v5, Letp;

    sget v10, Lemt$f;->item_search_function:I

    invoke-direct {v5, v6, v10}, Letp;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2068
    :pswitch_4
    new-instance v5, Leto;

    sget v10, Lemt$f;->item_search_external_contact:I

    invoke-direct {v5, v6, v10}, Leto;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2071
    :pswitch_5
    new-instance v5, Letr;

    sget v10, Lemt$f;->mail_item_search:I

    invoke-direct {v5, v6, v10}, Letr;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2074
    :pswitch_6
    new-instance v5, Leuc;

    sget v10, Lemt$f;->space_item_search:I

    invoke-direct {v5, v6, v10}, Leuc;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2077
    :pswitch_7
    new-instance v5, Letq;

    sget v10, Lemt$f;->item_search_light_app:I

    invoke-direct {v5, v6, v10}, Letq;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2080
    :pswitch_8
    new-instance v5, Lety;

    sget v10, Lemt$f;->item_search_enterprise:I

    invoke-direct {v5, v6, v10}, Lety;-><init>(Landroid/app/Activity;I)V

    goto :goto_2

    .line 2083
    :pswitch_9
    new-instance v5, Letn;

    sget v10, Lemt$f;->item_search_external_contact_org:I

    invoke-direct {v5, v6, v10}, Letn;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 2087
    :pswitch_a
    new-instance v5, Leua;

    sget v10, Lemt$f;->item_search_template:I

    invoke-direct {v5, v6, v10}, Leua;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 2090
    :pswitch_b
    new-instance v5, Letz;

    sget v10, Lemt$f;->layout_recall_search_result_tip:I

    invoke-direct {v5, v6, v10}, Letz;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 2093
    :pswitch_c
    new-instance v5, Letg;

    sget v10, Lemt$f;->item_dept_search:I

    invoke-direct {v5, v6, v10}, Letg;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 2097
    :pswitch_d
    new-instance v5, Leud;

    sget v10, Lemt$f;->item_suggestion_guide_search:I

    invoke-direct {v5, v6, v10}, Leud;-><init>(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 188
    .restart local v8    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    .line 189
    .local v23, "tag":Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v5, v0, Ldcs;

    if-eqz v5, :cond_5

    move-object/from16 v20, v23

    .line 191
    check-cast v20, Ldcs;

    .local v20, "holder":Ldcs;
    move-object/from16 v22, v8

    .line 192
    check-cast v22, Lcom/alibaba/android/search/model/MsgModel;

    .line 193
    .local v22, "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Ldcs;->a(Landroid/view/ViewGroup;Landroid/view/View;ILdcr;)V

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lemz;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/view/View;)V

    goto/16 :goto_1

    .line 199
    .end local v20    # "holder":Ldcs;
    .end local v22    # "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lete;

    .line 200
    .local v20, "holder":Lete;
    move-object/from16 v0, p0

    iget v5, v0, Lemz;->h:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lete;->b(I)V

    .line 202
    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Lete;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V

    .line 203
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogPositionValue(I)V

    .line 205
    move-object/from16 v0, v20

    instance-of v5, v0, Letz;

    if-eqz v5, :cond_9

    .line 206
    invoke-virtual/range {p0 .. p0}, Lemz;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/16 v5, 0x8

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lete;->a(I)V

    .line 213
    :goto_4
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    instance-of v5, v8, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v5, :cond_b

    .line 214
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 216
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lemz;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/view/View;)V

    goto/16 :goto_1

    .line 206
    :cond_8
    const/4 v5, 0x0

    goto :goto_3

    .line 207
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lemz;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    .line 208
    const/16 v5, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lete;->a(I)V

    goto :goto_4

    .line 210
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lete;->a(I)V

    goto :goto_4

    .line 221
    :cond_b
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    move-object/from16 v0, v20

    instance-of v5, v0, Letf;

    if-eqz v5, :cond_d

    .line 224
    check-cast v20, Letf;

    .end local v20    # "holder":Lete;
    move-object/from16 v0, v20

    iget-object v9, v0, Letf;->l:Landroid/widget/CheckBox;

    .line 231
    .local v9, "checkBox":Landroid/widget/CheckBox;
    :goto_5
    if-eqz v9, :cond_1

    .line 239
    instance-of v5, v8, Lcom/alibaba/android/search/model/GroupModel;

    if-eqz v5, :cond_10

    move-object/from16 v19, v8

    .line 240
    check-cast v19, Lcom/alibaba/android/search/model/GroupModel;

    .line 241
    .local v19, "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/search/model/GroupModel;->getDingtalkConversation()Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v7

    .line 242
    .local v7, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v5, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v21

    .line 244
    .local v21, "isSelected":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v12, 0x1

    .line 245
    .local v12, "isCheckable":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->g:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v5, v7}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v13

    .line 257
    .end local v19    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    .local v13, "isRequest":Z
    :goto_7
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v5

    if-eqz v5, :cond_c

    .line 258
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    .line 259
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getChooseMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1c

    .line 260
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 261
    if-nez v12, :cond_19

    .line 262
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 263
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    if-eqz v21, :cond_18

    sget v5, Lemt$d;->checkbox_unable:I

    :goto_8
    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 265
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 284
    :goto_9
    new-instance v5, Lemz$1;

    move-object/from16 v6, p0

    move/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lemz$1;-><init>(Lemz;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/CheckBox;I)V

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v10, Lemz$2;

    move-object/from16 v11, p0

    move-object v14, v9

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v17, p1

    invoke-direct/range {v10 .. v17}, Lemz$2;-><init>(Lemz;ZZLandroid/widget/CheckBox;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/android/search/model/BaseModel;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 225
    .end local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v9    # "checkBox":Landroid/widget/CheckBox;
    .end local v12    # "isCheckable":Z
    .end local v13    # "isRequest":Z
    .end local v21    # "isSelected":Z
    .restart local v20    # "holder":Lete;
    :cond_d
    move-object/from16 v0, v20

    instance-of v5, v0, Leto;

    if-eqz v5, :cond_e

    .line 226
    check-cast v20, Leto;

    .end local v20    # "holder":Lete;
    move-object/from16 v0, v20

    iget-object v9, v0, Leto;->k:Landroid/widget/CheckBox;

    .restart local v9    # "checkBox":Landroid/widget/CheckBox;
    goto/16 :goto_5

    .line 228
    .end local v9    # "checkBox":Landroid/widget/CheckBox;
    .restart local v20    # "holder":Lete;
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "checkBox":Landroid/widget/CheckBox;
    goto/16 :goto_5

    .line 244
    .end local v20    # "holder":Lete;
    .restart local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v19    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    .restart local v21    # "isSelected":Z
    :cond_f
    const/4 v12, 0x0

    goto :goto_6

    .line 250
    .end local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v19    # "groupModel":Lcom/alibaba/android/search/model/GroupModel;
    .end local v21    # "isSelected":Z
    :cond_10
    const/4 v7, 0x0

    .line 251
    .restart local v7    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/BaseModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v18

    .line 2411
    .local v18, "currentUserIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v5, :cond_11

    .line 2412
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v21

    .line 2437
    .restart local v21    # "isSelected":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v5, :cond_15

    .line 2438
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const/4 v12, 0x1

    .line 3430
    .restart local v12    # "isCheckable":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v5, :cond_17

    .line 3431
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->n:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v13

    .line 254
    .restart local v13    # "isRequest":Z
    :goto_c
    goto/16 :goto_7

    .line 2415
    .end local v12    # "isCheckable":Z
    .end local v13    # "isRequest":Z
    .end local v21    # "isSelected":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->c:Ljava/util/List;

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->c:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2416
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->k:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->k:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->k:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2422
    const/16 v21, 0x1

    goto :goto_a

    .line 2418
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->k:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 2424
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 2438
    .restart local v21    # "isSelected":Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_b

    .line 2441
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->d:Ljava/util/List;

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lemz;->d:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2442
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 2444
    :cond_16
    const/4 v12, 0x1

    goto/16 :goto_b

    .line 3433
    .restart local v12    # "isCheckable":Z
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_c

    .line 264
    .end local v18    # "currentUserIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v13    # "isRequest":Z
    :cond_18
    sget v5, Lemt$d;->checkbox_normal:I

    goto/16 :goto_8

    .line 266
    :cond_19
    if-eqz v13, :cond_1a

    .line 267
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 268
    sget v5, Lemt$d;->checkbox_unable:I

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 269
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_9

    .line 271
    :cond_1a
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 273
    if-eqz v21, :cond_1b

    .line 274
    sget v5, Lemt$d;->checkbox_pressed:I

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 276
    :cond_1b
    sget v5, Lemt$d;->checkbox_normal:I

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 280
    :cond_1c
    const/16 v5, 0x8

    invoke-virtual {v9, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_9

    .line 2033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    invoke-static {}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->values()[Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p0, Lemz;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->values()[Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->values()[Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/alibaba/android/search/model/BaseModel$ModelType;->values()[Lcom/alibaba/android/search/model/BaseModel$ModelType;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method
