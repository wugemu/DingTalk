.class public final Ldde;
.super Ljava/lang/Object;
.source "CategoryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;J)Landroid/text/SpannableString;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 161
    move-object v2, p0

    .line 162
    .local v2, "tempText":Ljava/lang/String;
    invoke-static {p1, p2}, Ldde;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-static {p1, p2}, Ldde;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 165
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-static {p1, p2}, Liap;->b(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->version_low:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    :cond_1
    :goto_0
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    .line 174
    .local v0, "emojiUtil":Lcok;
    invoke-virtual {v0, v2}, Lcok;->a(Ljava/lang/String;)Z

    move-result v1

    .line 175
    .local v1, "isAllEmotion":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    if-eqz v1, :cond_3

    const/high16 v3, 0x41f00000    # 30.0f

    :goto_1
    invoke-static {v4, v2, v3}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v3

    return-object v3

    .line 169
    .end local v0    # "emojiUtil":Lcok;
    .end local v1    # "isAllEmotion":Z
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0

    .line 175
    .restart local v0    # "emojiUtil":Lcok;
    .restart local v1    # "isAllEmotion":Z
    :cond_3
    const/high16 v3, 0x41c00000    # 24.0f

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;FZ)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "defaultHour"    # F
    .param p2, "edit"    # Z

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/category_manager.html"

    new-instance v2, Ldde$1;

    invoke-direct {v2, p2, p1}, Ldde$1;-><init>(ZF)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J[Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "seed"    # J
    .param p3, "cids"    # [Ljava/lang/String;

    .prologue
    .line 137
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Ldde$5;

    invoke-direct {v2, p1, p2, p3}, Ldde$5;-><init>(J[Ljava/lang/String;)V

    .line 138
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 153
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 76
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/category_manager.html"

    new-instance v2, Ldde$2;

    invoke-direct {v2, p1}, Ldde$2;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/category_session.html"

    new-instance v2, Ldde$3;

    invoke-direct {v2, p1}, Ldde$3;-><init>(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x6

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2
    .param p0, "categoryId"    # J

    .prologue
    .line 37
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_category_top_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_conversation_single_chat:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 44
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_category_mtm_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_2
    const-wide/16 v0, 0x6

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 48
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_category_not_disturb_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_3
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_category_work_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_conversation_function_chat:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
