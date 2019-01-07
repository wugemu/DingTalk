.class final Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;
.super Ljava/lang/Object;
.source "SvcGrpRecommendAnswerActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    check-cast p1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->dismissLoadingDialog()V

    .line 1128
    if-nez p1, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    sget v2, Lctk$f;->empty_view:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1130
    sget v0, Lctk$i;->dt_ding_empty_calendar_content:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerObject;->getAnswerDetailList()Ljava/util/List;

    move-result-object v0

    .line 1135
    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;Ljava/util/List;)Ljava/util/List;

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->f(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->e(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->dismissLoadingDialog()V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    sget v2, Lctk$f;->empty_view:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 116
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getRecommendAnswer error with code = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", orgId = "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .line 120
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->b(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", cid = "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .line 121
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->c(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ", messageId = "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .line 122
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->d(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 118
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 110
    return-void
.end method
