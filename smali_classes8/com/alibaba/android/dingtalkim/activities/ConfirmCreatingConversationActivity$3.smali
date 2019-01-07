.class final Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;
.super Ljava/lang/Object;
.source "ConfirmCreatingConversationActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 752
    check-cast p1, Ljava/util/List;

    .line 1756
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ldjl;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1757
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 1764
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1765
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1766
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    .line 1769
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    .line 1771
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1773
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ldjl;->a(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1775
    const-string/jumbo v2, "id"

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 1788
    :goto_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1789
    const-string/jumbo v7, "group_desc"

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1793
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 1795
    :cond_3
    new-instance v8, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v8}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 1796
    invoke-virtual {v8, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 1797
    invoke-virtual {v8, v7}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 1798
    invoke-virtual {v8, v3}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 1799
    invoke-virtual {v8, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 1800
    new-instance v0, Lcom/alibaba/wukong/im/GroupIconObject;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/GroupIconObject;-><init>()V

    .line 1801
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)I

    move-result v3

    iput v3, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIconType:I

    .line 1802
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    .line 1803
    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTag(J)V

    .line 1804
    invoke-virtual {v8, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setGroupIconObject(Lcom/alibaba/wukong/im/GroupIconObject;)V

    .line 1805
    invoke-virtual {v8, v6}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 1806
    invoke-virtual {v8, v1}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {v8, v4}, Lcom/alibaba/wukong/im/CreateConversationParams;->setShowHistoryType(I)V

    .line 1808
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setUuid(Ljava/lang/String;)V

    .line 1809
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v1, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v8}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    .line 752
    return-void

    .line 1758
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ldjl;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1759
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1761
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto/16 :goto_0

    .line 1776
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ldjl;->b(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1778
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1779
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1780
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)J

    move v2, v4

    .line 1781
    goto/16 :goto_1

    .line 1783
    :cond_7
    const-string/jumbo v2, "ids"

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move v2, v4

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 867
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->dismissLoadingDialog()V

    .line 869
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 863
    return-void
.end method
