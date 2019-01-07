.class public Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;
.super Ljava/lang/Object;
.source "ConversationCreateGuideActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoosePeopleFromContactLogic"
.end annotation


# instance fields
.field private mCreateBurnChatContext:Ldbw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 143
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    aget-object v0, p2, v2

    instance-of v0, v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    aget-object v6, p2, v2

    check-cast v6, Landroid/content/Intent;

    .local v6, "intent":Landroid/content/Intent;
    move-object v1, p1

    .line 147
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 148
    .local v1, "dingtalkActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    const-string/jumbo v0, "choose_user_ids"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 149
    .local v7, "uids":[J
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 152
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    .line 154
    :cond_2
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    aget-wide v2, v7, v2

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;)V

    invoke-virtual/range {v0 .. v5}, Ldqm;->a(Landroid/app/Activity;JLjava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$ChoosePeopleFromContactLogic;->mCreateBurnChatContext:Ldbw;

    .line 173
    :cond_0
    return-void
.end method
