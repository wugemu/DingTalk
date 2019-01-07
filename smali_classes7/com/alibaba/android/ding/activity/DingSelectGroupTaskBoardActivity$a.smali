.class final Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;
.super Ljava/lang/Object;
.source "DingSelectGroupTaskBoardActivity.java"

# interfaces
.implements Lbaw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;-><init>(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 93
    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 93
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->finish()V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .param p1, "menuSeed"    # J

    .prologue
    .line 141
    .line 4087
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 141
    if-nez v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ding.choose.group_task_board"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_group_task_board"

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->getSelectedData()Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/data/object/ConversationBoardObject;)V
    .locals 1
    .param p1, "selectedGroupTaskBoard"    # Lcom/alibaba/android/ding/data/object/ConversationBoardObject;

    .prologue
    .line 122
    .line 2087
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->setSelectedData(Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .line 3087
    .local p1, "boardList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/widget/select/SingleSelectedView$a;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$a;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->b(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)Lcom/alibaba/android/ding/widget/select/SingleSelectedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/widget/select/SingleSelectedView;->setDataList(Ljava/util/Collection;)V

    goto :goto_0
.end method
