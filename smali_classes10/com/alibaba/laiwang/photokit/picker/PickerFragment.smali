.class public Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
.super Landroid/support/v4/app/Fragment;
.source "PickerFragment.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;,
        Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;
    }
.end annotation


# instance fields
.field public a:Lhca;

.field public b:Z

.field public c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

.field d:Lhca$b;

.field private e:Lhbl;

.field private f:Landroid/widget/GridView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/net/Uri;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

.field private y:Ljava/lang/String;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 101
    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->r:I

    .line 107
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->w:Z

    .line 128
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d:Lhca$b;

    .line 830
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->x:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    return-object p1
.end method

.method public static a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad param bundle,it is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;-><init>()V

    .line 123
    .local v0, "fragment":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhca;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 386
    if-nez p1, :cond_0

    .line 412
    :goto_0
    return-object v3

    .line 390
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 391
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 392
    .local v7, "actualimagecursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 393
    .local v8, "path":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 395
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 396
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 397
    .local v6, "actual_image_column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 400
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v6    # "actual_image_column_index":I
    :cond_1
    :goto_1
    if-nez v8, :cond_2

    .line 410
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v8

    .line 412
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 406
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    .line 6642
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    invoke-virtual {v0}, Lhca;->b()Ljava/util/List;

    move-result-object v0

    .line 6643
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 6644
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6645
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    const-string/jumbo v2, "%s(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget v6, Liff$f;->chat_pic_preview:I

    invoke-virtual {p0, v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6647
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 6648
    if-nez v0, :cond_1

    move-wide v0, v4

    :goto_1
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 6649
    goto :goto_0

    .line 6648
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentSize()J

    move-result-wide v0

    goto :goto_1

    .line 6650
    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 6651
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j:Landroid/widget/TextView;

    sget v1, Liff$f;->origin_pic_choose:I

    invoke-virtual {p0, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6656
    :goto_2
    return-void

    .line 6653
    :cond_3
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6657
    :cond_4
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6658
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    sget v1, Liff$f;->chat_pic_preview:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6659
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    .line 7347
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7348
    sget v1, Liff$e;->picedit_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7349
    sget v0, Liff$d;->picedit_photo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7350
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 7352
    sget v0, Liff$d;->picedit_location:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7353
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7354
    sget v0, Liff$d;->picedit_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7355
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7356
    sget v0, Liff$d;->picedit_year:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7357
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7358
    sget v0, Liff$d;->picedit_time:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7359
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7360
    sget v0, Liff$d;->picedit_region:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 7362
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7363
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 7364
    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$3;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)Z
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 7816
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    if-nez v1, :cond_1

    .line 7822
    :cond_0
    :goto_0
    return v0

    .line 7819
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    .line 7820
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v3

    .line 7821
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    .line 8214
    if-eqz p1, :cond_2

    iget-object v4, v1, Lhbl;->d:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lhbl;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8215
    :cond_2
    const/4 v1, -0x1

    .line 7822
    :goto_1
    if-lt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 8217
    :cond_3
    iget-object v1, v1, Lhbl;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lhbl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->n:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->p:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->x:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    .line 1903
    iget-object v1, v0, Lhca;->d:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lhca;->d:Ljava/util/List;

    .line 1907
    new-instance v1, Lhca$c;

    new-instance v2, Lhca$7;

    invoke-direct {v2, v0}, Lhca$7;-><init>(Lhca;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhca$c;-><init>(Ljava/lang/Runnable;B)V

    .line 2144
    iget-object v0, v0, Lhca;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2145
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2146
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 2147
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhca;->c(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public final b()V
    .locals 13
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 771
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->s:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 773
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 774
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "time"

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->s:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string/jumbo v6, "username"

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->v:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string/jumbo v6, "address"

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->t:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string/jumbo v6, "dateWeather"

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->u:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string/jumbo v6, "front_camera"

    iget-boolean v7, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->w:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 813
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 785
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lhcs;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 788
    .local v2, "imageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 789
    .local v5, "parentFile":Ljava/io/File;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 790
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 793
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    .line 794
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    .line 795
    .local v4, "outputUrl":Landroid/net/Uri;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_2

    .line 796
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 798
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "output"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 800
    iget-boolean v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->w:Z

    if-eqz v6, :cond_3

    .line 801
    const-string/jumbo v6, "android.intent.extras.CAMERA_FACING"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 804
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "imageFile":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "outputUrl":Landroid/net/Uri;
    .end local v5    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget v6, Liff$f;->sdcard_unavailable:I

    invoke-static {v6}, Lhcn;->a(I)V

    .line 808
    const-string/jumbo v6, "Pick"

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "start camera:"

    aput-object v8, v7, v11

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Pick"

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "start camera:"

    aput-object v8, v7, v11

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 754
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 755
    if-eqz p1, :cond_0

    .line 756
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    .line 758
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 665
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 666
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-ne p1, v9, :cond_0

    .line 667
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->s:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    .line 670
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    if-eqz v2, :cond_0

    .line 672
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 673
    .local v0, "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v9, v2, v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 674
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v8, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    invoke-interface {v1, v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Ljava/util/List;)V

    .line 708
    .end local v0    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    .end local v8    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 687
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->o:Z

    if-eqz v2, :cond_2

    .line 5714
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 5715
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 5716
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 5717
    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v6, v7, v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$a;-><init>(Ljava/lang/String;Landroid/content/Context;B)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 690
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l:Z

    if-eqz v2, :cond_3

    .line 691
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    if-eqz v2, :cond_0

    .line 692
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 693
    .restart local v0    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v9, v2, v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 694
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    invoke-interface {v1, v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto :goto_0

    .line 698
    .end local v0    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    if-eqz v2, :cond_0

    .line 700
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 701
    .restart local v0    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v9, v2, v3}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->setSelected(ZJ)V

    .line 702
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .restart local v8    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    invoke-interface {v1, v8}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 222
    .end local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    :goto_0
    return-void

    .line 180
    .restart local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    :cond_0
    const-string/jumbo v3, "album_single"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l:Z

    .line 181
    const-string/jumbo v3, "album_choose_num"

    const/16 v6, 0x9

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->n:I

    .line 182
    const-string/jumbo v3, "album_need_save"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->o:Z

    .line 183
    const-string/jumbo v3, "album_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 184
    const-string/jumbo v3, "album_mode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object v2, p0

    .line 187
    .end local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .local v2, "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    :goto_1
    iput v3, v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->r:I

    .line 189
    const-string/jumbo v3, "album_hide_function_button"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->m:Z

    .line 190
    const-string/jumbo v3, "send_origin_picture"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    .line 191
    const-string/jumbo v3, "video_compress"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->p:Z

    .line 192
    const-string/jumbo v3, "allow_check_origin_origin_picture"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->q:Z

    .line 194
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->s:Ljava/lang/String;

    .line 195
    const-string/jumbo v3, "dateWeather"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->u:Ljava/lang/String;

    .line 196
    const-string/jumbo v3, "username"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->v:Ljava/lang/String;

    .line 197
    const-string/jumbo v3, "address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->t:Ljava/lang/String;

    .line 198
    const-string/jumbo v3, "front_camera"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->w:Z

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "pref_folder_id"

    invoke-static {v3, v6}, Lhcy;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    .line 1163
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->r:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->r:I

    if-ne v3, v7, :cond_8

    :cond_1
    move v3, v4

    .line 202
    :goto_2
    if-nez v3, :cond_2

    const-string/jumbo v3, "ALL_VIDEO"

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const-string/jumbo v3, "ALL"

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    const-string/jumbo v3, "ALL"

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    .line 1167
    :cond_3
    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->r:I

    if-ne v3, v7, :cond_9

    .line 209
    :goto_3
    if-eqz v4, :cond_4

    .line 210
    const-string/jumbo v3, "ALL_VIDEO"

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->y:Ljava/lang/String;

    .line 214
    :cond_4
    new-instance v3, Lhca;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->r:I

    invoke-direct {v3, v4, v5}, Lhca;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    .line 215
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->d:Lhca$b;

    .line 1171
    iput-object v4, v3, Lhca;->h:Lhca$b;

    .line 1225
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->z:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_5

    .line 1228
    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$2;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->z:Landroid/content/BroadcastReceiver;

    .line 1291
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.workapp.choose.pictire.from.preview"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1292
    const-string/jumbo v4, "action_edit_picture_change"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 221
    :cond_5
    invoke-static {p0}, Lhbp;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    goto/16 :goto_0

    .line 186
    .end local v2    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .restart local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    :cond_6
    const-string/jumbo v3, "album_show_video"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 187
    .local v1, "showVideo":Z
    if-eqz v1, :cond_7

    move v3, v4

    move-object v2, p0

    .end local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .restart local v2    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    goto/16 :goto_1

    .end local v2    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .restart local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    :cond_7
    move v3, v5

    move-object v2, p0

    .end local p0    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .restart local v2    # "this":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    goto/16 :goto_1

    .end local v1    # "showVideo":Z
    :cond_8
    move v3, v5

    .line 1163
    goto/16 :goto_2

    :cond_9
    move v4, v5

    .line 1167
    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 335
    sget v1, Liff$e;->fragment_layout_picker:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "root":Landroid/view/View;
    new-instance v1, Lhbl;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l:Z

    iget-boolean v4, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->p:Z

    invoke-direct {v1, v2, v3, v4}, Lhbl;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    .line 338
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->m:Z

    .line 4069
    iput-boolean v2, v1, Lhbl;->e:Z

    .line 4421
    sget v1, Liff$d;->album_gv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    .line 4423
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4424
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4425
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4427
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v2

    .line 4428
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v3, v5, v2, v5, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 4429
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 4430
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 4432
    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    .line 4433
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    .line 5073
    iput v1, v2, Lhbl;->a:I

    .line 5074
    iput v1, v2, Lhbl;->b:I

    .line 4434
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->e:Lhbl;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4436
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->f:Landroid/widget/GridView;

    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$4;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5553
    sget v1, Liff$d;->tv_image_folder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->g:Landroid/widget/TextView;

    .line 5555
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$5;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5605
    sget v1, Liff$d;->tv_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    .line 5607
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$6;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5617
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->l:Z

    if-eqz v1, :cond_0

    .line 5618
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5621
    :cond_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5623
    sget v1, Liff$d;->cb_send_origin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->i:Landroid/widget/CheckBox;

    .line 5624
    sget v1, Liff$d;->tv_pic_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j:Landroid/widget/TextView;

    .line 5625
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->q:Z

    if-nez v1, :cond_1

    .line 5626
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 5627
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5629
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->i:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5630
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->i:Landroid/widget/CheckBox;

    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$7;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment$7;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 343
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 318
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->x:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->x:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->x:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->dismiss()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    if-eqz v0, :cond_3

    .line 327
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    .line 2156
    iget-object v0, v1, Lhca;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhca$c;

    .line 3080
    iput-object v3, v0, Lhca$c;->a:Ljava/lang/Runnable;

    goto :goto_0

    .line 2160
    :cond_2
    iput-object v3, v1, Lhca;->g:Landroid/os/Handler;

    .line 2161
    iput-object v3, v1, Lhca;->h:Lhca$b;

    .line 329
    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 310
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 311
    invoke-static {p0, p1, p3}, Lhbp;->a(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;I[I)V

    .line 312
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 746
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 747
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 748
    const-string/jumbo v0, "uri"

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 750
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 762
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 763
    if-eqz p1, :cond_0

    .line 764
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->k:Landroid/net/Uri;

    .line 766
    :cond_0
    return-void
.end method
