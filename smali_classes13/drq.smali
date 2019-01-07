.class public final Ldrq;
.super Ljava/lang/Object;
.source "MessageMoreMenuPresenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView$a;


# instance fields
.field private a:Ldru;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldvj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldru;Ldrt$b;)V
    .locals 2
    .param p1, "manager"    # Ldru;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldru;",
            "Ldrt$b",
            "<",
            "Ldrt$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "view":Ldrt$b;, "Ldrt$b<Ldrt$a;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldrq;->b:Ljava/util/List;

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "manager can not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view can not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Ldrq;->a:Ldru;

    .line 46
    invoke-interface {p2, p0}, Ldrt$b;->setPresenter(Lcjd;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Ldrq;->a:Ldru;

    .line 1075
    iget-object v1, v1, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 72
    if-nez v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvj;

    .line 76
    .local v0, "handler":Ldvj;
    iget-object v1, p0, Ldrq;->a:Ldru;

    .line 2075
    iget-object v1, v1, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 76
    iget-object v2, p0, Ldrq;->a:Ldru;

    .line 3071
    iget-object v2, v2, Ldru;->d:Ljava/util/HashSet;

    .line 76
    invoke-virtual {v0, v1, v2}, Ldvj;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvj;

    invoke-virtual {v0, p2}, Ldvj;->a(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public final a(ILandroid/widget/ImageView;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "iconView"    # Landroid/widget/ImageView;

    .prologue
    .line 57
    iget-object v0, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvj;

    invoke-virtual {v0, p2}, Ldvj;->a(Landroid/widget/ImageView;)V

    .line 58
    return-void
.end method

.method public final a(ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 62
    iget-object v0, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvj;

    invoke-virtual {v0, p2}, Ldvj;->a(Landroid/widget/TextView;)V

    .line 63
    return-void
.end method

.method public final b()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v4, p0, Ldrq;->a:Ldru;

    .line 3079
    iget-object v4, v4, Ldru;->a:Landroid/app/Activity;

    .line 81
    if-eqz v4, :cond_0

    iget-object v4, p0, Ldrq;->a:Ldru;

    .line 4075
    iget-object v4, v4, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 81
    if-nez v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    iget-object v4, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 90
    iget-object v3, p0, Ldrq;->a:Ldru;

    .line 4079
    iget-object v0, v3, Ldru;->a:Landroid/app/Activity;

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ldrq;->b:Ljava/util/List;

    .line 93
    iget-object v3, p0, Ldrq;->b:Ljava/util/List;

    new-instance v4, Ldvg;

    iget-object v5, p0, Ldrq;->a:Ldru;

    invoke-direct {v4, v0, v5}, Ldvg;-><init>(Landroid/app/Activity;Ldru;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {}, Lebc;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Ldrq;->b:Ljava/util/List;

    new-instance v4, Ldvk;

    iget-object v5, p0, Ldrq;->a:Ldru;

    invoke-direct {v4, v0, v5}, Ldvk;-><init>(Landroid/app/Activity;Ldru;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    iget-object v3, p0, Ldrq;->b:Ljava/util/List;

    new-instance v4, Ldva;

    iget-object v5, p0, Ldrq;->a:Ldru;

    invoke-direct {v4, v0, v5}, Ldva;-><init>(Landroid/app/Activity;Ldru;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Ldrq;->b:Ljava/util/List;

    new-instance v4, Ldvc;

    iget-object v5, p0, Ldrq;->a:Ldru;

    invoke-direct {v4, v0, v5}, Ldvc;-><init>(Landroid/app/Activity;Ldru;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v3, p0, Ldrq;->b:Ljava/util/List;

    new-instance v4, Ldvb;

    iget-object v5, p0, Ldrq;->a:Ldru;

    invoke-direct {v4, v0, v5}, Ldvb;-><init>(Landroid/app/Activity;Ldru;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v4, "chat_msg_to_space"

    .line 102
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Ldrq;->b:Ljava/util/List;

    new-instance v4, Lduz;

    iget-object v5, p0, Ldrq;->a:Ldru;

    invoke-direct {v4, v0, v5}, Lduz;-><init>(Landroid/app/Activity;Ldru;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-object v4, p0, Ldrq;->a:Ldru;

    .line 5075
    iget-object v4, v4, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 107
    invoke-virtual {v3, v0, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "microAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 110
    .local v1, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-object v4, p0, Ldrq;->b:Ljava/util/List;

    new-instance v5, Ldvh;

    iget-object v6, p0, Ldrq;->a:Ldru;

    invoke-direct {v5, v0, v6, v1}, Ldvh;-><init>(Landroid/app/Activity;Ldru;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v1    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Ldrq;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Ldrq;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvj;

    .line 130
    .local v0, "handler":Ldvj;
    invoke-virtual {v0}, Ldvj;->a()V

    goto :goto_0

    .line 133
    .end local v0    # "handler":Ldvj;
    :cond_0
    return-void
.end method
