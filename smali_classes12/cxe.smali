.class public Lcxe;
.super Lcqr;
.source "SessionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public e:Z

.field public f:Z

.field public g:Ljava/util/HashMap;
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

.field private h:Lcxi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcxe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcxe;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcxi;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcxi;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcxe;->g:Ljava/util/HashMap;

    .line 45
    iput-object p2, p0, Lcxe;->h:Lcxi;

    .line 46
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method private static a(Lcxg;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 2
    .param p0, "holder"    # Lcxg;
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 120
    iget-object v0, p0, Lcxg;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcxg;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Lcxg;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 124
    return-void
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 129
    .local v0, "holder":Lcxg;
    if-eqz v0, :cond_0

    .line 7506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 129
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {v0, p1}, Lcxe;->a(Lcxg;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 132
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 143
    .local v0, "holder":Lcxg;
    if-eqz v0, :cond_0

    .line 8506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 143
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lcxg;->e(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 146
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iput-object p1, p0, Lcxe;->a:Ljava/util/List;

    .line 57
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 150
    .local v0, "holder":Lcxg;
    if-eqz v0, :cond_0

    .line 9506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 150
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lcxg;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 153
    :cond_0
    return-void
.end method

.method public final d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 164
    .local v0, "holder":Lcxg;
    if-eqz v0, :cond_0

    .line 10506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 164
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcxg;->h(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 167
    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcxe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 110
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-nez v0, :cond_0

    .line 111
    const/4 v1, 0x2

    .line 115
    :goto_0
    return v1

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Ldyq;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const/4 v1, 0x5

    goto :goto_0

    .line 115
    :cond_1
    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcxe;->getItemViewType(I)I

    move-result v0

    .line 69
    .local v0, "ordinal":I
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcxg;

    .line 1510
    .local v8, "holder":Lcxg;
    iget v1, v8, Lcxg;->s:I

    .line 71
    if-eq v1, v0, :cond_0

    .line 72
    const/4 p2, 0x0

    .line 76
    .end local v8    # "holder":Lcxg;
    :cond_0
    if-nez p2, :cond_5

    .line 77
    iget-object v1, p0, Lcxe;->b:Landroid/app/Activity;

    move-object v2, p3

    check-cast v2, Landroid/widget/AbsListView;

    iget-object v3, p0, Lcxe;->h:Lcxi;

    iget-object v4, p0, Lcxe;->a:Ljava/util/List;

    iget-boolean v5, p0, Lcxe;->e:Z

    invoke-static/range {v0 .. v5}, Lcxh;->a(ILandroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)Lcxg;

    move-result-object v8

    .line 78
    .restart local v8    # "holder":Lcxg;
    iget-object v1, p0, Lcxe;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcxg;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .line 79
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    invoke-virtual {v8, p1}, Lcxg;->a(I)V

    .line 1514
    iput v0, v8, Lcxg;->s:I

    .line 85
    iget-object v1, p0, Lcxe;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 86
    .local v7, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_4

    .line 87
    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "cid":Ljava/lang/String;
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    .line 2506
    iget-object v2, v8, Lcxg;->m:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    .line 3506
    iget-object v2, v8, Lcxg;->m:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_1

    .line 89
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    .line 4506
    iget-object v2, v8, Lcxg;->m:Ljava/lang/String;

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5506
    iget-object v1, v8, Lcxg;->m:Ljava/lang/String;

    .line 91
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    invoke-virtual {v8}, Lcxg;->b()V

    .line 6502
    :cond_2
    iput-object v6, v8, Lcxg;->m:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcxe;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcxe;->f:Z

    if-eqz v1, :cond_4

    .line 99
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v1

    iget-object v2, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 7236
    iget-object v3, v1, Ldks;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7237
    iget-object v1, v1, Ldks;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldkt;

    .line 7238
    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ldkt;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7239
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    invoke-static {}, Ldkt;->c()V

    .line 102
    .end local v6    # "cid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v7}, Lcxg;->i(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 103
    invoke-static {v8, v7}, Lcxe;->a(Lcxg;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 104
    return-object p2

    .line 81
    .end local v7    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v8    # "holder":Lcxg;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcxg;

    .restart local v8    # "holder":Lcxg;
    goto/16 :goto_0
.end method
