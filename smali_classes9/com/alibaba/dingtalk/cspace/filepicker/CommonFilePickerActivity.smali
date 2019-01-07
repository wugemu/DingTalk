.class public Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CommonFilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;,
        Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lgdb;

.field private e:Lgdc;

.field private f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

.field private g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

.field private h:I

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h:I

    .line 77
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->m:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->n:Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    .line 80
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->p:Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->r:Landroid/view/View$OnClickListener;

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-gtz p1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    if-lez v1, :cond_0

    .line 282
    const-string/jumbo v1, "(0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 284
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    if-lez v1, :cond_0

    .line 289
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 291
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 293
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    .line 3213
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->q:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3214
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Landroid/view/View;Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;

    .prologue
    .line 56
    .line 3219
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfzs$b;->common_filepicker_filters:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3222
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 3223
    new-instance v3, Lgcz$a;

    aget-object v4, v1, v0

    invoke-direct {v3, v0, v4}, Lgcz$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3226
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 3227
    new-instance v1, Lgcz;

    invoke-direct {v1, p0, v2}, Lgcz;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3228
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 3229
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 3230
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 3231
    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Ljava/util/List;Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$b;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3245
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 3246
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->q:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->d:Lgdb;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    .line 3334
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->d:Lgdb;

    if-eqz v0, :cond_0

    .line 3338
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "chat_sendfile_button_send_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->d:Lgdb;

    .line 4041
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lgdb;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4042
    iget-object v0, v0, Lgdb;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3340
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3342
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3343
    const-string/jumbo v2, "com.workapp.choose.file.from.picker"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3347
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3348
    const-string/jumbo v3, "choose_files_uris"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3349
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3350
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3352
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->finish()V

    .line 56
    return-void

    .line 3345
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->e:Lgdc;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 411
    const/4 v1, 0x1

    .line 412
    .local v1, "flag":Z
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 413
    const/4 v1, 0x0

    .line 424
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 433
    :goto_1
    return-void

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 416
    .local v0, "currentItem":I
    if-nez v0, :cond_2

    .line 417
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->b()Z

    move-result v1

    goto :goto_0

    .line 418
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a()Z

    move-result v1

    goto :goto_0

    .line 428
    .end local v0    # "currentItem":I
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.choose.file.from.picker.cancel"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 432
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x32

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sget v2, Lfzs$g;->activity_common_filepicker:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "completed_back_to_target_action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->n:Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "choose_files_maxsize"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    .line 120
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    if-lez v2, :cond_1

    .line 121
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    if-le v2, v4, :cond_0

    .line 122
    iput v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    .line 124
    :cond_0
    sget v2, Lfzs$h;->choose_file_reach_max:I

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->p:Ljava/lang/String;

    .line 126
    :cond_1
    invoke-static {}, Lgda;->a()Lgda;

    move-result-object v2

    .line 2062
    iget-object v3, v2, Lgda;->a:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 2063
    iget-object v2, v2, Lgda;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$b;->common_filepicker_filters:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->q:[Ljava/lang/String;

    .line 2255
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->d:Lgdb;

    if-nez v2, :cond_2

    .line 2256
    new-instance v2, Lgdb;

    invoke-direct {v2}, Lgdb;-><init>()V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->d:Lgdb;

    .line 2258
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->e:Lgdc;

    if-nez v2, :cond_3

    .line 2259
    new-instance v2, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->e:Lgdc;

    .line 130
    :cond_3
    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const-string/jumbo v3, "AppsFileFilterFragment"

    invoke-virtual {v2, p1, v3}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const-string/jumbo v3, "FilePickerFragment"

    invoke-virtual {v2, p1, v3}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .line 135
    :cond_4
    sget v2, Lfzs$f;->menu_file_filter:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a:Landroid/widget/TextView;

    .line 136
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a:Landroid/widget/TextView;

    sget v3, Lfzs$e;->home_drop_box_arrow_down:I

    invoke-virtual {v2, v8, v8, v3, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 138
    sget v2, Lfzs$f;->filepicker_total_size:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j:Landroid/widget/TextView;

    .line 139
    sget v2, Lfzs$f;->menu_back:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->k:Landroid/widget/ImageView;

    .line 141
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->k:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    sget v2, Lfzs$h;->send:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->l:Ljava/lang/String;

    .line 153
    sget v2, Lfzs$f;->view_pager:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 154
    invoke-static {}, Lgpv;->b()Ljava/lang/String;

    move-result-object v1

    .line 2301
    .local v1, "state":Ljava/lang/String;
    sget v2, Lfzs$f;->btn_ok:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i:Landroid/widget/Button;

    .line 2302
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2325
    invoke-direct {p0, v8}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a(I)V

    .line 2326
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j:Landroid/widget/TextView;

    sget v3, Lfzs$h;->filepicker_total_size:I

    new-array v4, v9, [Ljava/lang/Object;

    const-wide/16 v6, 0x0

    .line 3046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 2326
    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2327
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i:Landroid/widget/Button;

    .line 156
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    iput v10, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h:I

    .line 160
    const-string/jumbo v2, "//ALLSDCARD//"

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->m:Ljava/lang/String;

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3172
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;

    if-nez v2, :cond_5

    .line 3173
    new-instance v2, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Lcn;)V

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;

    .line 3175
    :cond_5
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->b:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 3176
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 3192
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h:I

    if-ne v2, v10, :cond_7

    .line 3193
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :goto_1
    return-void

    .line 163
    :cond_6
    iput v9, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h:I

    goto :goto_0

    .line 3195
    :cond_7
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .line 1604
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->i:Z

    .line 1605
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    if-eqz v1, :cond_1

    .line 1606
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->a(Ljava/util/List;)V

    .line 111
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 438
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.choose.file.from.picker.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 442
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-string/jumbo v1, "AppsFileFilterFragment"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-string/jumbo v1, "FilePickerFragment"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
