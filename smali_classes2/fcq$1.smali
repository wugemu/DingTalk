.class final Lfcq$1;
.super Ljava/lang/Object;
.source "LinkViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfcq;-><init>(Landroid/view/View;Lfdf;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcq;


# direct methods
.method constructor <init>(Lfcq;)V
    .locals 0
    .param p1, "this$0"    # Lfcq;

    .prologue
    .line 49
    iput-object p1, p0, Lfcq$1;->a:Lfcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    iget-object v3, p0, Lfcq$1;->a:Lfcq;

    invoke-static {v3}, Lfcq;->a(Lfcq;)Landroid/view/View;

    move-result-object v3

    sget v4, Lezg$h;->circle_item_url:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 61
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "shareUrl":Ljava/lang/String;
    iget-object v3, p0, Lfcq$1;->a:Lfcq;

    invoke-static {v3}, Lfcq;->a(Lfcq;)Landroid/view/View;

    move-result-object v3

    sget v4, Lezg$h;->ll_tag:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lfcq$1;->a:Lfcq;

    invoke-static {v3}, Lfcq;->a(Lfcq;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lffo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
