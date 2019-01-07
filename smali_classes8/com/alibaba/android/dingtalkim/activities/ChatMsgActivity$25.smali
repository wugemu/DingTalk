.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 7007
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 7010
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->m:Lcom/alibaba/dingtalk/oabase/OAInterface;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v1

    .line 7011
    .local v1, "type":Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    sget-object v2, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v1, v2, :cond_1

    .line 7013
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_space_button_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7014
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-wide v4, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Conversation;)V

    .line 7043
    :cond_0
    :goto_0
    return-void

    .line 7015
    :cond_1
    sget-object v2, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeEmail:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v1, v2, :cond_2

    .line 7017
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_mail_button_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 7018
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aL(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0

    .line 7019
    :cond_2
    sget-object v2, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeQianDao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v1, v2, :cond_4

    .line 7021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7022
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-wide v4, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7023
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_log_button_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 7024
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->b:Z

    if-eqz v2, :cond_3

    .line 7026
    invoke-static {}, Ldke;->a()Ldke;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-virtual {v2, v3}, Ldke;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 7027
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 7029
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->b:Z

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {v2, v3, v4}, Lctm;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    goto :goto_0

    .line 7033
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7034
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-wide v4, v3, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7035
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_log_button_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 7036
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static {v2, v3, v4}, Ldkd;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 7037
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->b:Z

    if-eqz v2, :cond_0

    .line 7039
    invoke-static {}, Ldke;->a()Ldke;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-virtual {v2, v3}, Ldke;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 7040
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$25;->c:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->k(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    goto/16 :goto_0
.end method
