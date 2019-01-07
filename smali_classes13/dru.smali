.class public final Ldru;
.super Ljava/lang/Object;
.source "MessagesSelectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldru$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field public b:Lcom/alibaba/wukong/im/Conversation;

.field public c:Ldrt$b;

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Ljava/lang/String;

.field private g:Ldru$a;

.field private h:Ldrt$a;

.field private i:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ILdru$a;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "mode"    # I
    .param p4, "listener"    # Ldru$a;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    .line 48
    iput-object p1, p0, Ldru;->a:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Ldru;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 50
    iput-object p4, p0, Ldru;->g:Ldru$a;

    .line 1055
    packed-switch p3, :pswitch_data_0

    .line 1062
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;

    iget-object v1, p0, Ldru;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/views/MessageMoreMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldru;->c:Ldrt$b;

    .line 1063
    new-instance v0, Ldrq;

    iget-object v1, p0, Ldru;->c:Ldrt$b;

    invoke-direct {v0, p0, v1}, Ldrq;-><init>(Ldru;Ldrt$b;)V

    iput-object v0, p0, Ldru;->h:Ldrt$a;

    .line 1066
    :goto_0
    iget-object v0, p0, Ldru;->c:Ldrt$b;

    iget-object v1, p0, Ldru;->h:Ldrt$a;

    invoke-interface {v0, v1}, Ldrt$b;->setPresenter(Lcjd;)V

    .line 1067
    iget-object v1, p0, Ldru;->c:Ldrt$b;

    iget-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Ldrt$b;->setViewEnabled(Z)V

    .line 52
    return-void

    .line 1057
    :pswitch_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;

    iget-object v1, p0, Ldru;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/views/MessagePickMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldru;->c:Ldrt$b;

    .line 1058
    new-instance v0, Ldrr;

    iget-object v1, p0, Ldru;->c:Ldrt$b;

    invoke-direct {v0, p0, v1}, Ldrr;-><init>(Ldru;Ldrt$b;)V

    iput-object v0, p0, Ldru;->h:Ldrt$a;

    goto :goto_0

    .line 1067
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ldru;->c:Ldrt$b;

    invoke-interface {v0}, Ldrt$b;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Z)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    if-eqz p2, :cond_1

    .line 111
    iget-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    :goto_1
    iget-object v1, p0, Ldru;->c:Ldrt$b;

    iget-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v1, v0}, Ldrt$b;->setViewEnabled(Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 103
    iget-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ldru;->h:Ldrt$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ldru;->h:Ldrt$a;

    invoke-interface {v0}, Ldrt$a;->i()V

    .line 100
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Ldru;->e:Z

    .line 124
    iget-object v0, p0, Ldru;->g:Ldru$a;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ldru;->g:Ldru$a;

    invoke-interface {v0, v1}, Ldru$a;->a(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Ldru;->g:Ldru$a;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Ldru;->g:Ldru$a;

    invoke-interface {v0}, Ldru$a;->a()V

    .line 132
    :cond_1
    iget-object v0, p0, Ldru;->h:Ldrt$a;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Ldru;->h:Ldrt$a;

    invoke-interface {v0}, Ldrt$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Ldru;->c:Ldrt$b;

    invoke-interface {v0}, Ldrt$b;->f()V

    .line 137
    :cond_2
    iget-object v0, p0, Ldru;->g:Ldru$a;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Ldru;->g:Ldru$a;

    invoke-interface {v0, v1}, Ldru$a;->b(Z)V

    .line 140
    :cond_3
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Ldru;->e:Z

    .line 144
    iget-object v0, p0, Ldru;->g:Ldru$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Ldru;->g:Ldru$a;

    invoke-interface {v0, v1}, Ldru$a;->a(Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Ldru;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 149
    iget-object v0, p0, Ldru;->g:Ldru$a;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Ldru;->g:Ldru$a;

    invoke-interface {v0}, Ldru$a;->b()V

    .line 152
    :cond_1
    iget-object v0, p0, Ldru;->c:Ldrt$b;

    invoke-interface {v0}, Ldrt$b;->e()V

    .line 154
    iget-object v0, p0, Ldru;->g:Ldru$a;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Ldru;->g:Ldru$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ldru$a;->c(Z)V

    .line 157
    :cond_2
    return-void
.end method

.method public final e()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iget v0, p0, Ldru;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Ldru;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$d;->chatting_item_select_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Ldru;->i:F

    .line 167
    :cond_0
    iget v0, p0, Ldru;->i:F

    return v0
.end method
