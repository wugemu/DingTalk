.class final Lfgn$3;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgn$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfgn;


# direct methods
.method constructor <init>(Lfgn;Lfgn$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfgn;

    .prologue
    .line 163
    iput-object p1, p0, Lfgn$3;->c:Lfgn;

    iput-object p2, p0, Lfgn$3;->a:Lfgn$a;

    iput-object p3, p0, Lfgn$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v2, p0, Lfgn$3;->a:Lfgn$a;

    iget-object v2, v2, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 167
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 168
    iget-object v2, p0, Lfgn$3;->c:Lfgn;

    invoke-static {v2}, Lfgn;->a(Lfgn;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lfgn$3;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v2, p0, Lfgn$3;->a:Lfgn$a;

    iget-object v2, v2, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfgn$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lfgn$3;->a:Lfgn$a;

    iget-object v3, v3, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lfgn$3;->a:Lfgn$a;

    iget-object v2, v2, Lfgn$a;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_0
    :goto_0
    iget-object v2, p0, Lfgn$3;->a:Lfgn$a;

    iget-object v2, v2, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 177
    .local v1, "obs":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 178
    return-void

    .line 173
    .end local v1    # "obs":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v2, p0, Lfgn$3;->c:Lfgn;

    invoke-static {v2}, Lfgn;->a(Lfgn;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lfgn$3;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lfgn$3;->a:Lfgn$a;

    iget-object v2, v2, Lfgn$a;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
