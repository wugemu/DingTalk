.class public Lcom/alibaba/alimei/mail/widget/MailMenuView;
.super Landroid/widget/LinearLayout;
.source "MailMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/MailMenuView$c;,
        Lcom/alibaba/alimei/mail/widget/MailMenuView$b;,
        Lcom/alibaba/alimei/mail/widget/MailMenuView$a;,
        Lcom/alibaba/alimei/mail/widget/MailMenuView$d;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field public b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

.field public c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

.field public d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

.field public e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laha;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

.field public i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

.field private j:Landroid/widget/ExpandableListView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 220
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 255
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 220
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 260
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 220
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$2;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 265
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 269
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-direct {v0, p1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .line 1293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->setOrientation(I)V

    .line 1294
    new-instance v0, Landroid/widget/ExpandableListView;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    .line 1295
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1296
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    sget v1, Laxo$e;->transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelector(I)V

    .line 1297
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setHorizontalScrollBarEnabled(Z)V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1299
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    .line 1300
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVerticalScrollBarEnabled(Z)V

    .line 1408
    sget v0, Laxo$g;->mail_menu_header:I

    invoke-static {p1, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1410
    sget v0, Laxo$f;->accounts:I

    invoke-static {v1, v0}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    .line 1304
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1306
    sget v0, Laxo$g;->mail_menu_footer:I

    invoke-static {p1, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1307
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1309
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1312
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1313
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2317
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 2318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->j:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 288
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/widget/MailMenuView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 44
    .line 4488
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v0, :cond_2

    .line 4489
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->getCurrentFolder()Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    move-result-object v0

    .line 4490
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 4491
    const-string/jumbo v1, "MailMenuView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "INBOX not found for "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4495
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    if-eqz v1, :cond_1

    .line 4496
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$a;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 4498
    :cond_1
    :goto_0
    return-void

    .line 4500
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->getFolderPos()Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    move-result-object v0

    .line 4501
    if-eqz v0, :cond_1

    .line 4502
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Lcom/alibaba/alimei/mail/widget/MailMenuView$d;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->g:Z

    return v0
.end method

.method private getFolderPos()Lcom/alibaba/alimei/mail/widget/MailMenuView$d;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 533
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .line 535
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Ljava/lang/Object;)Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    invoke-direct {v0, v1, v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 634
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/mail/widget/MailMenuView$b;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$b;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    .line 639
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Lcom/alibaba/alimei/mail/widget/MailMenuView$c;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$c;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V

    .line 641
    .local v2, "newMailListener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    invoke-static {v3}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 642
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryAllFolderMsgCountStatus(Lxv;)V

    .line 644
    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryNewMailCounts(Lxv;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 11
    .param p1, "curAccount"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 323
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v8

    invoke-virtual {v8}, Lacr;->i()Ljava/util/List;

    move-result-object v1

    .line 324
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 325
    :cond_0
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 333
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 334
    .local v4, "childCount":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 336
    .local v3, "actSize":I
    if-le v4, v3, :cond_4

    move v7, v3

    .line 337
    .local v7, "min":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_6

    .line 338
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/widget/AccountItemView;

    .line 340
    .local v2, "actItemView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 341
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 342
    invoke-virtual {v2, v9}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setIsCurrent(Z)V

    .line 347
    :goto_3
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->f:Ljava/util/Map;

    if-eqz v8, :cond_3

    .line 348
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->f:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laha;

    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setNewMailNumModel(Laha;)V

    .line 350
    :cond_3
    invoke-virtual {v2, v9}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a(Z)V

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "accountName":Ljava/lang/String;
    .end local v2    # "actItemView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    .end local v5    # "i":I
    .end local v7    # "min":I
    :cond_4
    move v7, v4

    .line 336
    goto :goto_1

    .line 344
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v2    # "actItemView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    .restart local v5    # "i":I
    .restart local v7    # "min":I
    :cond_5
    invoke-virtual {v2, v10}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setIsCurrent(Z)V

    goto :goto_3

    .line 353
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v2    # "actItemView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    :cond_6
    add-int/lit8 v5, v4, -0x1

    :goto_4
    if-lt v5, v7, :cond_8

    .line 354
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 357
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 353
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 360
    :cond_8
    move v5, v7

    :goto_5
    if-ge v5, v3, :cond_b

    .line 361
    new-instance v2, Lcom/alibaba/alimei/mail/widget/AccountItemView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/alibaba/alimei/mail/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v2    # "actItemView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .restart local v0    # "accountName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 364
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 366
    invoke-virtual {v2, v9}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setIsCurrent(Z)V

    .line 371
    :goto_6
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->f:Ljava/util/Map;

    if-eqz v8, :cond_9

    .line 372
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->f:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laha;

    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setNewMailNumModel(Laha;)V

    .line 374
    :cond_9
    invoke-virtual {v2, v9}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a(Z)V

    .line 376
    new-instance v8, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;

    invoke-direct {v8, p0, v2}, Lcom/alibaba/alimei/mail/widget/MailMenuView$3;-><init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;Lcom/alibaba/alimei/mail/widget/AccountItemView;)V

    invoke-virtual {v2, v8}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 368
    :cond_a
    invoke-virtual {v2, v10}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->setIsCurrent(Z)V

    goto :goto_6

    .line 388
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v2    # "actItemView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    :cond_b
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 389
    if-lez v4, :cond_1

    .line 390
    iget-object v8, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/mail/widget/AccountItemView;

    .line 391
    .local v6, "lastView":Lcom/alibaba/alimei/mail/widget/AccountItemView;
    if-eqz v6, :cond_1

    .line 392
    invoke-virtual {v6, v10}, Lcom/alibaba/alimei/mail/widget/AccountItemView;->a(Z)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    invoke-interface {v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$a;->j()Ljava/lang/String;

    move-result-object p1

    .line 427
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    const-string/jumbo v0, "MailMenuView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "current account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    const-string/jumbo v0, "MailMenuView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "new account is equal to old account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_2
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a()V

    .line 443
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .line 3233
    iput-object p1, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->e:Ljava/lang/String;

    .line 3234
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a:Landroid/content/Context;

    .line 4019
    invoke-static {p1}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    .line 4020
    if-eqz v0, :cond_6

    .line 4021
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/mail/adapter/AliMailboxBuilder;-><init>(Landroid/content/Context;)V

    .line 3234
    :goto_1
    iput-object v0, v1, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    .line 446
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 450
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    if-eqz v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 458
    :cond_5
    invoke-static {p1}, Lafw;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    .line 459
    invoke-static {p1}, Lafw;->g(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    .line 461
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->i:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->h:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 464
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->c:Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsFolderDisplayer;->forceReload()V

    .line 465
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->d:Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->forceReload()V

    .line 467
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a()V

    goto/16 :goto_0

    .line 4023
    :cond_6
    new-instance v0, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/mail/adapter/CommonMailboxBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public getCurrentFolder()Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "currentFolder":Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroupCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 510
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroupCount()I

    move-result v2

    .line 511
    .local v2, "groupCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 512
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v5, v3}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v4

    .line 513
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 514
    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 515
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    .line 518
    check-cast v0, Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 519
    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "groupCount":I
    .end local v3    # "i":I
    .end local v4    # "object":Ljava/lang/Object;
    :cond_0
    move-object v5, v0

    .line 529
    :goto_1
    return-object v5

    .line 511
    .restart local v2    # "groupCount":I
    .restart local v3    # "i":I
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v2    # "groupCount":I
    .end local v3    # "i":I
    .end local v4    # "object":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v5, v5, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    goto :goto_1

    .line 525
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v5, v5, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v5, :cond_0

    .line 526
    iget-object v5, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    goto :goto_1
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v4, 0x1

    .line 556
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .line 557
    .local v1, "selectFolder":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 580
    .end local v1    # "selectFolder":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 560
    .restart local v1    # "selectFolder":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v2, :cond_0

    .line 566
    :cond_2
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 567
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 568
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isNoSelectFolder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    if-eqz v2, :cond_4

    .line 574
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    new-instance v3, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    invoke-direct {v3, p3, p4}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Lcom/alibaba/alimei/mail/widget/MailMenuView$d;)V

    .line 577
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    check-cast v1, Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .end local v1    # "selectFolder":Ljava/lang/Object;
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView$a;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v5, 0x1

    .line 585
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v2, p3}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 586
    .local v1, "selectModel":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 610
    .end local v1    # "selectModel":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 590
    .restart local v1    # "selectModel":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v2, :cond_0

    .line 596
    :cond_2
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 597
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 598
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isNoSelectFolder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    if-eqz v2, :cond_4

    .line 604
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    new-instance v3, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    const/4 v4, -0x1

    invoke-direct {v3, p3, v4}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Lcom/alibaba/alimei/mail/widget/MailMenuView$d;)V

    .line 607
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    check-cast v1, Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .end local v1    # "selectModel":Ljava/lang/Object;
    invoke-interface {v2, v1}, Lcom/alibaba/alimei/mail/widget/MailMenuView$a;->a(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method

.method public setCurrentFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 4
    .param p1, "currentFolder"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 475
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "curFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 479
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .line 4122
    iput-object v0, v2, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->d:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 483
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->e:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Ljava/lang/Object;)Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    move-result-object v1

    .line 484
    .local v1, "index":Lcom/alibaba/alimei/mail/widget/MailMenuView$d;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a(Lcom/alibaba/alimei/mail/widget/MailMenuView$d;)V

    .line 485
    return-void
.end method

.method public setMenuListener(Lcom/alibaba/alimei/mail/widget/MailMenuView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView;->l:Lcom/alibaba/alimei/mail/widget/MailMenuView$a;

    .line 420
    return-void
.end method
