.class public final Ldin;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "newTask"    # Z

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 242
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 214
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ldin$5;

    invoke-direct {v0, p0, p1, p2}, Ldin$5;-><init>(Landroid/content/Context;Landroid/os/Bundle;Z)V

    .line 238
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 239
    const-class v1, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 241
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-wide/32 v2, 0x188b95b1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;ZI)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "newTask"    # Z
    .param p3, "recruitmentRole"    # I

    .prologue
    .line 313
    if-nez p0, :cond_1

    .line 354
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    if-nez p3, :cond_3

    .line 318
    const-wide/32 v8, 0x1ba4a51b

    .line 324
    .local v8, "userId":J
    :goto_1
    move-wide v6, v8

    .line 325
    .local v6, "finalUserId":J
    new-instance v1, Ldin$8;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Ldin$8;-><init>(Landroid/content/Context;Landroid/os/Bundle;ZIJ)V

    .line 349
    .local v1, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 350
    const-class v0, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {v1, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v1, Lcma;

    .line 352
    .restart local v1    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 319
    .end local v1    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .end local v6    # "finalUserId":J
    .end local v8    # "userId":J
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 320
    const-wide/32 v8, 0x1ba4a51a

    .restart local v8    # "userId":J
    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 1252
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/member_list.html"

    new-instance v2, Ldin$6;

    invoke-direct {v2, p3, p1, p2}, Ldin$6;-><init>(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1253
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 44
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Bundle;ZLjava/lang/String;I)V
    .locals 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 44
    .line 1358
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/campus_recruitment_and_internal.html"

    new-instance v2, Ldin$9;

    invoke-direct {v2, p3, p4, p1, p2}, Ldin$9;-><init>(Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 1359
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 44
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;Z)V
    .locals 7
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Z

    .prologue
    const/4 v6, 0x0

    .line 44
    .line 1149
    if-eqz p1, :cond_0

    .line 1150
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 1152
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/children_list.html"

    new-instance v2, Ldin$3;

    invoke-direct {v2, p1}, Ldin$3;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 1153
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    const-string/jumbo v0, "https://qr.dingtalk.com/page/conversation"

    .line 1164
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    .line 1165
    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1166
    const-string/jumbo v0, "https://qr.dingtalk.com/page/office"

    move-object v1, v0

    .line 1180
    :goto_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 1181
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    new-instance v2, Ldin$4;

    invoke-direct {v2, p2, p1, p3}, Ldin$4;-><init>(Landroid/os/Bundle;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1182
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1167
    :cond_2
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 1168
    const-string/jumbo v0, "https://qr.dingtalk.com/page/channel"

    move-object v1, v0

    goto :goto_1

    .line 1169
    :cond_3
    invoke-static {p1}, Ldzb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1170
    invoke-static {p0, v6, p3}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1172
    :cond_4
    invoke-static {p1}, Ldyq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1173
    const/4 v0, 0x1

    invoke-static {p0, v6, p3, v0}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    goto :goto_0

    .line 1175
    :cond_5
    invoke-static {p1}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1176
    const/4 v0, 0x0

    invoke-static {p0, v6, p3, v0}, Ldin;->a(Landroid/content/Context;Landroid/os/Bundle;ZI)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method
