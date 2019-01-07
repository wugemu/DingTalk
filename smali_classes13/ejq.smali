.class public final Lejq;
.super Ljava/lang/Object;
.source "HomeBurnChatEnterManger.java"

# interfaces
.implements Lcmt$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:I

.field public c:Z

.field public d:Z

.field e:I

.field private f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

.field private g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

.field private i:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lejq;->b:I

    .line 53
    iput-boolean v1, p0, Lejq;->c:Z

    .line 54
    iput-boolean v1, p0, Lejq;->d:Z

    .line 59
    iput v1, p0, Lejq;->e:I

    .line 62
    iput-object p1, p0, Lejq;->a:Landroid/app/Activity;

    .line 63
    iget-object v0, p0, Lejq;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lejq;->a:Landroid/app/Activity;

    const v1, 0x7f1105c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iput-object v0, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    .line 65
    iget-object v0, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    new-instance v1, Lejq$1;

    invoke-direct {v1, p0}, Lejq$1;-><init>(Lejq;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    invoke-virtual {v0}, Lekw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lejq;->a(Z)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lejq;->b()V

    .line 121
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcmt;->a(Lcmt$a;)V

    .line 123
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 0
    .param p1, "isHide"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lejq;->c:Z

    .line 204
    invoke-direct {p0}, Lejq;->c()V

    .line 205
    invoke-virtual {p0}, Lejq;->b()V

    .line 206
    return-void
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    iget-boolean v1, p0, Lejq;->c:Z

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lejq;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lejq;->h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    if-nez v1, :cond_0

    .line 217
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->BurnChat:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v1

    iput-object v1, p0, Lejq;->h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 226
    .end local v0    # "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lejq;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    iget-object v3, p0, Lejq;->h:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/support/v4/app/Fragment;Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    new-array v1, v7, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->BurnChat:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    goto :goto_0

    .line 229
    .end local v0    # "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :cond_3
    iget-object v1, p0, Lejq;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lejq;->i:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    if-nez v1, :cond_4

    .line 232
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    new-array v1, v7, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 239
    .restart local v0    # "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v1

    iput-object v1, p0, Lejq;->i:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 241
    .end local v0    # "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lejq;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    iget-object v3, p0, Lejq;->i:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/support/v4/app/Fragment;Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    goto :goto_1

    .line 236
    :cond_5
    new-array v1, v6, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "filterType":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-object v1, p0, Lejq;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 143
    iget-object v1, p0, Lejq;->a:Landroid/app/Activity;

    const v2, 0x7f050039

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/view/animation/Animation;
    iget-object v1, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "sf"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    check-cast p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .end local p1    # "sf":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lejq;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 172
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lejq;->a:Landroid/app/Activity;

    iget-object v2, p0, Lejq;->g:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    new-instance v3, Lejq$3;

    invoke-direct {v3, p0}, Lejq$3;-><init>(Lejq;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;Lcjo$a;)V

    .line 194
    invoke-direct {p0}, Lejq;->c()V

    .line 195
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/String;
    .param p4, "newValue"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v0, "dt_safe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "just_hide_boss_chat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    invoke-virtual {v0}, Lekw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lejq;->a(Z)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lejq;->b()V

    .line 164
    :cond_0
    :goto_1
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lejq;->a(Z)V

    goto :goto_0

    .line 161
    :cond_2
    const-string/jumbo v0, "dt_secret_chat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "secret_chat_icon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lejq;->b()V

    goto :goto_1
.end method

.method public b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v9, 0x7f092565

    const v8, 0x7f09243c

    const v7, 0x7f09236e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    iget-boolean v2, p0, Lejq;->c:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lejq;->d:Z

    if-eqz v2, :cond_a

    .line 249
    iget-object v2, p0, Lejq;->a:Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setVisibility(I)V

    .line 251
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e()I

    move-result v0

    .line 252
    .local v0, "count":I
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_secret_chat"

    const-string/jumbo v4, "secret_chat_icon"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "iconSelect":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "1"

    .line 254
    :cond_0
    if-lez v0, :cond_6

    .line 255
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v3, p0, Lejq;->a:Landroid/app/Activity;

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    .line 261
    :goto_0
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCountNumberShow(Z)V

    .line 262
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    .line 291
    .end local v0    # "count":I
    .end local v1    # "iconSelect":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 259
    .restart local v0    # "count":I
    .restart local v1    # "iconSelect":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v3, p0, Lejq;->a:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v3, p0, Lejq;->a:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->a(Ljava/lang/String;Z)V

    .line 284
    :cond_4
    :goto_2
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCountNumberShow(Z)V

    .line 285
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setRedCount(I)V

    goto :goto_1

    .line 267
    :cond_5
    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v3, 0x7f020af5

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIconDrawable(I)V

    goto :goto_2

    .line 273
    :cond_6
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 274
    invoke-static {}, Lcms;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 275
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v3, p0, Lejq;->a:Landroid/app/Activity;

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_7
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v3, p0, Lejq;->a:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_8
    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 280
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    iget-object v3, p0, Lejq;->a:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIcon(Ljava/lang/String;)V

    goto :goto_2

    .line 281
    :cond_9
    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const v3, 0x7f020af6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setIconDrawable(I)V

    goto :goto_2

    .line 289
    .end local v0    # "count":I
    .end local v1    # "iconSelect":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lejq;->f:Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeActionBarButton;->setVisibility(I)V

    goto/16 :goto_1
.end method
