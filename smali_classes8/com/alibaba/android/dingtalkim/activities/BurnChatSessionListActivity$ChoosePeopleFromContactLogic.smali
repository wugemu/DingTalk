.class public Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;
.super Ljava/lang/Object;
.source "BurnChatSessionListActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoosePeopleFromContactLogic"
.end annotation


# instance fields
.field private mCreateBurnChatContext:Ldbw;

.field private mStatisticsFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticFrom"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mStatisticsFrom:Ljava/lang/String;

    .line 281
    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 285
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-eqz v2, :cond_0

    aget-object v2, p2, v6

    instance-of v2, v2, Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    aget-object v0, p2, v6

    check-cast v0, Landroid/content/Intent;

    .local v0, "intent":Landroid/content/Intent;
    move-object v1, p1

    .line 289
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 290
    .local v1, "dingtalkActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    const-string/jumbo v2, "choose_user_ids"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 291
    .local v7, "uids":[J
    if-eqz v7, :cond_0

    array-length v2, v7

    if-lez v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    invoke-virtual {v2}, Ldbw;->a()V

    .line 294
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    .line 296
    :cond_2
    invoke-static {}, Ldqm;->a()Ldqm;

    aget-wide v2, v7, v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mStatisticsFrom:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;)V

    invoke-static/range {v1 .. v6}, Ldqm;->a(Landroid/app/Activity;JLjava/lang/String;Ldbw$a;Z)Ldbw;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    .line 315
    :cond_0
    return-void
.end method
