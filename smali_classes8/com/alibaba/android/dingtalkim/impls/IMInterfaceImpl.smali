.class public Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;
.super Lcom/alibaba/android/dingtalkim/base/IMInterface;
.source "IMInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/wukong/im/ConversationDisplayProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const-class v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;-><init>()V

    .line 2932
    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$44;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$44;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->b:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    return-void
.end method

.method static synthetic F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;Z)V
    .locals 7
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Z

    .prologue
    const/4 v6, 0x0

    .line 220
    .line 50112
    if-eqz p1, :cond_0

    .line 50113
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50114
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 50115
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/children_list.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$7;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$7;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 50116
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 50140
    :cond_0
    :goto_0
    return-void

    .line 50126
    :cond_1
    const-string/jumbo v0, "https://qr.dingtalk.com/page/conversation"

    .line 50127
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    .line 50128
    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 50129
    const-string/jumbo v0, "https://qr.dingtalk.com/page/office"

    move-object v1, v0

    .line 50143
    :goto_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 50144
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$8;

    invoke-direct {v2, p2, p1, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$8;-><init>(Landroid/os/Bundle;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 50145
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 50130
    :cond_2
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 50131
    const-string/jumbo v0, "https://qr.dingtalk.com/page/channel"

    move-object v1, v0

    goto :goto_1

    .line 50132
    :cond_3
    invoke-static {p1}, Ldzb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50133
    invoke-static {p0, v6, p3}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 50135
    :cond_4
    invoke-static {p1}, Ldyq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50136
    const/4 v0, 0x1

    invoke-static {p0, v6, p3, v0}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    goto :goto_0

    .line 50138
    :cond_5
    invoke-static {p1}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50139
    const/4 v0, 0x0

    invoke-static {p0, v6, p3, v0}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 220
    .line 50165
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 50174
    :cond_0
    :goto_0
    return-void

    .line 50169
    :cond_1
    instance-of v2, p1, Landroid/app/Activity;

    .line 50170
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50172
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 50173
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/children_list.html"

    new-instance v3, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$5;

    invoke-direct {v3, p0, p3, p2, v2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$5;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/doraemon/navigator/IntentRewriter;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 50174
    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 50193
    :cond_2
    const-string/jumbo v0, "https://qr.dingtalk.com/page/conversation"

    .line 50194
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    .line 50195
    const-wide/16 v6, 0x7

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 50196
    const-string/jumbo v0, "https://qr.dingtalk.com/page/office"

    move-object v1, v0

    .line 50201
    :goto_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 50202
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$6;

    invoke-direct {v3, p0, p3, p2, v2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$6;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/doraemon/navigator/IntentRewriter;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 50203
    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 50197
    :cond_3
    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 50198
    const-string/jumbo v0, "https://qr.dingtalk.com/page/channel"

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ldcr;Lcov;)V
    .locals 2
    .param p0, "model"    # Ldcr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcr;",
            "Lcov",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3264
    .local p1, "listener":Lcov;, "Lcov<Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;>;"
    if-nez p0, :cond_0

    .line 3302
    :goto_0
    return-void

    .line 3268
    :cond_0
    invoke-interface {p0}, Ldcr;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3269
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v1, :cond_1

    .line 3270
    check-cast v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-interface {p1, v0}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3274
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;-><init>(Lcov;Ldcr;)V

    invoke-interface {p0, v1}, Ldcr;->getMessage(Lcma;)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;JLcma;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2513
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2514
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;JLcma;)V

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2553
    :goto_0
    return-void

    .line 2551
    :cond_0
    const-string/jumbo v0, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 220
    .line 50226
    if-eqz p0, :cond_1

    .line 50230
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 50232
    if-eqz v0, :cond_1

    .line 50236
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 50238
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 220
    goto :goto_0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 2831
    invoke-static {}, Ldbv;->b()Z

    move-result v0

    return v0
.end method

.method public final B()Lcom/alibaba/wukong/im/ConversationDisplayProxy;
    .locals 1

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->b:Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    return-object v0
.end method

.method public final C()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3226
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->C()V

    .line 3227
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 3228
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.alibaba.android.rimet.background"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3229
    return-void
.end method

.method public final D()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3233
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->D()V

    .line 3234
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 3235
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.alibaba.android.rimet.foreground"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3236
    return-void
.end method

.method public final E()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3221
    new-instance v0, Ldkq;

    invoke-direct {v0}, Ldkq;-><init>()V

    return-object v0
.end method

.method public final a(ILjava/util/Map;)I
    .locals 3
    .param p1, "conversationTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1677
    .local p2, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    int-to-long v0, p1

    .line 24023
    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v0

    .line 1677
    return v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)I
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2669
    .line 37104
    if-eqz p2, :cond_7

    .line 37107
    if-nez p1, :cond_0

    move v0, v1

    .line 37133
    :goto_0
    return v0

    .line 37110
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->canAddInMobile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37111
    const/4 v0, 0x3

    goto :goto_0

    .line 37113
    :cond_1
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-nez v0, :cond_2

    move v0, v1

    .line 37114
    goto :goto_0

    .line 37116
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->g(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 37117
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isOrgInner()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37118
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 37119
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 37121
    goto :goto_0

    .line 37123
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isOrgOuter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37124
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 37125
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 37126
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 37127
    if-eqz v0, :cond_5

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgId:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    move v0, v1

    .line 37128
    goto :goto_0

    .line 37133
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 37135
    :cond_7
    const/4 v0, -0x1

    .line 2669
    goto :goto_0
.end method

.method public final a(JLjava/util/Map;)J
    .locals 3
    .param p1, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1975
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Ldjl;->a(JLjava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)J
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1087
    invoke-static {p1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3003
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3004
    :cond_0
    const-wide/16 v0, -0x1

    .line 3006
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(JLjava/util/List;Ldbx;)Landroid/support/v4/app/Fragment;
    .locals 9
    .param p1, "orgId"    # J
    .param p4, "progressCallback"    # Ldbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ldbx;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 2788
    .local p3, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;-><init>()V

    .line 2789
    .local v1, "businessListFragment":Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2791
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "org_id"

    invoke-virtual {v0, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2793
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2794
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [J

    .line 2796
    .local v3, "openIdArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2797
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 41044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2797
    aput-wide v4, v3, v2

    .line 2796
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2800
    :cond_0
    const-string/jumbo v4, "uid_list"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2803
    .end local v2    # "i":I
    .end local v3    # "openIdArray":[J
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2804
    invoke-virtual {v1, p4}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Ldbx;)V

    .line 2806
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "iChooseControl"    # Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .prologue
    .line 525
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;-><init>()V

    .line 12540
    .local v0, "conversationMembersFragment":Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    iput-object p2, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 527
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 528
    return-object v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "category"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    .prologue
    .line 1954
    invoke-static {p1, p2}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 12028
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 504
    .local v0, "sessionFragment":Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 505
    return-object v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3323
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Ldgv;->a(Lcom/alibaba/wukong/im/Message;IZ)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;I)Lcom/alibaba/wukong/im/Message;
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;I)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 231
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v0, 0x0

    .line 232
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    packed-switch p2, :pswitch_data_0

    .line 267
    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 235
    goto :goto_0

    .line 237
    :pswitch_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 238
    goto :goto_0

    .line 240
    :pswitch_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->createEnterprise:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 241
    goto :goto_0

    .line 243
    :pswitch_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->create:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 244
    goto :goto_0

    .line 246
    :pswitch_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->quit:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 247
    goto :goto_0

    .line 249
    :pswitch_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->titleChange:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 250
    goto :goto_0

    .line 252
    :pswitch_6
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 253
    goto :goto_0

    .line 255
    :pswitch_7
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 256
    goto :goto_0

    .line 258
    :pswitch_8
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 259
    goto :goto_0

    .line 261
    :pswitch_9
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->changeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Lcom/alibaba/wukong/im/MessageContent;
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 993
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 994
    :cond_0
    const/4 v1, 0x0

    .line 1009
    :goto_0
    return-object v1

    .line 996
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 997
    .local v0, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p3, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    if-nez v1, :cond_2

    .line 998
    const-string/jumbo v1, "isEncrypt"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string/jumbo v1, "oid"

    iget-wide v2, p3, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const-string/jumbo v1, "appId"

    iget-object v2, p3, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string/jumbo v1, "priority"

    iget-object v2, p3, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->priority:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string/jumbo v1, "f_size"

    iget-wide v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    :cond_2
    const-string/jumbo v1, "s_id"

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string/jumbo v1, "f_id"

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string/jumbo v1, "f_type"

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string/jumbo v1, "f_name"

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptMessageContent(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;Ldbw$a;)Ldbw;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "statisticFrom"    # Ljava/lang/String;
    .param p5, "listener"    # Ldbw$a;

    .prologue
    .line 1647
    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ldqm;->a(Landroid/app/Activity;JLjava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;I)Ldcs;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "msgType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3256
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3260
    :goto_0
    return-object v0

    .line 50028
    :cond_0
    invoke-static {v0, p2, v2}, Ldgv;->a(Lcom/alibaba/wukong/im/Message;IZ)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    move-result-object v0

    .line 3260
    invoke-static {p1, v0, v2}, Ldgt;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;Z)Ldgl;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)Ldcx;
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "waterMarkView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3358
    if-nez p1, :cond_0

    .line 3359
    const/4 v0, 0x0

    .line 3361
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldgh;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$53;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$53;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;)V

    new-instance v3, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$54;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$54;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/view/View;)V

    invoke-direct {v0, v1, v2, v3}, Ldgh;-><init>(Landroid/content/Context;Ldgh$a;Ldgh$b;)V

    goto :goto_0
.end method

.method public final a(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 2881
    sget-object v0, Ldvw;->i:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrv;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldrv;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJZ)Ljava/lang/String;
    .locals 3
    .param p1, "creatorUid"    # J
    .param p3, "uid"    # J
    .param p5, "isSpecialConversation"    # Z

    .prologue
    .line 1906
    if-eqz p5, :cond_1

    .line 1907
    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1909
    :goto_0
    return-object v0

    .line 1907
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1909
    :cond_1
    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1980
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2002
    :goto_0
    return-object v2

    .line 1983
    :cond_0
    invoke-static {p3}, Lebj;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1984
    invoke-static {}, Lebr;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1985
    invoke-static {p1, p3}, Lebr;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1987
    :cond_1
    invoke-static {p1, p3}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1992
    :cond_2
    invoke-static {p2, p3}, Lebj;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1993
    .local v0, "cacheUrl":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1995
    invoke-static {}, Lebr;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1996
    invoke-static {p1, v0}, Lebr;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1998
    :cond_3
    invoke-static {p1, v0}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2002
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1593
    const/4 v1, 0x0

    .line 1594
    .local v1, "icon":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1595
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->groupIconType()I

    move-result v3

    .line 1596
    .local v3, "type":I
    sget-object v4, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1597
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 1598
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    .line 1599
    .local v2, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1600
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 1612
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v2    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v3    # "type":I
    :cond_0
    :goto_0
    return-object v1

    .line 1603
    .restart local v3    # "type":I
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v4, v5}, Ldjl;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1605
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1606
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->groupIcon()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 2763
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v0, :cond_0

    .line 2764
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    invoke-static {p1, v0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;)Ljava/lang/String;

    move-result-object v0

    .line 2767
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;
    .locals 1
    .param p1, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 2842
    invoke-static {p1}, Ldkc;->c(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1588
    .local p1, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ldjl;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;Z)Ljava/lang/String;
    .locals 1
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    invoke-static {p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "titleInfo"    # Ljava/util/Map;

    .prologue
    .line 3099
    invoke-static {p1}, Leaw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3089
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Leaw;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3084
    .local p2, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Leaw;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1694
    .local p2, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1695
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1696
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1697
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1698
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1699
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1700
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1702
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Ldlc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1703
    .local v1, "encryptString":Ljava/lang/String;
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1704
    .end local v1    # "encryptString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1706
    const-string/jumbo v6, "crypto"

    const-string/jumbo v7, "interface encrypt"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1713
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const/4 p2, 0x0

    .end local p2    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object p2
.end method

.method public final a(I)V
    .locals 2
    .param p1, "activityHashcode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2032
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lebn;->a(I)V

    .line 2033
    return-void
.end method

.method public final a(ILcma;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 947
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$10;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$10;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 968
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcma;)V
    .locals 7
    .param p1, "activityHashcode"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2022
    .local p4, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2023
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p6, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 30120
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v6

    const/4 v4, 0x0

    .line 30052
    iget-object v0, v6, Lebn;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Lebn;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30053
    iget-object v0, v6, Lebn;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 30054
    invoke-virtual {v0, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30061
    :goto_1
    new-instance v1, Lebn$1;

    invoke-direct {v1, v6, p1, p2}, Lebn$1;-><init>(Lebn;ILjava/lang/String;)V

    .line 30116
    iget-object v0, v6, Lebn;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30117
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;-><init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;)V

    .line 31032
    const-string/jumbo v1, "video"

    invoke-static {v1}, Lebj;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 30118
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v1, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 30119
    iget-object v1, v6, Lebn;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30056
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30057
    invoke-virtual {v0, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30058
    iget-object v1, v6, Lebn;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30122
    :cond_3
    iget-object v0, v6, Lebn;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    .line 30123
    if-eqz v0, :cond_0

    .line 31053
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 31054
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    if-eqz v2, :cond_0

    .line 31055
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 31119
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    goto :goto_0
.end method

.method public final a(ILjava/util/Map;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 3
    .param p1, "conversationTag"    # I
    .param p3, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1688
    .local p2, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    int-to-long v0, p1

    .line 25006
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Ldho;->a(JLjava/util/Map;)Z

    move-result v0

    .line 25007
    if-eqz v0, :cond_0

    .line 25008
    sget v0, Lctk$e;->avatar_safe_icon:I

    invoke-virtual {p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setRightBottomIcon(I)V

    :goto_0
    return-void

    .line 25010
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setRightBottomIcon(I)V

    goto :goto_0
.end method

.method public final a(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "listener"    # Lcma;

    .prologue
    .line 1801
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ldxx;->b(JJLcma;)V

    .line 1802
    return-void
.end method

.method public final a(JJZLcma;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "depetId"    # J
    .param p5, "useDeptName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1307
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ldxx;->a(JJZLcma;)V

    .line 1308
    return-void
.end method

.method public final a(JLcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1652
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldxx;->d(JLcma;)V

    .line 1653
    return-void
.end method

.method public final a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V
    .locals 9
    .param p1, "uid"    # J
    .param p3, "sendMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .param p4, "listener"    # Lcma;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 412
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$12;

    invoke-direct {v1, p0, p3, v4}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$12;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v7, 0x0

    .line 430
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 412
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 432
    return-void
.end method

.method public final a(JLjava/lang/String;Lcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcma;

    .prologue
    .line 1512
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldxx;->a(JLjava/lang/String;Lcma;)V

    .line 1513
    return-void
.end method

.method public final a(JLjava/util/List;Ljava/lang/Long;Lcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p4, "requestFieldBits"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1302
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;>;>;"
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ldxx;->a(JLjava/util/List;Ljava/lang/Long;Lcma;)V

    .line 1303
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 601
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mine_group_conversation.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$52;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$52;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 609
    return-void
.end method

.method public final a(Landroid/app/Activity;II)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "maxTime"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1806
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    .line 28106
    const/4 v4, 0x0

    const/16 v5, 0xbb8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ldsf;->a(Landroid/app/Activity;IIII)V

    .line 1807
    return-void
.end method

.method public final a(Landroid/app/Activity;IIII)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "maxTime"    # I
    .param p4, "cameraPosition"    # I
    .param p5, "minTime"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1816
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v4, 0x1

    move-object v1, p1

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ldsf;->a(Landroid/app/Activity;IIII)V

    .line 1817
    return-void
.end method

.method public final a(Landroid/app/Activity;IIIIII)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "mode"    # I
    .param p4, "cameraPosition"    # I
    .param p5, "maxTime"    # I
    .param p6, "minTime"    # I
    .param p7, "quality"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1821
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    const/4 v2, 0x6

    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/16 v5, 0xbb8

    const/4 v6, 0x2

    move-object v1, p1

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Ldsf;->a(Landroid/app/Activity;IIIIII)V

    .line 1822
    return-void
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 2080
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channeldetail"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$32;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$32;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2089
    return-void
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;Lcma;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "chatId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcma;

    .prologue
    .line 1505
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1506
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    .line 1507
    invoke-interface {v0, p5, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1505
    invoke-interface {v1, p2, p3, p4, v0}, Ldxx;->b(JLjava/lang/String;Lcma;)V

    .line 1508
    return-void
.end method

.method public final a(Landroid/app/Activity;JZZ)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "onlyMyGroup"    # Z
    .param p5, "isAllowCreateGroup"    # Z

    .prologue
    .line 1445
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/choose_enterprise_group_conversation.html"

    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;

    move-object v1, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$27;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;JZZ)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1456
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1460
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_conversation.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$28;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$28;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1471
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x5

    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 2609
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_1

    .line 36140
    :cond_0
    :goto_0
    return-void

    .line 2612
    :cond_1
    iget v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    if-ne v0, v2, :cond_2

    .line 36139
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    if-ne v0, v2, :cond_0

    iget-wide v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    .line 36142
    new-instance v0, Ldip$3;

    invoke-direct {v0, p1}, Ldip$3;-><init>(Landroid/app/Activity;)V

    .line 36163
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 36164
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v1

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-interface {v1, v4, v5, v0}, Ldxu;->h(JLcma;)V

    goto :goto_0

    .line 2616
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2617
    .local v8, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2618
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, v8, v12}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 2619
    .local v3, "icon":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$42;

    invoke-direct {v7, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$42;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/app/Activity;)V

    .line 2661
    .local v7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-class v1, Lcom/alibaba/wukong/Callback;

    .line 2662
    invoke-static {v7, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Long;

    iget-wide v10, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2663
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v12

    .line 2662
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;Lcjo$a;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .param p3, "listener"    # Lcjo$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1201
    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    if-eqz v0, :cond_0

    .line 1202
    check-cast p2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .end local p2    # "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    new-instance v0, Ldir;

    invoke-direct {v0, p1, p3}, Ldir;-><init>(Landroid/app/Activity;Lcjo$a;)V

    .line 13175
    iput-object v0, p2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->j:Lcjo$a;

    .line 13176
    iget-boolean v0, p2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i:Z

    if-eqz v0, :cond_0

    .line 13177
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 13178
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 13179
    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->j:Lcjo$a;

    invoke-interface {v1, v0}, Lcjo$a;->a(Lcjo$b;)V

    .line 1204
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1475
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1487
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17129
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17130
    if-eqz p2, :cond_0

    .line 17131
    const-string/jumbo v2, "video_auth_type"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17132
    const-string/jumbo v2, "video_auth_entity"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authEntity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17133
    const-string/jumbo v2, "video_auth_code"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17134
    const-string/jumbo v2, "video_pic_auth_entity"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->picAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1490
    const-string/jumbo v2, "video_url"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string/jumbo v2, "video_auth_url"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    const-string/jumbo v2, "video_size"

    iget-wide v4, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->size:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1493
    const-string/jumbo v2, "video_pic_url"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    const-string/jumbo v2, "video_pic_auth_url"

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbAuthUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    const-string/jumbo v2, "video_message_object"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1496
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1500
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2591
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->globalBotUid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 2604
    :cond_0
    :goto_0
    return-void

    .line 2595
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 2596
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->globalBotUid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2597
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 2598
    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2599
    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 2601
    :cond_2
    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2602
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botTemplateObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2231
    .line 35044
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 35058
    :cond_0
    :goto_0
    return-void

    .line 35048
    :cond_1
    if-eqz p3, :cond_4

    .line 35049
    const-string/jumbo v0, "conversation"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 35051
    :goto_1
    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->addBotURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 35052
    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->addBotURL:Ljava/lang/String;

    .line 35053
    if-eqz v0, :cond_3

    .line 35054
    const-string/jumbo v3, "cid"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35055
    const-string/jumbo v3, "conversationName"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35057
    :goto_2
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35064
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/add_robot.html"

    new-instance v2, Ldip$1;

    invoke-direct {v2, p2, p3}, Ldip$1;-><init>(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "successBroadcastAction"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2384
    if-nez p1, :cond_1

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2387
    :cond_1
    if-eqz p2, :cond_0

    .line 2390
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalkim/activities/GroupDescEditActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2391
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_group_desc_edit_action"

    new-instance v3, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;

    invoke-direct {v3, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$GroupDescEditAndBroadcast;-><init>(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2392
    invoke-static {p2}, Ldjl;->H(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2394
    const-string/jumbo v2, "intent_key_group_desc"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2396
    :cond_2
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "newTask"    # Z

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    .line 614
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "newTask"    # Z
    .param p4, "statisticFrom"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 619
    if-eqz p2, :cond_0

    .line 620
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/children_list.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$57;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$57;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x7

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 632
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/office"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$58;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$58;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 644
    :cond_2
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 645
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channel"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$59;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$59;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 657
    :cond_3
    invoke-static {p2}, Ldzb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    invoke-static {p1, v4, p3}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 659
    :cond_4
    invoke-static {p2}, Ldyq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    const/4 v0, 0x1

    invoke-static {p1, v4, p3, v0}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    goto :goto_0

    .line 661
    :cond_5
    invoke-static {p2}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 662
    const/4 v0, 0x0

    invoke-static {p1, v4, p3, v0}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    goto :goto_0

    .line 664
    :cond_6
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/conversation"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$2;

    invoke-direct {v2, p0, p2, p4, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$2;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 934
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 935
    invoke-static {p2}, Ldjl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$9;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$9;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    .line 934
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 943
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1518
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    :cond_0
    if-eqz p4, :cond_1

    .line 1520
    const-string/jumbo v0, ""

    const-string/jumbo v1, "params invalid"

    invoke-interface {p4, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    :cond_1
    :goto_0
    return-void

    .line 1524
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$29;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/Callback;Landroid/app/Activity;I)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/im/ConversationService;->verifyPublicCid(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "messageId"    # J

    .prologue
    const/4 v4, 0x1

    .line 2772
    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Ldjm;->a(Landroid/app/Activity;Ljava/lang/String;JZZ)V

    .line 2774
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "videoSize"    # J
    .param p5, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 1845
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1857
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "video_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    const-string/jumbo v1, "video_size"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1859
    const-string/jumbo v1, "video_pic_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1860
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "tag"    # J
    .param p5, "staticsFrom"    # Ljava/lang/String;
    .param p6, "newTask"    # Z

    .prologue
    .line 1764
    const-wide/16 v6, 0x5

    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)V

    .line 25575
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Ldjl$9;

    invoke-direct {v2, v6, v7, v0, p2}, Ldjl$9;-><init>(JLcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    invoke-interface {v1, v2, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 1782
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 564
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$31;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$31;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 575
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "newTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 697
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$3;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)V

    invoke-interface {v6, v0, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "btnText"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 582
    const-string/jumbo v0, "key_pick_member_btn_txt"

    invoke-virtual {p5, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string/jumbo v0, "key_pick_member_title"

    invoke-virtual {p5, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, p1, p2, p5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 585
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3045
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3080
    :cond_0
    :goto_0
    return-void

    .line 3048
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$48;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/util/List;Landroid/app/Activity;Ljava/lang/String;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, p1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3079
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "newTask"    # Z

    .prologue
    .line 692
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 693
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;JLandroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "orgId"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2345
    .local p2, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p1, :cond_0

    .line 2356
    :goto_0
    return-void

    .line 2348
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2350
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2352
    const-string/jumbo v1, "intent_key_mem_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2353
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2354
    const-string/jumbo v1, "intent_key_public_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2355
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;JLjava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "dingId"    # J
    .param p5, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3027
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3041
    :cond_0
    :goto_0
    return-void

    .line 3030
    :cond_1
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v5

    .line 3031
    .local v5, "timeStamp":J
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/conversation/chat_list_detail.html"

    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$47;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$47;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;JLjava/lang/String;J)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2335
    .local p2, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2337
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2339
    const-string/jumbo v1, "intent_key_mem_list"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2340
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2341
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;Ldca;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Ldca;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ldca;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2847
    .local p2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2853
    :cond_0
    :goto_0
    return-void

    .line 2850
    :cond_1
    new-instance v0, Ldji;

    invoke-direct {v0, p1}, Ldji;-><init>(Landroid/app/Activity;)V

    .line 42176
    .local v0, "helper":Ldji;
    iput-object p3, v0, Ldji;->b:Ldca;

    .line 2852
    invoke-virtual {v0, p2}, Ldji;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1253
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/fileshelper"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$18;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$18;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1262
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1377
    const-string/jumbo v0, "https://qr.dingtalk.com/im/join_group_confirm.html"

    .line 1378
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$24;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$24;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1388
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2974
    if-nez p1, :cond_0

    .line 2989
    :goto_0
    return-void

    .line 2977
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/3rd_party_auth.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;

    const v3, 0x10008000

    invoke-direct {v2, p0, v3, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$46;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1112
    const/high16 v5, 0x10000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1113
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1117
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/im/forward.html"

    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$15;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$15;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1133
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2993
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2999
    :cond_0
    :goto_0
    return-void

    .line 2996
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.android.dingtalk.im.action_dd_auth_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2997
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.alibaba.android.dingtalk.im.action_dd_auth_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2998
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "newTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2891
    .line 44049
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 44056
    :cond_0
    :goto_0
    return-void

    .line 44052
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getTag()I

    move-result v0

    if-gez v0, :cond_3

    .line 44053
    :cond_2
    const-string/jumbo v0, "im"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[ConversationNavigator]"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "navToConversationPage error:params invalid return"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44055
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44058
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldin$1;

    invoke-direct {v1, p2, p1, v4, v3}, Ldin$1;-><init>(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Landroid/content/Context;Landroid/os/Bundle;Z)V

    .line 44116
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 44058
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1266
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/fileshelper"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$19;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$19;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1275
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1092
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$14;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$14;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1093
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1108
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1137
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$16;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p3, p4}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$16;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1138
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1155
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupRingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3400
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lebc;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3401
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3430
    :goto_0
    return-void

    .line 3405
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 3406
    :cond_1
    const-string/jumbo v0, "404"

    const-string/jumbo v1, "param error"

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3410
    :cond_2
    invoke-static {}, Leas;->a()Leas;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$55;

    invoke-direct {v1, p0, p1, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$55;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/content/Context;Lcma;)V

    invoke-virtual {v0, p2, v1}, Leas;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 760
    if-nez p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 3114
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3126
    :cond_0
    :goto_0
    return-void

    .line 3117
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45055
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_enable_js_api_preview_video"

    .line 45083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 45055
    if-nez v1, :cond_2

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_3

    .line 3120
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 45317
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45320
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;-><init>()V

    .line 45321
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 45322
    invoke-virtual {v0, p4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 45323
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a(I)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 46258
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 45324
    invoke-static {p1, v0}, Lebr;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;)V

    goto :goto_0

    .line 45055
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3123
    :cond_4
    invoke-static {p1, p2}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "filter"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .prologue
    .line 545
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    if-eqz v0, :cond_0

    .line 546
    check-cast p1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p1, p2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 548
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Lcrb;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "onListScrollListener"    # Lcrb;

    .prologue
    .line 552
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    if-eqz v0, :cond_0

    .line 553
    check-cast p1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    const/4 v0, 0x0

    .line 12791
    iput-object v0, p1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->l:Lcrb;

    .line 555
    :cond_0
    return-void
.end method

.method public final a(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1159
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$17;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 1187
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "uid"    # J
    .param p4, "aliFileMsgDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    .param p5, "textMsg"    # Ljava/lang/String;

    .prologue
    .line 3386
    new-instance v2, Ldhz;

    invoke-direct {v2}, Ldhz;-><init>()V

    .line 50030
    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 50031
    :cond_0
    :goto_0
    return-void

    .line 50034
    :cond_1
    new-instance v3, Ldhz$1;

    invoke-direct {v3, v2, p4, p5, p1}, Ldhz$1;-><init>(Ldhz;Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 50057
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    .line 50105
    cmp-long v4, v0, p2

    if-gez v4, :cond_2

    .line 50106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 50058
    :goto_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v4, Ldhz$2;

    invoke-direct {v4, v2, v3, v1}, Ldhz$2;-><init>(Ldhz;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    invoke-interface {v0, v4, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 50108
    :cond_2
    cmp-long v4, v0, p2

    if-lez v4, :cond_3

    .line 50109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 50111
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1759
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Ldjl;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1760
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .prologue
    .line 1683
    invoke-static {p1, p2}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 1684
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V
    .locals 24
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "sendMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 311
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 312
    new-instance v22, Ldiz;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 313
    .local v22, "sender":Ldiz;
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    .line 7131
    move-object/from16 v0, v22

    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 335
    move-object/from16 v0, p2

    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    sparse-switch v2, :sswitch_data_0

    .line 408
    .end local v22    # "sender":Ldiz;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v22    # "sender":Ldiz;
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 338
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 7413
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_0

    .line 342
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;

    if-eqz v2, :cond_0

    .line 343
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;

    .line 344
    .local v16, "audioMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;->url:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;->duration:J

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;->samples:Ljava/util/List;

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/wukong/im/MessageBuilder;->buildAudioMessage(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 345
    .local v19, "message":Lcom/alibaba/wukong/im/Message;
    const/4 v2, 0x0

    .line 7500
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto :goto_0

    .line 349
    .end local v16    # "audioMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    if-eqz v2, :cond_0

    .line 350
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    .line 351
    .local v18, "linkMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->text:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildLinkedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 352
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    invoke-static/range {p1 .. p1}, Lddq;->k(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    invoke-static {v2}, Lddq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const-string/jumbo v2, "reaction_card"

    const-string/jumbo v3, "1"

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1
    const/4 v2, 0x0

    .line 8500
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 359
    .end local v18    # "linkMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    if-eqz v2, :cond_0

    .line 360
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    .line 361
    .local v21, "picMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->url:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->filename:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->fileSize:J

    const/4 v8, 0x0

    move-object/from16 v0, v21

    iget v9, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->orientation:I

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v19

    .line 362
    .restart local v19    # "message":Lcom/alibaba/wukong/im/Message;
    const/4 v2, 0x0

    .line 9500
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .end local v19    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v21    # "picMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;
    :sswitch_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    if-eqz v2, :cond_0

    .line 367
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .line 368
    .local v23, "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoAuthUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->size:J

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->duration:J

    move-object/from16 v0, v23

    iget v10, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->width:I

    move-object/from16 v0, v23

    iget v11, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->height:I

    move-object/from16 v0, v23

    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->bitrate:I

    int-to-long v12, v2

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbAuthUrl:Ljava/lang/String;

    move-object/from16 v3, v22

    invoke-virtual/range {v3 .. v15}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;JJIIJLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 372
    .end local v23    # "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    :sswitch_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;

    if-eqz v2, :cond_0

    .line 373
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;

    .line 374
    .local v17, "geoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->thumbUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->latitude:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->longitude:D

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->locationName:Ljava/lang/String;

    move-object/from16 v2, v22

    invoke-virtual/range {v2 .. v8}, Ldiz;->a(Ljava/lang/String;DDLjava/lang/String;)Z

    goto/16 :goto_0

    .line 378
    .end local v17    # "geoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;
    :sswitch_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;

    if-eqz v2, :cond_0

    .line 379
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;

    .line 380
    .local v23, "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->videoUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->size:J

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->duration:J

    move-object/from16 v0, v23

    iget v10, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->width:I

    move-object/from16 v0, v23

    iget v11, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->height:I

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->thumbUrl:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->picAuthMediaId:Ljava/lang/String;

    move-object/from16 v3, v22

    invoke-virtual/range {v3 .. v13}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 395
    .end local v23    # "videoMessage":Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;
    :sswitch_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->url:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Ldiz;->a(Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :sswitch_8
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;

    if-eqz v2, :cond_0

    .line 399
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;

    .line 400
    .local v20, "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;
    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->atUidMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->text:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->btnOrientation:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->btnDesList:Ljava/util/List;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->hideAvatar:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->singleTitle:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->singleBtnUrl:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->extension:Ljava/util/Map;

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;->authMediaParamMap:Ljava/util/Map;

    .line 11363
    invoke-virtual/range {v22 .. v22}, Ldiz;->a()V

    .line 11364
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11365
    :cond_2
    const/4 v2, 0x0

    .line 10407
    :goto_1
    if-eqz v2, :cond_0

    .line 10408
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    goto/16 :goto_0

    .line 11367
    :cond_3
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 11368
    invoke-interface/range {v2 .. v11}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 11369
    invoke-interface {v2, v3, v12}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAtOpenIdInfo(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    goto :goto_1

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0xca -> :sswitch_6
        0x12c -> :sswitch_7
        0x12d -> :sswitch_7
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_7
        0x1f5 -> :sswitch_7
        0x1f8 -> :sswitch_7
        0x258 -> :sswitch_7
        0x2bc -> :sswitch_7
        0x38a -> :sswitch_7
        0x4b1 -> :sswitch_8
        0x4b3 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2873
    .line 43080
    if-eqz p1, :cond_0

    .line 43084
    new-instance v0, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;-><init>()V

    .line 43085
    iput-object p2, v0, Lcom/alibaba/android/dingtalkim/onebox/floatwindow/FloatWindows;->windows:Ljava/util/List;

    .line 43087
    :try_start_0
    invoke-static {v0}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43088
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43089
    const-string/jumbo v2, "floatingWindow"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43090
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/alibaba/wukong/im/Conversation;->updateExtensionByKeys(Ljava/util/Map;ZLcom/alibaba/wukong/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43094
    :cond_0
    :goto_0
    return-void

    .line 43091
    :catch_0
    move-exception v0

    .line 43092
    const-string/jumbo v1, "im"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "updateFloatWindow toJson, error="

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 43093
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 43092
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 2
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "mid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p4, "callback":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$23;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;JLcma;)V

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public final a(Ljava/lang/String;JZLcma;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "liked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2482
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$40;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;ZLcma;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->d(Ljava/lang/String;JLcma;)V

    .line 2506
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2298
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;>;"
    invoke-static {p1, p2, p3}, Ldio;->a(Ljava/lang/String;Landroid/app/Activity;Lcma;)V

    .line 2299
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;>;"
    const/4 v3, 0x0

    .line 2441
    new-instance v0, Ldim;

    invoke-direct {v0, p1, p3, v3}, Ldim;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Landroid/os/Bundle;)V

    .line 36068
    .local v0, "conversationMembersFetcher":Ldim;
    iget-boolean v1, v0, Ldim;->i:Z

    if-nez v1, :cond_1

    .line 36069
    const/4 v1, 0x1

    iput-boolean v1, v0, Ldim;->i:Z

    .line 36071
    iget-object v1, v0, Ldim;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36072
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "MembersFetcher getConversation cid null"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36073
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36077
    :goto_0
    return-void

    .line 36088
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Ldim$1;

    invoke-direct {v2, v0}, Ldim$1;-><init>(Ldim;)V

    iget-object v3, v0, Ldim;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 36082
    :cond_1
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "MembersFetcher reuse"

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36083
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldim;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Long;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$11;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$11;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    invoke-static {p1, v0}, Ldjl;->a(Ljava/lang/String;Ldjl$a;)V

    .line 989
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;D)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "scaleFactor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 3143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3183
    :goto_0
    return-void

    .line 3147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 3149
    .local v1, "hashCode":I
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lebp;->a(J)Lebo;

    move-result-object v2

    .line 3150
    .local v2, "videoEncode":Lebo;
    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$49;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$49;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    .line 3175
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 3176
    new-instance v2, Lebo;

    .end local v2    # "videoEncode":Lebo;
    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v0}, Lebo;-><init>(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcma;)V

    .line 48051
    .restart local v2    # "videoEncode":Lebo;
    :goto_1
    cmpl-double v3, v6, v6

    if-lez v3, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v6, v4

    if-gtz v3, :cond_1

    .line 48052
    iput-wide v6, v2, Lebo;->g:D

    .line 3181
    :cond_1
    invoke-virtual {v2}, Lebo;->a()V

    .line 3182
    invoke-static {}, Lebp;->a()Lebp;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lebp;->a(JLebo;)V

    goto :goto_0

    .line 47063
    :cond_2
    iput-object v0, v2, Lebo;->e:Lcma;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 2009
    .line 30015
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcma;)V

    .line 2010
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1637
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldxx;->a(Ljava/util/List;Lcma;)V

    .line 1638
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 2700
    .line 38044
    const-string/jumbo v0, "pref_key_efficient_mode_open"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2701
    return-void
.end method

.method public final a(ZLcma;)V
    .locals 2
    .param p1, "isRemind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2568
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Ldxh;->a()Ldxg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldxg;->a(ZLcma;)V

    .line 2569
    return-void
.end method

.method public final a(J)Z
    .locals 7
    .param p1, "orgId"    # J

    .prologue
    .line 2133
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 2134
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v3

    .line 34050
    iget-object v0, v3, Ldhp;->b:Ljava/util/List;

    .line 2135
    .local v0, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 2136
    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 2137
    .local v1, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-wide v4, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2138
    const/4 v3, 0x1

    .line 2142
    .end local v1    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 2581
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v0, :cond_0

    .line 2582
    const/4 v0, 0x1

    .line 2585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z
    .locals 1
    .param p1, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 1719
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldho;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 4
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2742
    .line 39528
    if-eqz p1, :cond_1

    .line 39531
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 39532
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->C(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 39538
    :goto_0
    return v0

    .line 39535
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 39536
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v1, "tag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 39537
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Ldjl;->a(JLjava/util/Map;)J

    move-result-wide v0

    .line 39538
    invoke-static {v0, v1}, Ldjl;->d(J)Z

    move-result v0

    goto :goto_0

    .line 39540
    :cond_1
    const/4 v0, 0x0

    .line 2742
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p3, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 436
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    .line 439
    :cond_1
    new-instance v0, Ldiz;

    invoke-direct {v0, p1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 11413
    invoke-virtual {v0, p2, v1, v1}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 440
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1662
    invoke-static {p1}, Ldjl;->v(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;",
            ">;)",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3187
    .local p1, "filterTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    invoke-static {}, Ldzc;->a()Ldzc;

    .line 49033
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49034
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49036
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49037
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .line 49038
    invoke-static {v0}, Ldzc;->a(Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v0

    .line 49039
    if-eqz v0, :cond_2

    .line 49040
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49043
    :cond_3
    invoke-static {v1}, Ldzc;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)Ldco;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1831
    new-instance v0, Ldco;

    invoke-direct {v0}, Ldco;-><init>()V

    .line 1832
    .local v0, "recordResult":Ldco;
    if-nez p1, :cond_0

    .line 1840
    :goto_0
    return-object v0

    .line 1835
    :cond_0
    const-string/jumbo v1, "tempVideoPath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldco;->a:Ljava/lang/String;

    .line 1836
    const-string/jumbo v1, "tempCoverPath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldco;->b:Ljava/lang/String;

    .line 1837
    const-string/jumbo v1, "videoWidth"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ldco;->c:I

    .line 1838
    const-string/jumbo v1, "videoHeight"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ldco;->d:I

    .line 1839
    const-string/jumbo v1, "videoDuration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ldco;->e:I

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 2783
    .line 40471
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 40479
    :cond_0
    :goto_0
    return-object v0

    .line 40474
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 40475
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x4b0

    if-ne v1, v2, :cond_0

    .line 40476
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v1, :cond_0

    .line 40477
    invoke-static {p1}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40478
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 40479
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .param p2, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3109
    .local p1, "contentInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    invoke-static {p1, p2}, Leaw;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;Z)Ljava/lang/String;
    .locals 1
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    invoke-static {p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;
    .locals 2
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 2862
    if-nez p1, :cond_1

    .line 43073
    :cond_0
    :goto_0
    return-object v0

    .line 2865
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 2866
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 42857
    invoke-static {v0}, Ldwa;->c(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2868
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    .line 43072
    if-eqz v1, :cond_0

    .line 43075
    const-string/jumbo v0, "floatingWindow"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43076
    invoke-static {v0}, Ldwa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3094
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Leaw;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1729
    .local p2, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1730
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1731
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1732
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1733
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1734
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1735
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1737
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Ldlc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "decryptString":Ljava/lang/String;
    invoke-interface {p2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1739
    .end local v0    # "decryptString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1740
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1741
    const-string/jumbo v6, "crypto"

    const-string/jumbo v7, "interface decrypt"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1748
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const/4 p2, 0x0

    .end local p2    # "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object p2
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1883
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    .line 29102
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 29103
    iget-wide v4, v0, Ldpt;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 29104
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "traceEmotion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "db init needn\'t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Ldpt;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29105
    :goto_0
    return-void

    .line 29108
    :cond_0
    sget-object v1, Ldpt;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v4, Ldpt$1;

    invoke-direct {v4, v0, v2, v3}, Ldpt$1;-><init>(Ldpt;J)V

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2431
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ldxx;->c(JJLcma;)V

    .line 2432
    return-void
.end method

.method public final b(JJZLcma;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "includeHide"    # Z
    .param p6, "listener"    # Lcma;

    .prologue
    .line 1796
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Ldxx;->a(JJLjava/lang/Boolean;Lcma;)V

    .line 1797
    return-void
.end method

.method public final b(JLcma;)V
    .locals 1
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1657
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldxx;->e(JLcma;)V

    .line 1658
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 1347
    .line 16156
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1348
    return-void
.end method

.method public final b(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botId"    # J

    .prologue
    .line 2303
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 2315
    :cond_0
    :goto_0
    return-void

    .line 2306
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/robot_setting.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$35;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$35;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2182
    if-eqz p1, :cond_1

    .line 2183
    if-nez p2, :cond_0

    .line 2184
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "bundle":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2186
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2187
    const-string/jumbo v1, "title"

    sget v2, Lctk$i;->create_burn_chat_conversation:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2190
    const-string/jumbo v1, "show_local_contact"

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2191
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;

    const-string/jumbo v1, "boss_create"

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;-><init>(Ljava/lang/String;)V

    .line 2192
    .local v0, "choosePeopleFromContactLogic":Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;
    const-string/jumbo v1, "choose_people_from_contact_logic"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2193
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2195
    .end local v0    # "choosePeopleFromContactLogic":Lcom/alibaba/android/dingtalkim/activities/BurnChatSessionListActivity$ChoosePeopleFromContactLogic;
    :cond_1
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "customerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1313
    .line 16109
    const-wide/16 v2, 0x0

    invoke-static {p2, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1314
    .local v0, "customIdLong":J
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v2

    invoke-virtual {v2}, Ldyn;->c()Ldxx;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 1315
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$21;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$21;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/app/Activity;)V

    const-class v5, Lcma;

    .line 1316
    invoke-interface {v2, v4, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 1314
    invoke-interface {v3, v0, v1, v2}, Ldxx;->b(JLcma;)V

    .line 1334
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "messageId"    # J

    .prologue
    .line 2778
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Ldjm;->a(Landroid/app/Activity;Ljava/lang/String;JZZ)V

    .line 2779
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "videoSize"    # J
    .param p5, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 1866
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1875
    :cond_0
    :goto_0
    return-void

    .line 1869
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;-><init>()V

    .line 1870
    .local v0, "builder":Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 1871
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a(J)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 1872
    invoke-virtual {v0, p5}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 1873
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a(I)Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;

    .line 28258
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo$a;->a:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 1874
    invoke-static {p1, v1}, Lebr;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statisticFrom"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2161
    if-eqz p1, :cond_1

    .line 2162
    if-nez p3, :cond_0

    .line 2163
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "bundle":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2165
    .restart local p3    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2166
    const-string/jumbo v0, "title"

    sget v1, Lctk$i;->create_normal_conversation:I

    .line 2167
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2166
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const-string/jumbo v0, "count_limit_tips"

    sget v1, Lctk$i;->create_conversation_choose_limit:I

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2170
    const-string/jumbo v0, "choose_people_from_contact_logic"

    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/imtools/CreateConversationLogic;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2172
    const-string/jumbo v0, "show_header_existed_group"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2173
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2174
    const-string/jumbo v0, "show_local_contact"

    invoke-static {}, Ldjl;->f()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2175
    const-string/jumbo v0, "im_navigator_from"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2178
    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2896
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    .line 2897
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2953
    if-nez p1, :cond_0

    .line 2969
    :goto_0
    return-void

    .line 2956
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/3rd_party_share.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$45;

    const v3, 0x10008000

    invoke-direct {v2, p0, v3, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$45;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1279
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/fileshelper/settings.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$20;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$20;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1288
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1243
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjc;->a(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public final b(Ljava/lang/String;JLcma;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1632
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ldxx;->b(Ljava/lang/String;JLcma;)V

    .line 1633
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1020
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$13;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Z)V

    .line 1068
    return-void
.end method

.method public final b(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3328
    .local p1, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 3348
    :cond_0
    :goto_0
    return-void

    .line 3331
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$51;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$51;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/wukong/im/MessageService;->listMessageByIds(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2716
    invoke-static {p1}, Ldyz;->a(Z)V

    .line 2718
    if-eqz p1, :cond_0

    .line 2719
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent_action_efficient_mode_force_open"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2721
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Z)V

    .line 2723
    :cond_0
    return-void
.end method

.method public final b(J)Z
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 2421
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "csconfig_group_strict_sync"

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z
    .locals 1
    .param p1, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 1724
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldho;->b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3376
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ldjl;->a(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1672
    invoke-static {p1}, Ldjl;->u(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50029
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ldik$a;->a()Ldik;

    move-result-object v0

    .line 3381
    invoke-virtual {v0, p1}, Ldik;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 226
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v3

    .line 4220
    invoke-static {}, Ldho;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5116
    new-instance v4, Ldho$1;

    invoke-direct {v4, v3}, Ldho$1;-><init>(Ldho;)V

    .line 5157
    new-instance v5, Ldho$2;

    invoke-direct {v5, v3}, Ldho$2;-><init>(Ldho;)V

    .line 4226
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    .line 4228
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v1

    .line 6069
    iget-object v1, v1, Ldhp;->a:Ljava/util/List;

    .line 4228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    .line 4231
    :try_start_0
    invoke-interface {v1, v4}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->setDTHttpRequestProxy(Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;)V

    .line 4232
    invoke-interface {v1, v5}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->setDTGetCodeProxy(Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;)V

    .line 4234
    instance-of v2, v1, Lcom/dbappsecurity/et/EncryptManage;

    if-eqz v2, :cond_2

    .line 4235
    move-object v0, v1

    check-cast v0, Lcom/dbappsecurity/et/EncryptManage;

    move-object v2, v0

    .line 6270
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v8

    const-string/jumbo v9, "f_crypto_sdk_retry_init_v2"

    .line 7083
    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v8

    .line 6270
    if-nez v8, :cond_0

    .line 6271
    const-string/jumbo v8, "crypto"

    sget-object v9, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v10, "feature crypto sdk init after permission close, direct init sdk"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6272
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/dbappsecurity/et/EncryptManage;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 4239
    :goto_1
    new-instance v2, Ldho$3;

    invoke-direct {v2, v3}, Ldho$3;-><init>(Ldho;)V

    invoke-interface {v1, v2}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->setDTSendBroadcastProxy(Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;)V

    .line 4250
    new-instance v2, Ldho$4;

    invoke-direct {v2, v3}, Ldho$4;-><init>(Ldho;)V

    invoke-interface {v1, v2}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->setDTLogProxy(Lcom/alibaba/android/dtencrypt/DTLogProxy;)V
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4256
    :catch_0
    move-exception v1

    .line 4257
    const-string/jumbo v2, "crypto"

    sget-object v8, Ldho;->a:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "init dt err"

    aput-object v10, v9, v12

    invoke-virtual {v1}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    invoke-virtual {v1}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->printStackTrace()V

    goto :goto_0

    .line 6276
    :cond_0
    :try_start_1
    invoke-static {v6}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v8

    invoke-virtual {v8}, Lbzm;->a()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6277
    const-string/jumbo v8, "crypto"

    sget-object v9, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v10, "had imei permission, direct init sdk"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6278
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/dbappsecurity/et/EncryptManage;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4259
    :catch_1
    move-exception v1

    .line 4260
    const-string/jumbo v2, "crypto"

    sget-object v8, Ldho;->a:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "init other err"

    aput-object v10, v9, v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 6280
    :cond_1
    :try_start_2
    const-string/jumbo v8, "crypto"

    sget-object v9, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v10, "no imei permission, need retry init crypto sdk"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6281
    invoke-static {v6}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v8

    new-instance v9, Ldho$5;

    invoke-direct {v9, v3, v6, v2}, Ldho$5;-><init>(Ldho;Landroid/content/Context;Lcom/dbappsecurity/et/EncryptManage;)V

    invoke-virtual {v8, v9}, Lbzm;->a(Lbzl;)V

    goto/16 :goto_1

    .line 4237
    :cond_2
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 4264
    :cond_3
    new-instance v1, Ldhn;

    invoke-direct {v1}, Ldhn;-><init>()V

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->setMessageEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V

    .line 227
    :cond_4
    return-void
.end method

.method public final c(J)V
    .locals 1
    .param p1, "version"    # J

    .prologue
    .line 2816
    invoke-static {}, Ldbu;->a()Ldbu;

    invoke-static {p1, p2}, Ldbu;->a(J)V

    .line 2817
    return-void
.end method

.method public final c(JLcma;)V
    .locals 1
    .param p1, "templateId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2241
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;>;"
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldxu;->a(JLcma;)V

    .line 2242
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 2156
    invoke-virtual {p0, p1, v0, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2157
    return-void
.end method

.method public final c(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botId"    # J

    .prologue
    .line 2319
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return-void

    .line 2322
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/add_robot_complete.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$36;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$36;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;J)V

    .line 2323
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2265
    if-nez p1, :cond_0

    .line 2278
    :goto_0
    return-void

    .line 2268
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/robots_market.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$34;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$34;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qrcode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1364
    const-string/jumbo v0, "https://qr.dingtalk.com/im/join_group_confirm.html"

    .line 1365
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$22;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$22;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1373
    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2901
    .line 44283
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/member_list_oa_and_internal"

    new-instance v2, Ldin$7;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Ldin$7;-><init>(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 44284
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2902
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1392
    const-string/jumbo v0, "https://qr.dingtalk.com/im/join_group_confirm.html"

    .line 1393
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$25;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$25;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1401
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3200
    if-nez p1, :cond_1

    .line 3208
    :cond_0
    :goto_0
    return-void

    .line 3204
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    .line 3205
    new-instance v0, Ldiz;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-direct {v0, v1}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3206
    .local v0, "messageSender":Ldiz;
    const/4 v1, 0x0

    .line 49500
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1248
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjc;->b(Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method public final c(Ljava/lang/String;JLcma;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2458
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p4, :cond_0

    .line 2478
    :goto_0
    return-void

    .line 2462
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$39;

    invoke-direct {v0, p0, p4}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$39;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Lcma;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->d(Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<[B>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2447
    .local p2, "listener":Lcma;, "Lcma<[B>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$38;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2454
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "open"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2821
    .line 42026
    const-string/jumbo v0, "sp_at_me_open"

    invoke-static {v0, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 42038
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_at_me_open_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42039
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2822
    return-void
.end method

.method public final d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 533
    new-instance v0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;-><init>()V

    return-object v0
.end method

.method public final d(J)Ljava/util/List;
    .locals 3
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3011
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3012
    const/4 v0, 0x0

    .line 3014
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldvi;->a(J)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(JLcma;)V
    .locals 1
    .param p1, "robotUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2251
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ldxu;->g(JLcma;)V

    .line 2252
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2557
    if-nez p1, :cond_0

    .line 2561
    :goto_0
    return-void

    .line 2560
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/birth_setting"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2401
    if-nez p1, :cond_0

    .line 2417
    :goto_0
    return-void

    .line 2405
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 2406
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/message_recipient_select_result.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$37;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$37;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/os/Bundle;)V

    .line 2407
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1893
    .line 29180
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29188
    :cond_0
    :goto_0
    return-void

    .line 29184
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 29185
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 29187
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 29192
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldjl$14;

    invoke-direct {v1, p1}, Ldjl$14;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1405
    const-string/jumbo v0, "https://qr.dingtalk.com/im/join_group_confirm.html"

    .line 1406
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$26;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$26;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1414
    return-void
.end method

.method public final d(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "chatbotUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2256
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldxu;->e(Ljava/lang/String;Lcma;)V

    .line 2257
    return-void
.end method

.method public final d(Z)V
    .locals 3
    .param p1, "isResumed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3240
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Z)V

    .line 3242
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 3243
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.android.rimet.home.resumed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3244
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_im_home_resumed"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3245
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3246
    return-void
.end method

.method public final d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1921
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 3353
    invoke-static {p1}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2037
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lebn;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 1191
    invoke-static {}, Ldjw;->a()Ldjw;

    move-result-object v0

    .line 12992
    iget v0, v0, Ldjw;->g:I

    .line 1191
    return v0
.end method

.method public final e(J)V
    .locals 3
    .param p1, "timeStamp"    # J

    .prologue
    .line 3019
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 3023
    :goto_0
    return-void

    .line 3022
    :cond_0
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldvi;->b(J)Ljava/util/List;

    goto :goto_0
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3212
    .line 50020
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/facetoface.html"

    new-instance v2, Ldek$1;

    invoke-direct {v2}, Ldek$1;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3213
    return-void
.end method

.method public final e(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3192
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 3193
    return-void
.end method

.method public final e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2104
    if-nez p2, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2106
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2107
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "corpId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2108
    .local v0, "corpId":Ljava/lang/String;
    const-string/jumbo v4, "result"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 33093
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 33094
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v4

    invoke-interface {v4, v0}, Lddi;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v4

    .line 33095
    if-eqz v4, :cond_0

    .line 33096
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    .line 33097
    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-virtual {p0, p1, v4, v5}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2110
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 2111
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2916
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/member_session_settings.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$43;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$43;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2925
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    .line 2052
    invoke-static {}, Lddg;->a()Lddj;

    move-result-object v0

    invoke-interface {v0, p1}, Lddj;->a(Ljava/lang/String;)V

    .line 2053
    return-void
.end method

.method public final e(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 3250
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ldyz;->a(ZZ)V

    .line 3251
    return-void
.end method

.method public final e(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1929
    invoke-static {p1}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)J
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2124
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    invoke-interface {v0, p1}, Lddi;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    const-string/jumbo v0, "https://qr.dingtalk.com/page/conversation"

    return-object v0
.end method

.method public final f(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3197
    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v1}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    .line 3198
    return-void
.end method

.method public final f(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imHealthStaticsFrom"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2199
    if-nez p1, :cond_0

    .line 2213
    :goto_0
    return-void

    .line 2203
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/joingrouprequest"

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$33;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$33;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final f(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1965
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final g(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1970
    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1213
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v2

    .line 14133
    iget-object v0, v2, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 14134
    iget-object v0, v2, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 14135
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 14137
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14138
    iget-object v4, v2, Ldjz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjz$a;

    .line 14637
    iget-object v1, v1, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 14138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjz$a;

    iget-wide v6, v0, Ldjz$a;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15306
    :cond_1
    iget-object v0, v2, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 15307
    iget-object v0, v2, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 15309
    sget-object v3, Ldjz;->c:Landroid/os/Handler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjz$a;

    iget v0, v0, Ldjz$a;->a:I

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 15312
    :cond_3
    iget-object v0, v2, Ldjz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14143
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v2, Ldjz;->e:Z

    .line 1214
    return-void
.end method

.method public final g(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imHealthStaticsFrom"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2217
    if-nez p1, :cond_0

    .line 2227
    :goto_0
    return-void

    .line 2221
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2222
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2223
    const-string/jumbo v1, "im_navigator_from"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34525
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x51ff

    invoke-static {v2, v3, v4, v5}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v1

    .line 2226
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2811
    invoke-static {}, Ldke;->a()Ldke;

    move-result-object v0

    .line 41054
    const-string/jumbo v1, "sp_key_micro_app_new_ver"

    invoke-static {v1, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41055
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldke;->a(Z)V

    .line 2812
    return-void
.end method

.method public final h(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 2732
    .line 39469
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 39479
    :cond_0
    :goto_0
    return-object v0

    .line 39473
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "c_name_locale"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39474
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "c_name_locale"

    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39475
    :cond_2
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 39476
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 39477
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 39478
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 39479
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 1218
    invoke-static {}, Ldjz;->a()Ldjz;

    move-result-object v0

    invoke-virtual {v0}, Ldjz;->b()V

    .line 1219
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1223
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    .line 16017
    iget-object v0, v0, Ldjc;->a:Ljava/lang/String;

    .line 1223
    return-object v0
.end method

.method public final i(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2747
    invoke-static {p1}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 18048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 1581
    sget-object v1, Ldhc;->a:Ljava/lang/String;

    const-class v2, Ldhc;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 1582
    sget-object v1, Ldkz;->a:Ljava/lang/String;

    const-class v2, Ldkz;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 1584
    sget-object v1, Ldhl;->a:Ljava/lang/String;

    const-class v2, Ldhl;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1585
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 1228
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    .line 16052
    iget-boolean v0, v0, Ldjc;->b:Z

    .line 1228
    return v0
.end method

.method public final j(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2752
    invoke-static {p1}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 1233
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0}, Ldjc;->b()V

    .line 1234
    return-void
.end method

.method public final k(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2757
    invoke-static {p1}, Ldza;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2857
    invoke-static {p1}, Ldwa;->c(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 1238
    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v0

    invoke-virtual {v0}, Ldjc;->a()V

    .line 1239
    return-void
.end method

.method public final m()Lcom/alibaba/wukong/im/EncryptHelper;
    .locals 1

    .prologue
    .line 1754
    new-instance v0, Ldhn;

    invoke-direct {v0}, Ldhn;-><init>()V

    return-object v0
.end method

.method public final m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3130
    const/4 v0, 0x0

    .line 3131
    .local v0, "orgTip":Ljava/lang/String;
    invoke-static {p1}, Ldjl;->F(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3132
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->and_create_org_group_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3138
    :cond_0
    :goto_0
    return-object v0

    .line 3133
    :cond_1
    invoke-static {p1}, Ldjl;->G(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3134
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_contact_eneterprise_list_depart_group:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3135
    :cond_2
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3136
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->conversation_enterprise_dept_tips:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1786
    invoke-static {}, Ldjw;->a()Ldjw;

    .line 26026
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    .line 26098
    invoke-virtual {v0}, Ldks;->c()V

    .line 26027
    invoke-static {}, Ldex;->a()Ldex;

    move-result-object v0

    .line 27036
    const/4 v1, 0x0

    iput-object v1, v0, Ldex;->a:Ljava/lang/String;

    .line 27039
    invoke-static {}, Ldgz$a;->a()Ldgz;

    move-result-object v0

    .line 27220
    iget-object v1, v0, Ldgz;->a:Lfq;

    if-eqz v1, :cond_0

    .line 27221
    iget-object v1, v0, Ldgz;->a:Lfq;

    invoke-virtual {v1}, Lfq;->evictAll()V

    .line 27226
    :cond_0
    iget-object v1, v0, Ldgz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    .line 27227
    iget-object v0, v0, Ldgz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1787
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 1791
    invoke-static {}, Ldjw;->a()Ldjw;

    .line 28032
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    .line 28102
    invoke-virtual {v0}, Ldks;->c()V

    .line 28103
    invoke-virtual {v0}, Ldks;->a()V

    .line 1792
    return-void
.end method

.method public onApplicationCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1617
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->onApplicationCreate()V

    .line 1618
    invoke-static {}, Ldjw;->a()Ldjw;

    move-result-object v1

    .line 20124
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, v1, Ldjw;->f:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 20125
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, v1, Ldjw;->e:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 20126
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v2, v1, Ldjw;->d:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 20127
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, v1, Ldjw;->c:Lcom/alibaba/wukong/im/MessageChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageChangeListener(Lcom/alibaba/wukong/im/MessageChangeListener;)V

    .line 20129
    new-instance v0, Ldjq;

    const-string/jumbo v1, "biz/oapi_push"

    invoke-direct {v0, v1}, Ldjq;-><init>(Ljava/lang/String;)V

    .line 20130
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v0

    invoke-virtual {v0}, Ldlc;->b()V

    .line 20131
    new-instance v0, Ldld;

    const-string/jumbo v1, "biz/encryption_key"

    invoke-direct {v0, v1}, Ldld;-><init>(Ljava/lang/String;)V

    .line 20133
    invoke-static {}, Leal;->a()Leal;

    .line 21086
    invoke-static {}, Leal;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21090
    invoke-static {}, Ldwh;->a()V

    .line 21091
    invoke-static {}, Ldwj;->a()V

    .line 21092
    invoke-static {}, Ldwi;->a()V

    .line 22037
    :cond_0
    invoke-static {}, Ldks;->b()Ldks;

    .line 20137
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-static {}, Ldil;->a()Ldil;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Lfzl;)V

    .line 22436
    invoke-static {}, Lcqx;->a()Lcqx;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$56;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$56;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;)V

    .line 23027
    iput-object v1, v0, Lcqx;->a:Lcra;

    .line 1620
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 1826
    invoke-static {}, Ldsf;->a()Ldsf;

    move-result-object v0

    invoke-virtual {v0}, Ldsf;->b()Z

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 2146
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v0

    invoke-virtual {v0}, Ldlc;->b()V

    .line 2147
    return-void
.end method

.method public final r()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 33032
    const-string/jumbo v0, "video"

    invoke-static {v0}, Lebj;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 32056
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32057
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 32058
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 32059
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 32060
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2043
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 2047
    invoke-static {}, Lddg;->a()Lddj;

    move-result-object v0

    invoke-interface {v0}, Lddj;->b()V

    .line 2048
    return-void
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 2057
    invoke-static {}, Lddg;->a()Lddj;

    move-result-object v0

    invoke-interface {v0}, Lddj;->c()Z

    move-result v0

    return v0
.end method

.method public final u()Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;
    .locals 1

    .prologue
    .line 2261
    new-instance v0, Ldmv;

    invoke-direct {v0}, Ldmv;-><init>()V

    return-object v0
.end method

.method public final v()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2282
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "open_robot"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2283
    .local v0, "needOpenRobot":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 2682
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38036
    const-string/jumbo v0, "pref_key_efficient_mode_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2691
    return v0
.end method

.method public final y()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38071
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "user_settings"

    const-string/jumbo v2, "streamline_mode_quick_menu_enabled"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38073
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39036
    const-string/jumbo v0, "pref_key_efficient_mode_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 38076
    invoke-static {v0}, Ldyz;->a(Z)V

    .line 38077
    :goto_0
    return v0

    .line 38080
    :cond_0
    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 2826
    invoke-static {}, Ldbv;->a()Z

    move-result v0

    return v0
.end method
