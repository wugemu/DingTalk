.class final Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;
.super Lcq;
.source "CommonFilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    .line 362
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 363
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_2

    .line 369
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .line 371
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;

    move-result-object v3

    .line 1265
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a:Lgdb;

    .line 372
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdc;

    move-result-object v3

    .line 2257
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->b:Lgdc;

    .line 373
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I

    move-result v2

    if-lez v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Ljava/lang/String;

    move-result-object v4

    .line 3237
    iput v3, v2, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->c:I

    .line 3238
    iput-object v4, v2, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->d:Ljava/lang/String;

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->f(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    move-result-object v0

    .line 394
    :cond_1
    :goto_0
    return-object v0

    .line 379
    :cond_2
    if-ne p1, v4, :cond_1

    .line 380
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v2

    if-nez v2, :cond_3

    .line 381
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v1, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->k(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-direct {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .line 384
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->a(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->c(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdb;

    move-result-object v3

    .line 4125
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 386
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->g(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lgdc;

    move-result-object v3

    .line 5117
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->j:Lgdc;

    .line 387
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I

    move-result v2

    if-lez v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->h(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->i(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(ILjava/lang/String;)V

    .line 391
    .end local v1    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->j(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;->l(Lcom/alibaba/dingtalk/cspace/filepicker/CommonFilePickerActivity;)I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 404
    const-string/jumbo v0, ""

    return-object v0
.end method
