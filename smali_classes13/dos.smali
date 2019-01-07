.class public final Ldos;
.super Ldpi;
.source "MenuCommentReplyHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ldpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lckl;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Message;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameWrapper"    # Lckl;
    .param p3, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "menuSeed"    # J

    .prologue
    .line 35
    if-eqz p2, :cond_0

    .line 1039
    iget-object v2, p2, Lckl;->d:Ljava/lang/String;

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "displayName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent_action_show_comment_response"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v2, "user_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v2, "intent_key_menu_seed"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 46
    return-void

    .line 2039
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p2, Lckl;->d:Ljava/lang/String;

    .line 38
    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_0
.end method
