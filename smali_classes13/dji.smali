.class public final Ldji;
.super Ljava/lang/Object;
.source "ConversationCreateHelper.java"


# instance fields
.field final a:Ljava/lang/String;

.field public b:Ldca;

.field c:Landroid/app/Activity;

.field d:Landroid/content/BroadcastReceiver;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ConversationCreateHelper"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldji;->a:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldji;->e:Ljava/util/List;

    .line 55
    iput-object p1, p0, Ldji;->c:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method static synthetic a(Ldji;)V
    .locals 1
    .param p0, "x0"    # Ldji;

    .prologue
    .line 44
    .line 2190
    iget-object v0, p0, Ldji;->c:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2191
    iget-object v0, p0, Ldji;->c:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v7, 0x1

    .line 59
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v6

    sget v8, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v6, v8, :cond_2

    move v6, v7

    .line 63
    :goto_1
    if-nez v6, :cond_4

    .line 64
    iget-object v6, p0, Ldji;->b:Ldca;

    if-eqz v6, :cond_0

    .line 65
    iget-object v6, p0, Ldji;->b:Ldca;

    invoke-interface {v6, p1}, Ldca;->a(Ljava/util/List;)V

    goto :goto_0

    .line 1199
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v8, "f_im_enable_check_similar_group"

    .line 2083
    invoke-virtual {v6, v8, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 1199
    if-eqz v6, :cond_3

    .line 1201
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    const-string/jumbo v8, "enable_conv_create_similar_check"

    invoke-virtual {v6, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 69
    :cond_4
    iget-object v6, p0, Ldji;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 71
    .local v5, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v5, :cond_5

    .line 72
    iget-object v8, p0, Ldji;->e:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    .end local v5    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_7

    .line 76
    iget-object v6, p0, Ldji;->b:Ldca;

    if-eqz v6, :cond_0

    .line 77
    iget-object v6, p0, Ldji;->b:Ldca;

    iget-object v7, p0, Ldji;->e:Ljava/util/List;

    invoke-interface {v6, v7}, Ldca;->a(Ljava/util/List;)V

    goto :goto_0

    .line 82
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Ldji;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 84
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_8

    .line 85
    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 88
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_9
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v2

    .line 89
    .local v2, "currentUserId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    :cond_a
    iget-object v6, p0, Ldji;->c:Landroid/app/Activity;

    instance-of v6, v6, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v6, :cond_b

    .line 2185
    iget-object v6, p0, Ldji;->c:Landroid/app/Activity;

    check-cast v6, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 93
    :cond_b
    new-instance v0, Ldji$1;

    invoke-direct {v0, p0}, Ldji$1;-><init>(Ldji;)V

    .line 129
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    invoke-static {}, Ldxs;->a()Ldxr;

    move-result-object v7

    const-class v6, Lcma;

    iget-object v8, p0, Ldji;->c:Landroid/app/Activity;

    .line 130
    invoke-static {v0, v6, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 129
    invoke-interface {v7, v4, v6}, Ldxr;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method
