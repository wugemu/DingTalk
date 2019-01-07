.class public final Lfvh;
.super Ljava/lang/Object;
.source "RobotProfilePresenter.java"

# interfaces
.implements Lfvg$a;


# instance fields
.field a:Lfvg$b;

.field b:Lfvf;

.field c:Z

.field d:Z

.field private e:J

.field private f:J

.field private g:Lcom/alibaba/wukong/im/Conversation;

.field private h:Landroid/app/Activity;

.field private i:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;JJLfvg$b;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "botTemplateId"    # J
    .param p4, "botUserId"    # J
    .param p6, "view"    # Lfvg$b;
    .param p7, "activity"    # Landroid/app/Activity;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lfvh;->g:Lcom/alibaba/wukong/im/Conversation;

    .line 45
    iput-wide p2, p0, Lfvh;->e:J

    .line 46
    iput-wide p4, p0, Lfvh;->f:J

    .line 47
    iput-object p6, p0, Lfvh;->a:Lfvg$b;

    .line 48
    iget-object v2, p0, Lfvh;->a:Lfvg$b;

    invoke-interface {v2, p0}, Lfvg$b;->setPresenter(Lcjd;)V

    .line 49
    iput-object p7, p0, Lfvh;->h:Landroid/app/Activity;

    .line 50
    iput-object p8, p0, Lfvh;->i:Landroid/os/Bundle;

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v2, p0, Lfvh;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 54
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    .restart local v1    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "bots_template_id"

    iget-wide v4, p0, Lfvh;->e:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Lfvh;->f()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "conversationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const-string/jumbo v2, "ding_group_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v0    # "conversationId":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "im_bot_profile_page_enter"

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lfvh;->g:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lfvh;->g:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 78
    .line 1065
    iget-wide v2, p0, Lfvh;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-wide v2, p0, Lfvh;->f:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    :cond_0
    move v0, v1

    .line 78
    :goto_0
    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    invoke-interface {v0}, Lfvg$b;->e()V

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 1065
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    invoke-interface {v0}, Lfvg$b;->a()V

    .line 83
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    const-string/jumbo v2, ""

    invoke-interface {v0, v2}, Lfvg$b;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    iget-object v2, p0, Lfvh;->b:Lfvf;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lfvg$b;->a(Lfvf;Z)V

    .line 85
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    invoke-interface {v0}, Lfvg$b;->f()V

    .line 86
    iget-object v0, p0, Lfvh;->b:Lfvf;

    if-nez v0, :cond_1

    .line 87
    iget-wide v2, p0, Lfvh;->e:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1126
    iget-boolean v0, p0, Lfvh;->c:Z

    if-nez v0, :cond_1

    .line 1127
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    invoke-interface {v0}, Lfvg$b;->b()V

    .line 1128
    iput-boolean v1, p0, Lfvh;->c:Z

    .line 1129
    const-string/jumbo v0, "EVENTBUTLER"

    .line 1130
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lfvh$2;

    invoke-direct {v1, p0}, Lfvh$2;-><init>(Lfvh;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lfvh;->h:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1153
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-wide v2, p0, Lfvh;->e:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(JLcma;)V

    goto :goto_1

    .line 89
    :cond_4
    iget-wide v2, p0, Lfvh;->f:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 2096
    iget-boolean v0, p0, Lfvh;->d:Z

    if-nez v0, :cond_1

    .line 2097
    iget-object v0, p0, Lfvh;->a:Lfvg$b;

    invoke-interface {v0}, Lfvg$b;->b()V

    .line 2098
    iput-boolean v1, p0, Lfvh;->d:Z

    .line 2099
    new-instance v0, Lfvh$1;

    invoke-direct {v0, p0}, Lfvh$1;-><init>(Lfvh;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lfvh;->h:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2121
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-wide v2, p0, Lfvh;->f:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(JLcma;)V

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 159
    iget-object v4, p0, Lfvh;->b:Lfvf;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lfvh;->b:Lfvf;

    invoke-virtual {v4}, Lfvf;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lfvh;->b:Lfvf;

    invoke-virtual {v4}, Lfvf;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lfvh;->b:Lfvf;

    .line 3101
    iget-object v4, v4, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 159
    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lfvh;->b:Lfvf;

    .line 4101
    iget-object v3, v4, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 161
    .local v3, "templateObject":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    iget-object v4, p0, Lfvh;->g:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v4, :cond_3

    .line 162
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p0, Lfvh;->g:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)I

    move-result v2

    .line 163
    .local v2, "status":I
    if-eqz v2, :cond_3

    .line 164
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 165
    iget-object v4, p0, Lfvh;->a:Lfvg$b;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lezg$l;->dt_im_bot_inner_disable_add:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lfvg$b;->b(Ljava/lang/String;)V

    .line 187
    .end local v2    # "status":I
    .end local v3    # "templateObject":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v2    # "status":I
    .restart local v3    # "templateObject":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 167
    iget-object v4, p0, Lfvh;->a:Lfvg$b;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lezg$l;->dt_im_bot_outter_disable_add:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lfvg$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v4, p0, Lfvh;->a:Lfvg$b;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lezg$l;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lfvg$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v2    # "status":I
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p0, Lfvh;->h:Landroid/app/Activity;

    iget-object v6, p0, Lfvh;->i:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v3, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;Landroid/os/Bundle;)V

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v4, p0, Lfvh;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 178
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 179
    .restart local v1    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "bots_template_id"

    iget-wide v6, p0, Lfvh;->e:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-direct {p0}, Lfvh;->f()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "conversationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 182
    const-string/jumbo v4, "ding_group_id"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v0    # "conversationId":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "im_bot_profile_addbtn_click"

    invoke-interface {v4, v5, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 191
    iget-object v3, p0, Lfvh;->b:Lfvf;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lfvh;->b:Lfvf;

    invoke-virtual {v3}, Lfvf;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lfvh;->b:Lfvf;

    invoke-virtual {v3}, Lfvf;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    const-string/jumbo v4, "https://pages.dingtalk.com/wow/dingtalk/16120/usepc?lwfrom=20160506122818792"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    iget-object v4, p0, Lfvh;->h:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v2, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lfvh;->b:Lfvf;

    .line 5101
    iget-object v3, v3, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 197
    if-eqz v3, :cond_0

    .line 198
    const-string/jumbo v3, "bots_template_id"

    iget-object v4, p0, Lfvh;->b:Lfvf;

    .line 6101
    iget-object v4, v4, Lfvf;->g:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 198
    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    invoke-direct {p0}, Lfvh;->f()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "conversationId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    const-string/jumbo v3, "ding_group_id"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "im_bot_profile_pcsetbtn_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "conversationId":Ljava/lang/String;
    .end local v2    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 210
    iget-object v1, p0, Lfvh;->b:Lfvf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfvh;->b:Lfvf;

    iget-object v1, v1, Lfvf;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lfvh;->b:Lfvf;

    iget-object v2, v2, Lfvf;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lfvh;->h:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 214
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "im_bot_profile_sourcelink_click"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lfvh;->b:Lfvf;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 224
    .local v2, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v7}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 225
    .local v7, "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-string/jumbo v8, ""

    .line 227
    .local v8, "url":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lfvh;->b:Lfvf;

    iget-object v0, v0, Lfvf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 231
    :goto_1
    iput-object v8, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lfvh;->b:Lfvf;

    iget-object v0, v0, Lfvf;->a:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 233
    aput-object v7, v2, v4

    .line 234
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lfvh;->h:Landroid/app/Activity;

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 228
    :catch_0
    move-exception v6

    .line 229
    .local v6, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method
