.class public abstract Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;,
        Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;,
        Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;,
        Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;,
        Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;
    }
.end annotation


# instance fields
.field protected A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

.field private B:Lcom/alibaba/doraemon/image/ImageMagician;

.field private final C:Lcom/alibaba/doraemon/image/ImageEventListener;

.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;",
            ">;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Landroid/view/View;

.field protected n:Landroid/view/View;

.field protected o:Landroid/view/View;

.field protected p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

.field protected q:Landroid/widget/TextView;

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/view/View;

.field protected u:Landroid/view/View;

.field protected v:Z

.field protected final w:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;

.field protected z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a:Ljava/util/HashMap;

    .line 67
    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->f:Z

    .line 68
    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->g:Z

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->w:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    .line 1059
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->C:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 100
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->y:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;

    .line 103
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->B:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 104
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->B:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->C:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->B:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;Lcom/alibaba/doraemon/image/ImageMagician;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
    .param p1, "x1"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->B:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object p1
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract a(IZ)V
.end method

.method public abstract a(IZLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;)V
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;)V
    .locals 0
    .param p1, "shouldDismissAnimationCallback"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    .line 1146
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;)V
    .locals 0
    .param p1, "pageChangeListener"    # Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    .line 1150
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->d:I

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 180
    .local v0, "curPpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a()V

    .line 182
    const/4 v1, 0x1

    .line 185
    .end local v0    # "curPpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract b(I)Landroid/graphics/Bitmap;
.end method

.method protected final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->f:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->h:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_1
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public abstract b(Z)V
.end method

.method protected final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->d()V

    .line 204
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->t:Landroid/view/View;

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->y:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    :cond_1
    return-void
.end method

.method protected abstract c(I)V
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "isDisableTapToClose"    # Z

    .prologue
    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->k:Z

    .line 1154
    return-void
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->y:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$b;->removeMessages(I)V

    .line 214
    return-void
.end method

.method protected abstract d(I)V
.end method

.method public final d(Z)V
    .locals 1
    .param p1, "isDisableInitAnimation"    # Z

    .prologue
    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->l:Z

    .line 1158
    return-void
.end method

.method public abstract e()I
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public abstract g()Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
.end method

.method protected abstract h()V
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->e:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->e:I

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->x:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 1134
    .local v0, "curPpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string/jumbo v1, "is_disable_save"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->h:Z

    .line 117
    const-string/jumbo v1, "is_disable_view_all"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->i:Z

    .line 118
    const-string/jumbo v1, "intent_key_enable_swipe_to_dismiss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->j:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 142
    sget v1, Liff$e;->fragment_layout_browser:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "root":Landroid/view/View;
    sget v1, Liff$d;->rl_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->o:Landroid/view/View;

    .line 144
    sget v1, Liff$d;->photo_browser_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    .line 145
    sget v1, Liff$d;->photo_page_download_origin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    .line 146
    sget v1, Liff$d;->photo_page_downloading_origin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    .line 147
    sget v1, Liff$d;->photo_page_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    .line 148
    sget v1, Liff$d;->iv_pic_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->t:Landroid/view/View;

    .line 149
    sget v1, Liff$d;->iv_pic_save:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->u:Landroid/view/View;

    .line 150
    sget v1, Liff$d;->tools:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->n:Landroid/view/View;

    .line 151
    sget v1, Liff$d;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->m:Landroid/view/View;

    .line 153
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->h()V

    .line 156
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->B:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->B:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->C:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->d()V

    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 175
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->c()V

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->b()V

    .line 165
    return-void
.end method
