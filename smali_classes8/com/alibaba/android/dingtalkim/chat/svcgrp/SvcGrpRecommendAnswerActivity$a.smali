.class final Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;
.super Lcqr;
.source "SvcGrpRecommendAnswerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->d:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    .line 152
    invoke-direct {p0, p2}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 153
    return-void
.end method

.method private a(ILcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "answer"    # Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 11018
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "orgId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->d:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->b(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->d:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->c(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v2, "msgId"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->d:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->d(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v2, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "svc_grp_recommend_button_click"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "result_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string/jumbo v2, "result_content"

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->getAnswerContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v2, "result_msg_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->d:Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->d(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 224
    const-string/jumbo v2, "result_answer_id"

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->getAnswerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->b:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 11231
    const-string/jumbo v2, "ServiceGroupResultAction"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11232
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->b:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 227
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 228
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    check-cast p1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    .line 12157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->getAnswerContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 163
    if-nez p2, :cond_1

    .line 164
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->b:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lctk$g;->item_svr_grp_recommend_answer:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 165
    new-instance v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;-><init>(Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;)V

    .line 166
    .local v1, "holder":Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;
    sget v4, Lctk$f;->recommend_answer:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1235
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->a:Landroid/widget/TextView;

    .line 2235
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->a:Landroid/widget/TextView;

    .line 167
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    sget v4, Lctk$f;->send_answer:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3235
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->b:Landroid/view/View;

    .line 169
    sget v4, Lctk$f;->edit_answer:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4235
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->c:Landroid/view/View;

    .line 5235
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->b:Landroid/view/View;

    .line 170
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6235
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->c:Landroid/view/View;

    .line 171
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    .line 179
    .local v0, "answer":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    if-nez v0, :cond_2

    .line 194
    :cond_0
    :goto_1
    return-object p2

    .line 174
    .end local v0    # "answer":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    .end local v1    # "holder":Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;

    .restart local v1    # "holder":Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;
    goto :goto_0

    .line 7235
    .restart local v0    # "answer":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    :cond_2
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->b:Landroid/view/View;

    .line 184
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8235
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->c:Landroid/view/View;

    .line 185
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;->getAnswerContent()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 190
    .local v2, "spannableString":Landroid/text/SpannableString;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->b:Landroid/app/Activity;

    .line 9235
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->a:Landroid/widget/TextView;

    .line 190
    invoke-static {v4, v5, v2}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity;->a(Landroid/app/Activity;Landroid/widget/TextView;Landroid/text/SpannableString;)V

    .line 10235
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a$a;->a:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 200
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "tag":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 202
    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;

    .line 203
    .local v0, "answer":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    sget v3, Lctk$f;->send_answer:I

    if-ne v1, v3, :cond_1

    .line 204
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->a(ILcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;)V

    .line 209
    .end local v0    # "answer":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0    # "answer":Lcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;
    :cond_1
    sget v3, Lctk$f;->edit_answer:I

    if-ne v1, v3, :cond_0

    .line 206
    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpRecommendAnswerActivity$a;->a(ILcom/alibaba/android/dingtalkim/chat/svcgrp/object/AnswerDetailObject;)V

    goto :goto_0
.end method
