.class public Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "SimilarGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcxn;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldjh;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 42
    const-string/jumbo v0, "SimilarGroupActivity"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->h:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->i:Ljava/util/List;

    .line 52
    new-instance v0, Ldjh;

    invoke-direct {v0}, Ldjh;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->j:Ldjh;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Lcxn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->g:Lcxn;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 41
    .line 4091
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 4092
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4093
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4094
    const-string/jumbo v1, "intent_key_conversation_select_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4095
    const-string/jumbo v1, "conversation"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4096
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 4097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->k:Z

    .line 4098
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->finish()V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Ldjh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->j:Ldjh;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 41
    .line 4199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->g:Lcxn;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcxn;->a(Ljava/util/List;)V

    .line 41
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 181
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->finish()V

    .line 182
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->k:Z

    if-nez v0, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->k:Z

    .line 3124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3125
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3126
    const-string/jumbo v1, "intent_key_conversation_select_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3127
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->ll_add_new:I

    if-ne v0, v1, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3113
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3114
    const-string/jumbo v1, "intent_key_conversation_select_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3116
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->k:Z

    .line 3117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->finish()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lctk$g;->activity_similar_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->setContentView(I)V

    .line 59
    sget v0, Lctk$i;->dt_im_choose_exist_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->setTitle(I)V

    .line 60
    sget v0, Lctk$f;->ll_add_new:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->b:Landroid/widget/RelativeLayout;

    .line 61
    sget v0, Lctk$f;->lv_groups:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->c:Landroid/widget/ListView;

    .line 62
    sget v0, Lctk$f;->loading_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->d:Landroid/widget/ProgressBar;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_callback_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->e:Ljava/lang/String;

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_conversation_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->f:Ljava/util/List;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->finish()V

    .line 1072
    :goto_0
    return-void

    .line 1074
    :cond_1
    new-instance v0, Lcxn;

    invoke-direct {v0, p0}, Lcxn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->g:Lcxn;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->g:Lcxn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1087
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->f:Ljava/util/List;

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2132
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2133
    const-string/jumbo v2, "SimilarGroupActivity"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 2134
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 2135
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1141
    const-string/jumbo v2, "SimilarGroupActivity"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/SimilarGroupActivity;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
