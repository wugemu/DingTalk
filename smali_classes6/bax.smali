.class public final Lbax;
.super Ljava/lang/Object;
.source "SelectGroupTaskActivityPresenter.java"

# interfaces
.implements Lbaw$a;


# instance fields
.field private a:Lbaw$b;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/data/object/ConversationBoardObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbaw$b;)V
    .locals 0
    .param p1, "view"    # Lbaw$b;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbax;->a:Lbaw$b;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lbax;->a:Lbaw$b;

    iget-wide v2, p0, Lbax;->b:J

    invoke-interface {v0, v2, v3}, Lbaw$b;->a(J)V

    .line 71
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lbax;->a:Lbaw$b;

    invoke-interface {v0}, Lbaw$b;->a()V

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string/jumbo v0, "cid"

    invoke-static {p1, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbax;->c:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "intent_key_menu_seed"

    const-wide/16 v4, 0x0

    invoke-static {p1, v0, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbax;->b:J

    .line 47
    const-string/jumbo v0, "intent_key_group_task_board"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    iput-object v0, p0, Lbax;->d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 48
    const-string/jumbo v0, "intent_key_group_task_board_list"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lbax;->e:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lbax;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    :cond_1
    iget-object v0, p0, Lbax;->a:Lbaw$b;

    invoke-interface {v0}, Lbaw$b;->a()V

    goto :goto_0

    .line 1075
    :cond_2
    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 1076
    if-eqz v0, :cond_3

    iget-object v4, p0, Lbax;->d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v4

    iget-object v6, p0, Lbax;->d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getBoardId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1077
    iput-object v0, p0, Lbax;->d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 1082
    :cond_4
    iget-object v0, p0, Lbax;->a:Lbaw$b;

    iget-object v1, p0, Lbax;->d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    invoke-interface {v0, v1}, Lbaw$b;->a(Lcom/alibaba/android/ding/data/object/ConversationBoardObject;)V

    .line 1083
    iget-object v4, p0, Lbax;->e:Ljava/util/List;

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbax;->f:Ljava/util/List;

    move v1, v2

    .line 1090
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 1091
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 1092
    if-eqz v0, :cond_5

    .line 1093
    iget-object v5, p0, Lbax;->f:Ljava/util/List;

    new-instance v6, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;

    invoke-direct {v6}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2077
    iput-object v7, v6, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->a:Ljava/lang/String;

    .line 2113
    iput-object v0, v6, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->f:Ljava/io/Serializable;

    .line 2122
    iput-boolean v3, v6, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->e:Z

    .line 1094
    if-eqz v1, :cond_6

    move v0, v3

    .line 3095
    :goto_2
    iput-boolean v0, v6, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->c:Z

    .line 3104
    iput-boolean v2, v6, Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;->d:Z

    .line 1093
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1094
    goto :goto_2

    .line 1084
    :cond_7
    iget-object v0, p0, Lbax;->a:Lbaw$b;

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Lbaw$b;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "data"    # Ljava/io/Serializable;

    .prologue
    .line 63
    instance-of v0, p1, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .end local p1    # "data":Ljava/io/Serializable;
    iput-object p1, p0, Lbax;->d:Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .line 66
    :cond_0
    return-void
.end method
