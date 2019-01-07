.class public final Ldeq;
.super Ljava/lang/Object;
.source "ChatGuidePresenter.java"

# interfaces
.implements Ldep$a;


# instance fields
.field a:Ldep$b;

.field b:Z


# direct methods
.method public constructor <init>(Ldep$b;)V
    .locals 5
    .param p1, "view"    # Ldep$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ldeq;->a:Ldep$b;

    .line 49
    iget-object v0, p0, Ldeq;->a:Ldep$b;

    invoke-interface {v0, p0}, Ldep$b;->setPresenter(Lcjd;)V

    .line 1078
    iget-object v0, p0, Ldeq;->a:Ldep$b;

    invoke-interface {v0}, Ldep$b;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 1079
    if-eqz v1, :cond_1

    .line 1083
    invoke-static {v1}, Ldez;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    invoke-static {}, Lebc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 1092
    new-instance v0, Ldeq$1;

    invoke-direct {v0, p0}, Ldeq$1;-><init>(Ldeq;)V

    .line 1109
    iget-object v3, p0, Ldeq;->a:Ldep$b;

    invoke-interface {v3}, Ldep$b;->H()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1110
    const-class v3, Lcma;

    iget-object v4, p0, Ldeq;->a:Ldep$b;

    invoke-interface {v4}, Ldep$b;->H()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1112
    :cond_0
    invoke-static {v1}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1114
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v3

    invoke-virtual {v3}, Ldyn;->j()Ldxz;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ldxz;->a(Ljava/lang/String;Lcma;)V

    .line 1121
    :goto_0
    const-string/jumbo v0, "guideChat"

    const-string/jumbo v2, "0"

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/Conversation;->updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    return-void

    .line 1117
    :cond_2
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v3

    invoke-virtual {v3}, Ldyn;->j()Ldxz;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ldxz;->b(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Ldeq;->b:Z

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
