.class public final Lcxn;
.super Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;
.source "SimilarGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcxg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcxn;->e:Ljava/util/HashMap;

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SimilarGroupAdapter constructor params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcxn;->a:Landroid/app/Activity;

    .line 33
    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcxn;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 38
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-nez v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcxn;->getItemViewType(I)I

    move-result v0

    .line 45
    .local v0, "ordinal":I
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcxg;

    .line 1510
    .local v8, "holder":Lcxg;
    iget v1, v8, Lcxg;->s:I

    .line 47
    if-eq v1, v0, :cond_0

    .line 48
    const/4 p2, 0x0

    .line 52
    .end local v8    # "holder":Lcxg;
    :cond_0
    if-nez p2, :cond_5

    .line 53
    iget-object v1, p0, Lcxn;->a:Landroid/app/Activity;

    move-object v2, p3

    check-cast v2, Landroid/widget/AbsListView;

    const/4 v3, 0x0

    .line 2049
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    .line 53
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcxh;->a(ILandroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)Lcxg;

    move-result-object v8

    .line 54
    .restart local v8    # "holder":Lcxg;
    iget-object v1, p0, Lcxn;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v8, v1}, Lcxg;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 55
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-virtual {v8, p1}, Lcxg;->a(I)V

    .line 2514
    iput v0, v8, Lcxg;->s:I

    .line 61
    invoke-virtual {p0, p1}, Lcxn;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 62
    .local v7, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "cid":Ljava/lang/String;
    iget-object v1, p0, Lcxn;->e:Ljava/util/HashMap;

    .line 3506
    iget-object v2, v8, Lcxg;->m:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcxn;->e:Ljava/util/HashMap;

    .line 4506
    iget-object v2, v8, Lcxg;->m:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1

    .line 65
    iget-object v1, p0, Lcxn;->e:Ljava/util/HashMap;

    .line 5506
    iget-object v2, v8, Lcxg;->m:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6506
    iget-object v1, v8, Lcxg;->m:Ljava/lang/String;

    .line 67
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-virtual {v8}, Lcxg;->b()V

    .line 7502
    :cond_2
    iput-object v6, v8, Lcxg;->m:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcxn;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8078
    .end local v6    # "cid":Ljava/lang/String;
    :cond_3
    iget-object v1, v8, Lcxg;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_4

    .line 8079
    iget-object v1, v8, Lcxg;->d:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8081
    :cond_4
    invoke-virtual {v8, v7}, Lcxg;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 74
    return-object p2

    .line 57
    .end local v7    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v8    # "holder":Lcxg;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcxg;

    .restart local v8    # "holder":Lcxg;
    goto :goto_0
.end method
