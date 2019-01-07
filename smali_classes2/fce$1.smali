.class final Lfce$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfce;


# direct methods
.method constructor <init>(Lfce;)V
    .locals 0
    .param p1, "this$0"    # Lfce;

    .prologue
    .line 127
    iput-object p1, p0, Lfce$1;->a:Lfce;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string/jumbo v6, "connection_on_comment_sent_success"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    const-string/jumbo v6, "connection_on_comment_sent_success"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 137
    .local v4, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v4, :cond_0

    .line 138
    iget-object v6, p0, Lfce$1;->a:Lfce;

    invoke-static {v6}, Lfce;->a(Lfce;)Lfp;

    move-result-object v6

    iget-wide v8, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 1096
    const/4 v7, 0x0

    invoke-virtual {v6, v8, v9, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/Integer;

    .line 139
    .local v3, "position":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 141
    .local v2, "pos":I
    iget-object v6, p0, Lfce$1;->a:Lfce;

    invoke-static {v6, v2}, Lfce;->a(Lfce;I)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v1

    .line 142
    .local v1, "orig":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v1, :cond_0

    .line 143
    iget-object v6, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    iput-object v6, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 144
    iget-object v6, p0, Lfce$1;->a:Lfce;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lfce;->a(I)V

    goto :goto_0

    .line 148
    .end local v1    # "orig":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .end local v2    # "pos":I
    .end local v3    # "position":Ljava/lang/Integer;
    .end local v4    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    :cond_2
    const-string/jumbo v6, "connection_on_before_delete_post"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 150
    .restart local v4    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    iget-object v6, p0, Lfce$1;->a:Lfce;

    invoke-static {v6}, Lfce;->b(Lfce;)Lfp;

    move-result-object v6

    iget-wide v8, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-virtual {v6, v8, v9, v4}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_0

    .line 151
    .end local v4    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    :cond_3
    const-string/jumbo v6, "connection_on_delete_post"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 152
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 153
    .local v4, "postObject":J
    iget-object v6, p0, Lfce$1;->a:Lfce;

    invoke-virtual {v6, v4, v5}, Lfce;->a(J)V

    goto :goto_0

    .line 154
    .end local v4    # "postObject":J
    :cond_4
    const-string/jumbo v6, "connection_on_post_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 156
    .local v4, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v4, :cond_0

    .line 157
    iget-object v6, p0, Lfce$1;->a:Lfce;

    invoke-static {v6, v4}, Lfce;->a(Lfce;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto/16 :goto_0
.end method
