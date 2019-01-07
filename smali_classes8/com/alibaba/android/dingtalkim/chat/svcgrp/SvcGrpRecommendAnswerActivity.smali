.class public Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SvcGrpRecommendAnswerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->g:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/TextView;Landroid/text/SpannableString;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "spannableString"    # Landroid/text/SpannableString;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-static {}, Ldds;->a()Ldds;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p0}, Ldds;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->f:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1080
    if-nez v1, :cond_0

    .line 1081
    const-string/jumbo v1, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "data is empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    if-nez v0, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->finish()V

    .line 3039
    :goto_1
    return-void

    .line 1085
    :cond_0
    const-string/jumbo v2, "extra_message_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1086
    const-string/jumbo v1, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "message id is invalid"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :cond_1
    const-string/jumbo v2, "extra_org_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1091
    const-string/jumbo v1, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "orgId id is invalid"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :cond_2
    const-string/jumbo v2, "extra_cid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1096
    const-string/jumbo v1, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "cid id is invalid"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_4
    sget v0, Lctk$g;->layout_svr_grp_recommend_answer_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->setContentView(I)V

    .line 70
    sget v0, Lctk$i;->dt_im_svc_grp_recommend_answer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->setTitle(I)V

    .line 1144
    sget v0, Lctk$f;->list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->e:Landroid/widget/ListView;

    .line 1145
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->f:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;

    .line 1146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->f:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->showLoadingDialog()V

    .line 2106
    invoke-static {}, Ldfn;->a()Ldfn;

    move-result-object v7

    iget-wide v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->c:J

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->b:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v6, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)V

    const-class v8, Lcma;

    invoke-interface {v0, v6, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3032
    new-instance v6, Ldfn$2;

    invoke-direct {v6, v7, v0}, Ldfn$2;-><init>(Ldfn;Lcma;)V

    .line 3037
    const-class v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;

    .line 3038
    cmp-long v7, v1, v10

    if-lez v7, :cond_5

    cmp-long v7, v4, v10

    if-lez v7, :cond_5

    .line 3039
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/service/IDLCustomerGroupService;->getAnswerModel(JLjava/lang/String;JLiyv;)V

    goto/16 :goto_1

    .line 3041
    :cond_5
    const-string/jumbo v0, "err_parameter"

    const-string/jumbo v1, "orgId or msgId is invalid IDLCCOService == null"

    .line 4033
    const/4 v2, 0x0

    invoke-virtual {v6, v0, v1, v2}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
