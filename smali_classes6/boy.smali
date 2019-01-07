.class public final Lboy;
.super Ljava/lang/Object;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lboy$a;
    }
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field public c:Lcov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcov",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Landroid/os/Handler;

.field g:Ljava/lang/Runnable;

.field h:Lboy$a;

.field i:I

.field j:Ljava/lang/String;

.field k:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field l:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

.field m:Lboz;

.field public n:Z

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field p:I

.field q:I

.field private r:Landroid/view/View;

.field private s:Lcqt;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lboy$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "recyclerViewOwner"    # Lboy$a;
    .param p3, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p4, "root"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iput-object v0, p0, Lboy;->d:Ljava/util/Map;

    .line 81
    const-string/jumbo v0, ""

    iput-object v0, p0, Lboy;->j:Ljava/lang/String;

    .line 2018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    iput-object v0, p0, Lboy;->o:Ljava/util/Map;

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lboy;->p:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lboy;->q:I

    .line 98
    iput-object p1, p0, Lboy;->a:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lboy;->h:Lboy$a;

    .line 100
    iput-object p3, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 101
    iput-object p4, p0, Lboy;->r:Landroid/view/View;

    .line 2297
    iget-object v0, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    new-instance v1, Lboy$5;

    invoke-direct {v1, p0}, Lboy$5;-><init>(Lboy;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2341
    new-instance v0, Lcqt;

    iget-object v1, p0, Lboy;->a:Landroid/app/Activity;

    iget-object v2, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v3, p0, Lboy;->r:Landroid/view/View;

    new-instance v4, Lboy$6;

    invoke-direct {v4, p0}, Lboy$6;-><init>(Lboy;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcqt;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;Lcqt$b;)V

    iput-object v0, p0, Lboy;->s:Lcqt;

    .line 2353
    iget-object v0, p0, Lboy;->s:Lcqt;

    invoke-virtual {v0}, Lcqt;->d()V

    .line 2354
    iget-object v0, p0, Lboy;->s:Lcqt;

    new-instance v1, Lboy$7;

    invoke-direct {v1, p0}, Lboy$7;-><init>(Lboy;)V

    .line 3094
    iput-object v1, v0, Lcqt;->f:Lcqt$c;

    .line 2388
    iget-object v0, p0, Lboy;->s:Lcqt;

    new-instance v1, Lboy$8;

    invoke-direct {v1, p0}, Lboy$8;-><init>(Lboy;)V

    .line 4090
    iput-object v1, v0, Lcqt;->e:Lcqt$a;

    .line 103
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcov;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "combinedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcov",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "draftListener":Lcov;, "Lcov<Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v1

    .line 262
    .local v1, "impl":Lbpc;
    invoke-virtual {v1, p1}, Lbpc;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    move-result-object v0

    .line 263
    .local v0, "draft":Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;
    if-eqz v0, :cond_2

    .line 264
    invoke-interface {p2, v0}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_2
    new-instance v2, Lboy$4;

    invoke-direct {v2, p1, v1, p2}, Lboy$4;-><init>(Ljava/lang/String;Lbpc;Lcov;)V

    invoke-static {v2}, Lbpa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lboy;)V
    .locals 1
    .param p0, "x0"    # Lboy;

    .prologue
    .line 63
    .line 6533
    iget-object v0, p0, Lboy;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 6534
    iget-object v0, p0, Lboy;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 6535
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 63
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draft"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 6019
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v1, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;>;"
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    iget-object v4, p0, Lboy;->o:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v0, p1, p2, v4}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 505
    .local v0, "commentDraft":Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v2

    .line 509
    .local v2, "impl":Lbpc;
    invoke-virtual {v2, p1}, Lbpc;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    move-result-object v3

    .line 511
    .local v3, "originDraft":Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    invoke-virtual {v2, v0}, Lbpc;->a(Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {v2, p1, v0}, Lbpc;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V

    .line 518
    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 519
    iget-object v4, p0, Lboy;->d:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 520
    :cond_3
    iget-object v4, p0, Lboy;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 521
    iget-object v4, p0, Lboy;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 158
    iput-object v4, p0, Lboy;->c:Lcov;

    .line 4169
    iget-object v0, p0, Lboy;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboy;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboy;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4170
    iget-object v0, p0, Lboy;->f:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4171
    invoke-virtual {p0}, Lboy;->b()V

    .line 4462
    :cond_0
    iget-object v0, p0, Lboy;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4464
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v1

    .line 5019
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4466
    iget-object v0, p0, Lboy;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4467
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4470
    :cond_1
    invoke-virtual {v1, v2}, Lbpc;->a(Ljava/util/Collection;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lboy;->m:Lboz;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lboy;->m:Lboz;

    invoke-virtual {v0}, Lboz;->a()V

    .line 164
    iput-object v4, p0, Lboy;->m:Lboz;

    .line 166
    :cond_3
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V
    .locals 11
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "comment"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-object p1, p0, Lboy;->k:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 194
    iput-object p2, p0, Lboy;->l:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 197
    iput p3, p0, Lboy;->p:I

    .line 198
    const/4 v4, 0x0

    iput v4, p0, Lboy;->q:I

    .line 199
    iget-object v4, p0, Lboy;->h:Lboy$a;

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lboy;->h:Lboy$a;

    invoke-interface {v4}, Lboy$a;->b()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    .line 201
    .local v2, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v2, :cond_1

    .line 202
    iget v4, p0, Lboy;->p:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lboy;->q:I

    .line 209
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    iget-object v4, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-object v4, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v5, Lbpu$d;->tag_item_data:I

    invoke-virtual {v4, v5, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTag(ILjava/lang/Object;)V

    .line 211
    if-eqz p2, :cond_3

    .line 212
    iget-object v3, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 213
    .local v3, "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v3, :cond_2

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 214
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    new-instance v8, Lboy$1;

    invoke-direct {v8, p0}, Lboy$1;-><init>(Lboy;)V

    const-class v9, Lcma;

    iget-object v10, p0, Lboy;->a:Landroid/app/Activity;

    invoke-interface {v4, v8, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    invoke-virtual {v5, v6, v7, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 234
    .end local v3    # "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    :cond_2
    :goto_1
    invoke-static {p1, p2}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "combinedId":Ljava/lang/String;
    iget-object v5, p0, Lboy;->a:Landroid/app/Activity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    new-instance v6, Lboy$3;

    invoke-direct {v6, p0, v0}, Lboy$3;-><init>(Lboy;Ljava/lang/String;)V

    const-class v7, Lcov;

    iget-object v8, p0, Lboy;->a:Landroid/app/Activity;

    invoke-interface {v4, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcov;

    invoke-static {v5, v0, v4}, Lboy;->a(Landroid/app/Activity;Ljava/lang/String;Lcov;)V

    .line 245
    invoke-virtual {p0}, Lboy;->c()V

    goto :goto_0

    .line 232
    .end local v0    # "combinedId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V
    .locals 7
    .param p1, "orgPostObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "commentObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 541
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    .line 542
    iget-object v1, p0, Lboy;->a:Landroid/app/Activity;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbpu$f;->dt_circle_post_too_much_string:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "1000"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 590
    :goto_0
    return-void

    .line 6526
    :cond_0
    iget-object v1, p0, Lboy;->a:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    .line 6527
    iget-object v1, p0, Lboy;->a:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 6528
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 548
    :cond_1
    invoke-static {p1, p3}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "combinedId":Ljava/lang/String;
    iget-object v1, p0, Lboy;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lboy$2;

    invoke-direct {v3, p0, v0}, Lboy$2;-><init>(Lboy;Ljava/lang/String;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lboy;->a:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-static {p1, p2, v1, p3, v2}, Lbpw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcma;)V

    goto :goto_0
.end method

.method b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 446
    iget-object v3, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 448
    .local v1, "tag":Ljava/lang/Object;
    iget-object v3, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v4, Lbpu$d;->tag_item_data:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 450
    .local v2, "tag2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 451
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 453
    .local v0, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-nez v2, :cond_1

    .line 454
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lboy;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lboy;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .end local v2    # "tag2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 455
    .restart local v0    # "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .restart local v2    # "tag2":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-eqz v3, :cond_0

    .line 456
    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .end local v2    # "tag2":Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lboy;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lboy;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 598
    iget-object v0, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboy;->s:Lcqt;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lboy;->s:Lcqt;

    invoke-virtual {v0}, Lcqt;->a()V

    .line 602
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 605
    iget-object v0, p0, Lboy;->s:Lcqt;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lboy;->s:Lcqt;

    invoke-virtual {v0}, Lcqt;->b()V

    .line 608
    :cond_0
    iget-object v0, p0, Lboy;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lboy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lboy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 611
    :cond_1
    iget-object v0, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_2

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lboy;->i:I

    .line 613
    iget-object v0, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 615
    :cond_2
    return-void
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lboy;->s:Lcqt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lboy;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lboy;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    iget-object v1, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v0, p0, Lboy;->s:Lcqt;

    invoke-virtual {v0}, Lcqt;->b()V

    .line 623
    iget-object v0, p0, Lboy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 624
    iget-object v0, p0, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 625
    const/4 v0, 0x1

    goto :goto_0
.end method
