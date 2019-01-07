.class public Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
.super Ljava/lang/Object;
.source "BaseBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/alibaba/doraemon/image/ImageEventListener;
.implements Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;
.implements Lhck$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

.field protected final c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field protected d:Z

.field protected e:Z

.field final synthetic f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

.field private g:Lhck;

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;
    .param p2, "info"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j:Landroid/os/Handler;

    .line 429
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->l:Lcom/alibaba/wukong/Callback;

    .line 334
    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 335
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-static {p1, v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;Lcom/alibaba/doraemon/image/ImageMagician;)Lcom/alibaba/doraemon/image/ImageMagician;

    .line 336
    return-void
.end method

.method private A()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlParams:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlParams:Ljava/util/HashMap;

    .line 812
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private B()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 818
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->o:Ljava/lang/String;

    .line 829
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->o:Ljava/lang/String;

    return-object v1

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 823
    const-string/jumbo v1, ".gif"

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v2}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 824
    .local v0, "useWebP":Z
    :goto_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    const/16 v3, 0x1c2

    const/16 v4, 0x2710

    invoke-virtual {v1, v2, v3, v4, v0}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->o:Ljava/lang/String;

    goto :goto_0

    .line 823
    .end local v0    # "useWebP":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private C()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 849
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v2

    .line 15841
    .local v2, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlParams:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 15842
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlParams:Ljava/util/HashMap;

    .line 16833
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 16834
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlHeader:Ljava/util/HashMap;

    .line 852
    .local v8, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    const-string/jumbo v0, ".gif"

    invoke-static {v2}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 17259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 853
    const/4 v4, 0x2

    move v6, v5

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 859
    :goto_2
    return-void

    .line 15844
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    goto :goto_0

    .line 16836
    .restart local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v8, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    goto :goto_1

    .line 856
    .restart local v8    # "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 18259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    move v4, v5

    move v6, v5

    .line 856
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 726
    if-eqz p1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 728
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 733
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;>;"
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 863
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 19259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 864
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 877
    :goto_0
    return-void

    .line 866
    :cond_0
    const-string/jumbo v0, ".gif"

    invoke-static {p1}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 20259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 867
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 874
    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "setImageDrawable="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", isOrigin="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "false"

    .line 875
    aput-object v2, v0, v1

    .line 874
    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 21259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 870
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-static {p0}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "ext":Ljava/lang/String;
    const-string/jumbo v1, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".png"

    .line 745
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".webp"

    .line 746
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    :cond_0
    const/4 v1, 0x1

    .line 749
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 398
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v3, 0x0

    .line 408
    :goto_0
    return v3

    .line 402
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 403
    invoke-direct {p0, v6}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BrowserFragment_Orgin"

    .line 405
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->y()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->x()Ljava/util/HashMap;

    move-result-object v5

    .line 404
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    .line 406
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 407
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 9259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 539
    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setMainGestureImageView(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)V

    .line 540
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 10259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 540
    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 11259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 541
    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 543
    :cond_0
    return-void
.end method

.method private s()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 546
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "originUrl":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 578
    .end local v1    # "originUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 552
    .restart local v1    # "originUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, "bigUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v6, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    const-wide/32 v8, 0x19000

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 555
    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    const-string/jumbo v2, "BrowserFragment_Orgin"

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->y()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->x()Ljava/util/HashMap;

    move-result-object v5

    .end local v5    # "bigUrl":Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 558
    .restart local v5    # "bigUrl":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    goto :goto_0

    .line 561
    :cond_4
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 562
    invoke-direct {p0, v5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    const-string/jumbo v6, "BrowserFragment_BIG"

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v9

    move v7, v3

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 568
    .end local v5    # "bigUrl":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v5

    .line 569
    .restart local v5    # "bigUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 570
    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    goto :goto_0

    .line 572
    :cond_6
    iput v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 573
    invoke-direct {p0, v5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    const-string/jumbo v6, "BrowserFragment_BIG"

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v9

    move v7, v3

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private t()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x32

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 581
    const-string/jumbo v1, "BaseBrowserFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryShowImage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_0

    .line 583
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    if-ne v1, v6, :cond_2

    .line 584
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->C()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-direct {p0, v4, v5, v4, v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    .line 589
    :cond_2
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 590
    const-string/jumbo v1, "BaseBrowserFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryShowImage->STATUS_BIG_COMPLETE:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->w()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 592
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 593
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 12259
    iget-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 594
    .local v0, "gestureImageView":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    invoke-virtual {v0, v5}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOriginalMode(Z)V

    goto :goto_0

    .line 596
    .end local v0    # "gestureImageView":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 597
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->C()V

    .line 599
    :cond_5
    iput-boolean v6, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 600
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 13259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 600
    invoke-virtual {v1, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;)V

    .line 601
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(F)V

    .line 602
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 603
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
    iput-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    .line 606
    :cond_6
    new-instance v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$2;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;)V

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    .line 615
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 617
    :cond_7
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 618
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 619
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->C()V

    .line 623
    :goto_1
    const-string/jumbo v1, "BaseBrowserFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryShowImage->STATUS_BIG_ERROR:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    :cond_8
    invoke-direct {p0, v4, v5, v4, v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_1

    .line 624
    :cond_9
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 625
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 628
    :cond_a
    invoke-direct {p0, v4, v5, v4, v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 630
    :cond_b
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 631
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 632
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 633
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->C()V

    .line 635
    :cond_c
    iput-boolean v6, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 636
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 14259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 636
    invoke-virtual {v1, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;)V

    .line 637
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(F)V

    .line 638
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 639
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 640
    iput-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    .line 642
    :cond_d
    new-instance v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$3;

    invoke-direct {v1, p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a$3;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;)V

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    .line 651
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 653
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 655
    :cond_f
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 656
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 661
    :goto_2
    const-string/jumbo v1, "BaseBrowserFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryShowImage->STATUS_ORIGIN_LOADING:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    :cond_10
    invoke-direct {p0, v4, v5, v4, v4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_2
.end method

.method private u()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 668
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a:Z

    if-eqz v0, :cond_0

    .line 669
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    if-ne v0, v3, :cond_1

    .line 670
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 674
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    sget v2, Liff$f;->view_origin_pic:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v4, v4, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 677
    invoke-static {v4, v5}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 676
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 686
    :cond_3
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 687
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    sget v1, Liff$f;->pic_download_failed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 691
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 692
    :cond_4
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 693
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 698
    :cond_5
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 699
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 702
    :cond_6
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    sget v1, Liff$f;->pic_download_origin_failed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 707
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 714
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_1

    .line 715
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    .line 716
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 14263
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->b:Landroid/view/View;

    .line 717
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 722
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 15263
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->b:Landroid/view/View;

    .line 719
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private w()Z
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->hasOrigin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlHeader:Ljava/util/HashMap;

    .line 772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private y()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlParams:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrlParams:Ljava/util/HashMap;

    .line 780
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private z()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrlHeader:Ljava/util/HashMap;

    .line 804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1029
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 1030
    .local v0, "id":J
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(J)V

    .line 1031
    return-void

    .line 1029
    .end local v0    # "id":J
    :cond_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v0, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    goto :goto_0
.end method

.method public final a(FF)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 23259
    iget-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1023
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lhcm;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->m:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lhcm;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, p1, p2}, Lhcm;->a(FF)V

    .line 1025
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected a(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 24259
    iget-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1036
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lhcm;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->m:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lhcm;-><init>(Landroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lhcm;->b(Landroid/app/Activity;J)V

    .line 1037
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->n:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V
    .locals 3
    .param p1, "holder"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 477
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-ne v2, p1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 480
    :cond_0
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 482
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->g()V

    .line 483
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f()V

    .line 485
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->r()V

    .line 486
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->s()V

    .line 487
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->t()V

    .line 488
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 490
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 491
    .local v0, "id":J
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(J)Z

    goto :goto_0

    .line 490
    .end local v0    # "id":J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v0, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    goto :goto_1
.end method

.method public a(Z)V
    .locals 5
    .param p1, "isDownloadOrigin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 340
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->l:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v4, v2, v3}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 360
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 346
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e:Z

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->l:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v4, v2, v3}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 356
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    sget v1, Liff$f;->pic_save_no_download_fail:I

    invoke-static {v1}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method public a(ZLcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "isDownloadOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 364
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v2, p2}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 387
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 370
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e:Z

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    invoke-interface {v1, v0, v3, v2, p2}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 380
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    if-eqz p2, :cond_0

    .line 383
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public b(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V
    .locals 4
    .param p1, "holder"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eq p1, v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k:Ljava/lang/Runnable;

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h()V

    .line 504
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 3263
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->b:Landroid/view/View;

    .line 504
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 4259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 505
    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;)V

    .line 506
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 5259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 506
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d()V

    .line 507
    invoke-direct {p0, v2, v3, v2, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 508
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 510
    :cond_2
    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3
    .param p1, "isMainPager"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a:Z

    if-ne v2, p1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 466
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a:Z

    .line 467
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->r()V

    .line 468
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->s()V

    .line 469
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    .line 471
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 472
    .local v0, "id":J
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(J)Z

    goto :goto_0

    .line 471
    .end local v0    # "id":J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-wide v0, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    invoke-interface {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;->a()Z

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(J)Z
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, "isInitShow":Z
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-boolean v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->l:Z

    if-nez v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-boolean v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->v:Z

    if-nez v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->v:Z

    .line 1046
    new-instance v1, Lhcm;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 25259
    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 1046
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->m:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lhcm;-><init>(Landroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    .line 1047
    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lhcm;->a(Landroid/app/Activity;J)V

    .line 1048
    const/4 v0, 0x1

    .line 1051
    :cond_0
    if-nez v0, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->m:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    :cond_1
    return v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 1259
    iget-object v0, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 414
    .local v0, "view":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->isDrawingCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setDrawingCacheEnabled(Z)V

    .line 420
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    .end local v0    # "view":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    :cond_1
    :goto_0
    return-object v1

    .line 422
    .restart local v0    # "view":Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 450
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->cancelPreDownloadImage(Ljava/lang/String;Z)V

    .line 451
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->cancelPreDownloadImage(Ljava/lang/String;Z)V

    .line 452
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 2259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 456
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->destroyDrawingCache()V

    .line 457
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 3259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 457
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d()V

    .line 459
    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 514
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Liff$a;->photokit_photo_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 516
    .local v0, "tileColor":I
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 6259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 516
    invoke-virtual {v1, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setTileBackgroundColor(I)V

    .line 518
    .end local v0    # "tileColor":I
    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->g:Lhck;

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lhck;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lhck;-><init>(Landroid/content/Context;Lhck$a;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->g:Lhck;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 7259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 525
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->g:Lhck;

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setSwipeToDismissTouchListener(Lhck;)V

    .line 527
    :cond_1
    return-void
.end method

.method protected final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 8259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 531
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setSwipeToDismissTouchListener(Lhck;)V

    .line 533
    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 754
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    return-object v0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x2710

    const/16 v3, 0x316

    .line 786
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->n:Ljava/lang/String;

    .line 797
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->n:Ljava/lang/String;

    return-object v0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 790
    const-string/jumbo v0, ".gif"

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v1}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->n:Ljava/lang/String;

    goto :goto_0

    .line 793
    :cond_2
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 22259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 882
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c()V

    .line 884
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 944
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 945
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 950
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 951
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 956
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 957
    return-void
.end method

.method public final o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 961
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 962
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 964
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 967
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Liff$d;->photo_page_download_origin:I

    if-ne v0, v1, :cond_1

    .line 982
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->q()Z

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Liff$d;->photo_page_downloading_origin:I

    if-ne v0, v1, :cond_2

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e:Z

    .line 985
    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 986
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->cancelPreDownloadImage(Ljava/lang/String;Z)V

    .line 987
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 988
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    .line 989
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->b()V

    goto :goto_0

    .line 990
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Liff$d;->photo_page_error:I

    if-ne v0, v1, :cond_3

    .line 991
    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 992
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 993
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    goto :goto_0

    .line 994
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Liff$d;->photo_page_view:I

    if-ne v0, v1, :cond_0

    .line 995
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->k:Z

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    invoke-interface {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 998
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 1002
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a()V

    goto :goto_0
.end method

.method public onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 929
    if-eqz p3, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iput p2, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i:I

    .line 932
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    .line 935
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 9
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 888
    const-string/jumbo v0, "img"

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "onError, errCode="

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ", errDes="

    aput-object v3, v1, v2

    aput-object p2, v1, v6

    const-string/jumbo v2, ", url="

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    if-eqz p3, :cond_0

    .line 891
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iput v6, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 893
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 894
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iput-boolean v4, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e:Z

    .line 897
    iput v8, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 898
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 899
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    goto :goto_0
.end method

.method public onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    const/4 v2, 0x1

    .line 906
    if-eqz p3, :cond_0

    .line 907
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 908
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 910
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->t()V

    .line 911
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 912
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 914
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    .line 915
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->t()V

    .line 916
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 917
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->u()V

    .line 918
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e:Z

    if-eqz v0, :cond_0

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e:Z

    .line 920
    invoke-virtual {p0, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Z)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    if-eqz v0, :cond_1

    .line 1012
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->f:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 1016
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l2"    # J
    .param p5, "strings"    # [Ljava/lang/String;

    .prologue
    .line 939
    return-void
.end method

.method public final p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 971
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d:Z

    .line 972
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->v()V

    .line 974
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->A()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->z()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Ljava/lang/String;ZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 977
    :cond_0
    return-void
.end method
