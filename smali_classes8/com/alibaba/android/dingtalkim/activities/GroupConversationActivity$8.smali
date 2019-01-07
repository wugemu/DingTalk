.class Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;
.super Lcom/alibaba/android/dingtalk/userbase/ChooseControlAdapter;
.source "GroupConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/ChooseControlAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public addChooseObject(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 398
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v0

    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1743
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v1, :cond_0

    .line 1744
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    .line 2093
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-nez v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2096
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v1

    .line 2097
    if-eqz v1, :cond_0

    .line 2098
    iget-object v2, v0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)Z

    .line 2099
    invoke-virtual {v0}, Lcvu;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v0

    .line 3762
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-eqz v1, :cond_0

    .line 3763
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->d:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->getRecipientList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3765
    :cond_0
    const/4 v0, 0x0

    .line 414
    goto :goto_0
.end method

.method public isDisable(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 419
    instance-of v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 421
    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 422
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v2

    .line 4722
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v3, :cond_0

    .line 4723
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v1, v0}, Lcvu;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_0
    return v1
.end method

.method public isHasSelected(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 429
    instance-of v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 431
    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 432
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v2

    .line 4729
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v3, :cond_4

    .line 4730
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    .line 5084
    if-eqz v0, :cond_0

    iget-object v3, v2, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-nez v3, :cond_3

    :cond_0
    move v2, v1

    .line 432
    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    .line 433
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v2

    .line 5736
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v3, :cond_5

    .line 5737
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    invoke-virtual {v2, v0}, Lcvu;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v2

    .line 433
    :goto_1
    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 435
    .end local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    return v1

    .line 5088
    .restart local v0    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_3
    iget-object v2, v2, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    .line 5089
    invoke-static {v0}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v3

    .line 5088
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->b(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v1

    .line 4732
    goto :goto_0

    :cond_5
    move v2, v1

    .line 5739
    goto :goto_1
.end method

.method public removeChooseObject(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 406
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity$8;->this$0:Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;->e(Lcom/alibaba/android/dingtalkim/activities/GroupConversationActivity;)Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    move-result-object v0

    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2749
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    if-eqz v1, :cond_0

    .line 2750
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a:Lcvu;

    .line 3104
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    if-nez v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3107
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v1

    .line 3108
    if-eqz v1, :cond_0

    .line 3109
    iget-object v2, v0, Lcvu;->e:Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkim/base/view/MessageRecipientsView;->a(Ljava/lang/String;)Z

    .line 3110
    invoke-virtual {v0}, Lcvu;->notifyDataSetChanged()V

    goto :goto_0
.end method
