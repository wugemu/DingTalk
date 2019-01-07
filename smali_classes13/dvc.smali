.class public final Ldvc;
.super Ldvj;
.source "FavMessageSelectHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldru;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "manager"    # Ldru;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ldvj;-><init>(Landroid/app/Activity;Ldru;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Ldvc;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Ldvc;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->message_more_favorite_filter:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Ldvc;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->message_more_favorite:I

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
    .line 56
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Ldvc;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$e;->message_more_icon_fav:I

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
    .line 64
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Ldvc;->g:Landroid/app/Activity;

    sget v1, Lctk$i;->message_more_favorite:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 2
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Ldvc;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v0

    iget-object v1, p0, Ldvc;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 49
    :cond_0
    iget-object v0, p0, Ldvc;->h:Ldru;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Ldvc;->h:Ldru;

    invoke-virtual {v0}, Ldru;->d()V

    .line 52
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    invoke-static {p1}, Ldkc;->e(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "chat_more_collection_click"

    return-object v0
.end method
