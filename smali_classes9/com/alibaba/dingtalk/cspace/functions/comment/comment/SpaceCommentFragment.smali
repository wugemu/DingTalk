.class public Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "SpaceCommentFragment.java"

# interfaces
.implements Lgdn$b;


# instance fields
.field public a:Lcqt;

.field private b:Lgdn$a;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private f:Landroid/view/ViewStub;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lgdn$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)Lcqt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    return-object v0
.end method

.method public static m()Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final G_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 359
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v1, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 363
    return-void
.end method

.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->icon_comment:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->dt_msg_reaction_no_comments:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 278
    return-void
.end method

.method public final a(Lgdo;Z)V
    .locals 4
    .param p1, "at"    # Lgdo;
    .param p2, "autoAddAt"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    .line 3027
    iget-wide v2, p1, Lgdo;->a:J

    .line 3035
    iget-object v1, p1, Lgdo;->b:Ljava/lang/String;

    .line 284
    invoke-virtual {v0, p2, v2, v3, v1}, Lcqt;->a(ZJLjava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method public final a(Lgqw;)V
    .locals 3
    .param p1, "commentItem"    # Lgqw;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    if-nez v1, :cond_0

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "commentIContentModels":Ljava/util/List;, "Ljava/util/List<Lgqw;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    .line 295
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    .end local v0    # "commentIContentModels":Ljava/util/List;, "Ljava/util/List<Lgqw;>;"
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->notifyDataSetChanged()V

    .line 303
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p1}, Lcms;->a(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 246
    .local p1, "resultData":Ljava/util/List;, "Ljava/util/List<Lgqw;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    .line 248
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->a(Ljava/util/List;)V

    .line 253
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->f:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g:Landroid/view/View;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 258
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lgqw;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 265
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->i:Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 325
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    invoke-virtual {v0}, Lcqt;->b()V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 370
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 375
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 380
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    invoke-interface {v0}, Lgdn$a;->a()V

    .line 215
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    if-nez v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .line 1278
    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a:Lgdp;

    .line 85
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    .line 87
    :cond_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceCommentFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "onCreate: mPresenter is null, after fix, mPresenter: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    .line 88
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->space_comment_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->view_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 98
    sget v1, Lfzs$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    .line 99
    sget v1, Lfzs$f;->swipe_layout_folders_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 100
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->f:Landroid/view/ViewStub;

    .line 102
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 106
    sget v1, Lfzs$f;->input_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 108
    new-instance v1, Lcqt;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v4, Lfzs$f;->rl_root_view:I

    .line 109
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcqt;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Landroid/view/View;Lcqt$b;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    .line 127
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    sget v2, Lfzs$h;->dt_comment_edit_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1310
    iput-object v2, v1, Lcqt;->g:Ljava/lang/String;

    .line 1311
    iget-object v2, v1, Lcqt;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v2

    iget-object v1, v1, Lcqt;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)V

    .line 2090
    iput-object v2, v1, Lcqt;->e:Lcqt$a;

    .line 2161
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 2170
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2190
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 138
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    invoke-interface {v0}, Lgdn$a;->i()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    .line 2392
    iget-object v1, v0, Lcqt;->l:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcqt;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcqt;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    .line 2393
    iget-object v1, v0, Lcqt;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lcqt;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 158
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    invoke-virtual {v0}, Lcqt;->d()V

    .line 147
    :cond_0
    return-void
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 56
    check-cast p1, Lgdn$a;

    .line 3219
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdn$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->b:Lgdn$a;

    .line 56
    return-void
.end method
