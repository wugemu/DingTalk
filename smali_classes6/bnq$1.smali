.class final Lbnq$1;
.super Landroid/content/BroadcastReceiver;
.source "TimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnq;


# direct methods
.method constructor <init>(Lbnq;)V
    .locals 0
    .param p1, "this$0"    # Lbnq;

    .prologue
    .line 128
    iput-object p1, p0, Lbnq$1;->a:Lbnq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string/jumbo v6, "circle_on_comment_sent_success"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    const-string/jumbo v6, "circle_on_comment_sent_success"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 138
    .local v1, "o":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v1, :cond_0

    .line 139
    iget-object v6, p0, Lbnq$1;->a:Lbnq;

    invoke-static {v6}, Lbnq;->a(Lbnq;)Lfp;

    move-result-object v6

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 1096
    const/4 v7, 0x0

    invoke-virtual {v6, v8, v9, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    check-cast v4, Ljava/lang/Integer;

    .line 140
    .local v4, "position":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 141
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 142
    .local v3, "pos":I
    iget-object v6, p0, Lbnq$1;->a:Lbnq;

    invoke-static {v6, v3}, Lbnq;->a(Lbnq;I)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v2

    .line 143
    .local v2, "orig":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v2, :cond_0

    .line 144
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 145
    iget-object v6, p0, Lbnq$1;->a:Lbnq;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lbnq;->a(I)V

    goto :goto_0

    .line 149
    .end local v1    # "o":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .end local v2    # "orig":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .end local v3    # "pos":I
    .end local v4    # "position":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v6, "circle_on_before_delete_post"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 150
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 151
    .local v5, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-object v6, p0, Lbnq$1;->a:Lbnq;

    invoke-static {v6}, Lbnq;->b(Lbnq;)Lfp;

    move-result-object v6

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v6, v8, v9, v5}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_0

    .line 152
    .end local v5    # "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    :cond_3
    const-string/jumbo v6, "circle_on_delete_post"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 153
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 154
    .local v5, "postObject":Ljava/lang/Long;
    iget-object v6, p0, Lbnq$1;->a:Lbnq;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lbnq;->a(J)V

    goto :goto_0

    .line 155
    .end local v5    # "postObject":Ljava/lang/Long;
    :cond_4
    const-string/jumbo v6, "circle_on_post_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 157
    .local v5, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-object v6, p0, Lbnq$1;->a:Lbnq;

    invoke-static {v6, v5}, Lbnq;->a(Lbnq;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto/16 :goto_0
.end method
