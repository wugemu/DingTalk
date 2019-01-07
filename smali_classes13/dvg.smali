.class public final Ldvg;
.super Ldvj;
.source "ForwardMessageSelectHandler.java"


# instance fields
.field private a:Ldvd;

.field private b:Ldvf;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldru;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manager"    # Ldru;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ldvj;-><init>(Landroid/app/Activity;Ldru;)V

    .line 34
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_merge_forward_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldvg;->c:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ldvg;->a:Ldvd;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ldvg;->a:Ldvd;

    invoke-virtual {v0}, Ldvd;->a()V

    .line 98
    :cond_0
    iget-object v0, p0, Ldvg;->b:Ldvf;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Ldvg;->b:Ldvf;

    invoke-virtual {v0}, Ldvf;->a()V

    .line 101
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Ldvg;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->message_more_forward:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Ldvg;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$e;->message_more_icon_forward:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tv"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Ldvg;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->message_more_forward:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    .local p2, "selectMessages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    iget-boolean v1, p0, Ldvg;->c:Z

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Ldvg;->g:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1104
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1105
    const-string/jumbo v3, "num"

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "0"

    :goto_0
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string/jumbo v1, "chat_more_forward_click"

    invoke-static {v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1107
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Ldvg;->g:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1108
    iget-object v2, p0, Ldvg;->g:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lctk$b;->group_dt_im_forward_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1109
    new-instance v3, Ldvg$1;

    invoke-direct {v3, p0, p1, p2}, Ldvg$1;-><init>(Ldvg;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1128
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 61
    :cond_1
    :goto_1
    return-void

    .line 1105
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Ldvg;->f()Ldvd;

    move-result-object v0

    .line 59
    .local v0, "handler":Ldvj;
    invoke-virtual {v0, p1, p2}, Ldvj;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized f()Ldvd;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldvg;->a:Ldvd;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ldvd;

    iget-object v1, p0, Ldvg;->g:Landroid/app/Activity;

    iget-object v2, p0, Ldvg;->h:Ldru;

    invoke-direct {v0, v1, v2}, Ldvd;-><init>(Landroid/app/Activity;Ldru;)V

    iput-object v0, p0, Ldvg;->a:Ldvd;

    .line 135
    :cond_0
    iget-object v0, p0, Ldvg;->a:Ldvd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()Ldvf;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldvg;->b:Ldvf;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ldvf;

    iget-object v1, p0, Ldvg;->g:Landroid/app/Activity;

    iget-object v2, p0, Ldvg;->h:Ldru;

    invoke-direct {v0, v1, v2}, Ldvf;-><init>(Landroid/app/Activity;Ldru;)V

    iput-object v0, p0, Ldvg;->b:Ldvf;

    .line 142
    :cond_0
    iget-object v0, p0, Ldvg;->b:Ldvf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
