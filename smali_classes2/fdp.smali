.class public final Lfdp;
.super Ljava/lang/Object;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdp$a;
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
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
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
            "Lcom/alibaba/android/user/connection/draft/CommentDraft;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/String;

.field f:Landroid/os/Handler;

.field g:Ljava/lang/Runnable;

.field h:Lfdp$a;

.field i:I

.field j:Ljava/lang/String;

.field public k:Z

.field l:I

.field m:I

.field n:Landroid/widget/PopupWindow;

.field private o:Landroid/view/View;

.field private p:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private q:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

.field private r:Lcqt;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfdp$a;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "recyclerViewOwner"    # Lfdp$a;
    .param p3, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p4, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    iput-object v0, p0, Lfdp;->d:Ljava/util/Map;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lfdp;->j:Ljava/lang/String;

    .line 146
    iput v4, p0, Lfdp;->l:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lfdp;->m:I

    .line 108
    iput-object p1, p0, Lfdp;->a:Landroid/app/Activity;

    .line 109
    iput-object p2, p0, Lfdp;->h:Lfdp$a;

    .line 110
    iput-object p3, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 111
    iput-object p4, p0, Lfdp;->o:Landroid/view/View;

    .line 1257
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-nez v0, :cond_0

    .line 1258
    iput-boolean v3, p0, Lfdp;->s:Z

    .line 1259
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 1260
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setMinimumHeight(I)V

    .line 1261
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1262
    iget-object v1, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_cell_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setBackgroundColor(I)V

    .line 1264
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    .line 1265
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1266
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1267
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1268
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1269
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1270
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1271
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1272
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1273
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1275
    :cond_0
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    new-instance v1, Lfdp$3;

    invoke-direct {v1, p0}, Lfdp$3;-><init>(Lfdp;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1320
    new-instance v0, Lcqt;

    iget-object v1, p0, Lfdp;->a:Landroid/app/Activity;

    iget-object v2, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v3, p0, Lfdp;->o:Landroid/view/View;

    new-instance v4, Lfdp$4;

    invoke-direct {v4, p0}, Lfdp$4;-><init>(Lfdp;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcqt;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;Lcqt$b;)V

    iput-object v0, p0, Lfdp;->r:Lcqt;

    .line 1332
    iget-object v0, p0, Lfdp;->r:Lcqt;

    invoke-virtual {v0}, Lcqt;->d()V

    .line 1333
    iget-object v0, p0, Lfdp;->r:Lcqt;

    new-instance v1, Lfdp$5;

    invoke-direct {v1, p0}, Lfdp$5;-><init>(Lfdp;)V

    .line 2094
    iput-object v1, v0, Lcqt;->f:Lcqt$c;

    .line 1370
    iget-object v0, p0, Lfdp;->r:Lcqt;

    new-instance v1, Lfdp$6;

    invoke-direct {v1, p0}, Lfdp$6;-><init>(Lfdp;)V

    .line 3090
    iput-object v1, v0, Lcqt;->e:Lcqt$a;

    .line 113
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
            "Lcom/alibaba/android/user/connection/draft/CommentDraft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "draftListener":Lcov;, "Lcov<Lcom/alibaba/android/user/connection/draft/CommentDraft;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v1

    .line 221
    .local v1, "impl":Lfdu;
    invoke-virtual {v1, p1}, Lfdu;->c(Ljava/lang/String;)Lcom/alibaba/android/user/connection/draft/CommentDraft;

    move-result-object v0

    .line 222
    .local v0, "draft":Lcom/alibaba/android/user/connection/draft/CommentDraft;
    if-eqz v0, :cond_2

    .line 223
    invoke-interface {p2, v0}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_2
    new-instance v2, Lfdp$2;

    invoke-direct {v2, p1, v1, p2}, Lfdp$2;-><init>(Ljava/lang/String;Lfdu;Lcov;)V

    invoke-static {v2}, Lfds;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lfdp;)V
    .locals 1
    .param p0, "x0"    # Lfdp;

    .prologue
    .line 72
    .line 6504
    iget-object v0, p0, Lfdp;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 6505
    iget-object v0, p0, Lfdp;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 6506
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 72
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draft"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 5020
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/draft/CommentDraft;>;"
    new-instance v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v4}, Lcom/alibaba/android/user/connection/draft/CommentDraft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 476
    .local v0, "commentDraft":Lcom/alibaba/android/user/connection/draft/CommentDraft;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v2

    .line 480
    .local v2, "impl":Lfdu;
    invoke-virtual {v2, p1}, Lfdu;->c(Ljava/lang/String;)Lcom/alibaba/android/user/connection/draft/CommentDraft;

    move-result-object v3

    .line 482
    .local v3, "originDraft":Lcom/alibaba/android/user/connection/draft/CommentDraft;
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    invoke-virtual {v2, v0}, Lfdu;->a(Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {v2, p1, v0}, Lfdu;->a(Ljava/lang/String;Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    .line 489
    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 490
    iget-object v4, p0, Lfdp;->d:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 491
    :cond_3
    iget-object v4, p0, Lfdp;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lfdp;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 125
    iput-object v2, p0, Lfdp;->c:Lcov;

    .line 3136
    iget-object v0, p0, Lfdp;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdp;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdp;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3137
    iget-object v0, p0, Lfdp;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3138
    invoke-virtual {p0}, Lfdp;->b()V

    .line 3429
    :cond_0
    iget-object v0, p0, Lfdp;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3433
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v1

    .line 4020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3435
    iget-object v0, p0, Lfdp;->d:Ljava/util/Map;

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

    .line 3436
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3439
    :cond_1
    invoke-virtual {v1, v2}, Lfdu;->a(Ljava/util/Collection;)V

    .line 133
    :cond_2
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;I)V
    .locals 9
    .param p1, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "comment"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lfdp;->p:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 158
    iput-object p2, p0, Lfdp;->q:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 161
    iput p3, p0, Lfdp;->l:I

    .line 162
    iput v8, p0, Lfdp;->m:I

    .line 163
    iget-object v4, p0, Lfdp;->h:Lfdp$a;

    if-eqz v4, :cond_1

    .line 164
    iget-object v4, p0, Lfdp;->h:Lfdp$a;

    invoke-interface {v4}, Lfdp$a;->b()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    .line 165
    .local v2, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v2, :cond_1

    .line 166
    iget v4, p0, Lfdp;->l:I

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, "itemView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lfdp;->m:I

    .line 173
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    iget-object v4, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTag(Ljava/lang/Object;)V

    .line 174
    iget-object v4, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v5, Lezg$h;->tag_item_data:I

    invoke-virtual {v4, v5, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setTag(ILjava/lang/Object;)V

    .line 176
    if-eqz p2, :cond_2

    .line 177
    iget-object v3, p2, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 178
    .local v3, "userObject":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    iget-object v4, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lfdp;->a:Landroid/app/Activity;

    sget v7, Lezg$l;->dt_circle_comment_reply2:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ":"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 202
    .end local v3    # "userObject":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    :goto_1
    invoke-static {p1, p2}, Lcom/alibaba/android/user/connection/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "combinedId":Ljava/lang/String;
    iget-object v5, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    new-instance v6, Lfdp$1;

    invoke-direct {v6, p0}, Lfdp$1;-><init>(Lfdp;)V

    const-class v7, Lcov;

    iget-object v8, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-interface {v4, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcov;

    invoke-static {v5, v0, v4}, Lfdp;->a(Landroid/app/Activity;Ljava/lang/String;Lcov;)V

    .line 212
    invoke-virtual {p0}, Lfdp;->c()V

    goto :goto_0

    .line 200
    .end local v0    # "combinedId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Ljava/lang/String;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V
    .locals 9
    .param p1, "orgPostObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "commentObject"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_1

    .line 513
    iget-object v3, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v4

    sget v5, Lezg$l;->dt_circle_post_too_much_string:I

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "1000"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-static {p1, p3}, Lcom/alibaba/android/user/connection/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "combinedId":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5497
    iget-object v3, p0, Lfdp;->a:Landroid/app/Activity;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_2

    .line 5498
    iget-object v3, p0, Lfdp;->a:Landroid/app/Activity;

    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 5499
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 523
    :cond_2
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;-><init>()V

    .line 524
    .local v1, "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    iput v6, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    .line 525
    iput-object p2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    .line 526
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->uuid:Ljava/lang/String;

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->createAt:J

    .line 528
    if-eqz p3, :cond_3

    .line 529
    iget-wide v4, p3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    iput-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    .line 530
    iget-object v3, p3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 532
    :cond_3
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-nez v3, :cond_4

    .line 533
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 534
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 535
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    .line 537
    :cond_4
    new-instance v3, Lfdp$8;

    invoke-direct {v3, p0, v0}, Lfdp$8;-><init>(Lfdp;Ljava/lang/String;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-static {v3, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 6036
    .local v2, "listener":Lcma;
    sget-object v3, Lfdm$a;->a:Lfdk;

    .line 574
    iget-wide v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-interface {v3, v4, v5, v1, v2}, Lfdk;->a(JLcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;Lcma;)V

    goto :goto_0
.end method

.method b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 413
    iget-object v3, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 415
    .local v1, "tag":Ljava/lang/Object;
    iget-object v3, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v4, Lezg$h;->tag_item_data:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 417
    .local v2, "tag2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 418
    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 420
    .local v0, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-nez v2, :cond_1

    .line 421
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/android/user/connection/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfdp;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lfdp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v0    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .end local v2    # "tag2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 422
    .restart local v0    # "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .restart local v2    # "tag2":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    if-eqz v3, :cond_0

    .line 423
    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .end local v2    # "tag2":Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/alibaba/android/user/connection/draft/CommentDraft;->getCombinedId(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfdp;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lfdp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 585
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdp;->r:Lcqt;

    if-eqz v0, :cond_0

    .line 586
    iget-boolean v0, p0, Lfdp;->s:Z

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lfdp;->h:Lfdp$a;

    invoke-interface {v1}, Lfdp$a;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 589
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 590
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lfdp;->r:Lcqt;

    invoke-virtual {v0}, Lcqt;->a()V

    .line 592
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lfdp;->r:Lcqt;

    invoke-virtual {v0}, Lcqt;->a()V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 601
    iget-object v0, p0, Lfdp;->r:Lcqt;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lfdp;->r:Lcqt;

    invoke-virtual {v0}, Lcqt;->b()V

    .line 604
    :cond_0
    iget-boolean v0, p0, Lfdp;->s:Z

    if-eqz v0, :cond_1

    .line 605
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 607
    :cond_1
    iget-object v0, p0, Lfdp;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 610
    :cond_2
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_3

    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lfdp;->i:I

    .line 612
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 618
    :cond_3
    return-void
.end method

.method public final e()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 621
    iget-object v1, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfdp;->r:Lcqt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfdp;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    iget-boolean v1, p0, Lfdp;->s:Z

    if-eqz v1, :cond_2

    .line 625
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 627
    :cond_2
    iget-object v1, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget-object v0, p0, Lfdp;->r:Lcqt;

    invoke-virtual {v0}, Lcqt;->b()V

    .line 629
    iget-object v0, p0, Lfdp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 630
    iget-object v0, p0, Lfdp;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lfdp;->n:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 634
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
