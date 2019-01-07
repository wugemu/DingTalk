.class public Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Lhbn;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->k:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->l:Ljava/util/HashMap;

    .line 89
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad param bundle,it is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;-><init>()V

    .line 129
    .local v0, "fragment":Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "previewItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz p0, :cond_1

    .line 373
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 374
    .local v0, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v0    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_1
    return-object v1
.end method

.method private a(I)V
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 341
    .local v0, "formattedSize":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "formattedSize":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 350
    .restart local v0    # "formattedSize":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    sget v3, Liff$f;->origin_pic_choose:I

    invoke-virtual {p0, v3}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1942
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1951
    const-string/jumbo v3, "%.1f%s"

    .line 1952
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1953
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v5

    const-string/jumbo v4, "KB"

    aput-object v4, v2, v6

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_2
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1956
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    .line 2253
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    .line 2255
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(I)V

    .line 2257
    const/4 v0, 0x0

    .line 2258
    iget v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 2261
    :cond_0
    if-eqz v0, :cond_1

    .line 2262
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2263
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2267
    :goto_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2269
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;

    if-eqz v0, :cond_1

    .line 2270
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;->a(II)V

    .line 57
    :cond_1
    return-void

    .line 2265
    :cond_2
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->h:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)Lhbn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->j:Lhbn;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string/jumbo v2, "preview_picture_objects"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 145
    .local v1, "temp":Ljava/io/Serializable;
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    .end local v1    # "temp":Ljava/io/Serializable;
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_2
    const-string/jumbo v2, "send_origin_picture"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a:Z

    .line 150
    const-string/jumbo v2, "album_choose_num"

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->h:I

    .line 151
    const-string/jumbo v2, "current_preview_picture_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    .line 152
    const-string/jumbo v2, "video_compress"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->i:Z

    .line 1289
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->m:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1292
    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$6;-><init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->m:Landroid/content/BroadcastReceiver;

    .line 1318
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "action_edit_picture_change"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 160
    sget v6, Liff$e;->fragment_layout_preview:I

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, "root":Landroid/view/View;
    sget v6, Liff$d;->btn_send_origin:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    .line 164
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    iget-boolean v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a:Z

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    sget v6, Liff$d;->tv_edit_pic:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->f:Landroid/widget/TextView;

    .line 170
    sget v6, Liff$d;->btn_selected:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    iget v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 173
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    iget v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 175
    .restart local v1    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    iget-boolean v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->i:Z

    if-eqz v6, :cond_2

    .line 180
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->f:Landroid/widget/TextView;

    new-instance v9, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;

    invoke-direct {v9, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$2;-><init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->g:I

    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(I)V

    .line 199
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 200
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 201
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :goto_0
    const-string/jumbo v6, "IMAGE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 210
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    new-instance v6, Lhbn;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-direct {v6, v7, v8, v0}, Lhbn;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/doraemon/image/ImageMagician;)V

    iput-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->j:Lhbn;

    .line 211
    sget v6, Liff$d;->view_pager:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    .line 212
    .local v5, "viewPager":Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->j:Lhbn;

    invoke-virtual {v5, v6}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setAdapter(Lgl;)V

    .line 213
    new-instance v6, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$3;

    invoke-direct {v6, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$3;-><init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setOnPageSelectedListener(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;)V

    .line 221
    sget v6, Liff$d;->btn_send_origin_clickable_area:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 222
    .local v2, "originBtnClicablekArea":Landroid/view/View;
    new-instance v6, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$4;

    invoke-direct {v6, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$4;-><init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v6, Liff$d;->btn_selected_clickable_area:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 231
    .local v4, "selectedClickableArea":Landroid/view/View;
    new-instance v6, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$5;

    invoke-direct {v6, p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$5;-><init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    .line 239
    invoke-virtual {v8}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    .line 240
    invoke-virtual {v9}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    .line 241
    invoke-virtual {v10}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v10

    .line 238
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 243
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    .line 244
    invoke-virtual {v8}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    .line 245
    invoke-virtual {v9}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->e:Landroid/widget/CheckBox;

    .line 246
    invoke-virtual {v10}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v10

    .line 243
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 248
    return-object v3

    .line 203
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v2    # "originBtnClicablekArea":Landroid/view/View;
    .end local v4    # "selectedClickableArea":Landroid/view/View;
    .end local v5    # "viewPager":Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;
    :cond_3
    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->f:Landroid/widget/TextView;

    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Lgzo;->c()Lgzl;

    move-result-object v6

    invoke-interface {v6}, Lgzl;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    .line 203
    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->d:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    .line 204
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->m:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->m:Landroid/content/BroadcastReceiver;

    .line 329
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 330
    return-void
.end method

.method public onPause()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.choose.pictire.from.preview"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->k:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .local v1, "changed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    const-string/jumbo v3, "choose_changed_picture_objects"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 282
    const-string/jumbo v3, "send_origin_picture"

    iget-boolean v4, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 285
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 286
    return-void
.end method
