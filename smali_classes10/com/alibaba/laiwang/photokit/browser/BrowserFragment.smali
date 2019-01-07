.class public Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;
.super Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
.source "BrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final B:Ljava/lang/String;


# instance fields
.field private C:Lgl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;-><init>()V

    .line 279
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$3;-><init>(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->C:Lgl;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;-><init>()V

    .line 58
    .local v0, "fragment":Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v0
.end method

.method private static a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 3
    .param p0, "old"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 183
    if-eqz p0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "segment":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 187
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Lhcj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 197
    .end local v0    # "segment":[Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 496
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 497
    .local v0, "curPpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v1, p1, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;->a(Landroid/view/View;ILcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 501
    .end local v0    # "curPpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;[Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a([Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    return-void
.end method

.method private a([Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;
    .param p2, "currentPhoto"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 213
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    .line 214
    aget-object v3, p1, v0

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v3}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 215
    .local v1, "poj":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 216
    .local v2, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    .line 212
    .end local v1    # "poj":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v2    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->B:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 441
    .local v0, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isDownloadOrigin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 418
    .local v0, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public final a(IZLcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isDownloadOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 426
    .local v0, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 427
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(ZLcom/alibaba/wukong/Callback;)V

    .line 429
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    .line 130
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->f:Z

    .line 114
    return-void
.end method

.method public final b(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 432
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 433
    .local v0, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 436
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string/jumbo v4, "current_photo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    .line 85
    .local v0, "currentPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v0, :cond_0

    .line 89
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 90
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 91
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 92
    .local v3, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v4, :cond_3

    .line 94
    iget-object v4, v3, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-virtual {v0, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    .line 96
    iget v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    if-eq v4, v5, :cond_2

    .line 97
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZ)V

    .line 98
    iget v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    invoke-virtual {p0, v4}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->a(IZ)V

    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->g:Z

    .line 122
    return-void
.end method

.method protected final c(I)V
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    if-ne v2, p1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 461
    :cond_0
    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 462
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 463
    .local v1, "prePpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v1, :cond_1

    .line 464
    sget-object v2, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->B:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "setMainPager:false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Z)V

    .line 468
    .end local v1    # "prePpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_1
    iput p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    .line 469
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 470
    .local v0, "curPpc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_2

    .line 471
    sget-object v2, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->B:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "setMainPager:true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Z)V

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c()V

    .line 477
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b()V

    goto :goto_0
.end method

.method protected final d(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    if-ne v1, p1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 485
    :cond_0
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 486
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 487
    .local v0, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k()V

    .line 491
    .end local v0    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_1
    iput p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 353
    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 355
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    iget v4, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 356
    .local v1, "page":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    if-eqz v1, :cond_1

    .line 357
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 382
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d()V

    .line 383
    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e()V

    .line 384
    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 389
    .end local v1    # "page":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_1
    return-object v2

    .line 365
    .restart local v1    # "page":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_2
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    .line 367
    .local v0, "i":I
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    .line 368
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    .line 370
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->C:Lgl;

    invoke-virtual {v2}, Lgl;->notifyDataSetChanged()V

    .line 372
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 373
    add-int/lit8 v0, v0, -0x1

    .line 374
    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(I)V

    .line 379
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b()V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c(I)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(I)V

    goto :goto_1
.end method

.method protected final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->b()V

    .line 229
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->C:Lgl;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setAdapter(Lgl;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    new-instance v1, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;-><init>(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setOnPageChangeListener(Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;)V

    .line 269
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setCurrentItem(I)V

    .line 271
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    if-nez v0, :cond_0

    .line 272
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c(I)V

    .line 275
    :cond_0
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(I)V

    .line 277
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 506
    .local v0, "id":I
    sget v1, Liff$d;->iv_pic_save:I

    if-ne v0, v1, :cond_1

    .line 507
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Landroid/view/View;)V

    .line 508
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    sget v1, Liff$d;->iv_pic_list:I

    if-ne v0, v1, :cond_0

    .line 510
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 146
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string/jumbo v4, "photoList"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 154
    .local v3, "objects":[Ljava/lang/Object;
    const-string/jumbo v4, "photoList_fetcher"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;

    .line 155
    .local v2, "fetcher":Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    const-string/jumbo v4, "current_photo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v4}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 156
    .local v1, "currentPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v3, :cond_2

    .line 157
    invoke-direct {p0, v3, v1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a([Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 178
    :cond_1
    :goto_1
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d:I

    .line 179
    iput v5, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->e:I

    goto :goto_0

    .line 158
    :cond_2
    if-eqz v2, :cond_1

    .line 159
    new-instance v4, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    invoke-interface {v2, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;->fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 401
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 402
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 403
    .local v1, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d()V

    .line 404
    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e()V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v1    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    :cond_0
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->onDestroy()V

    .line 408
    return-void
.end method
