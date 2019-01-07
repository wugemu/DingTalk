.class final Leqe$1;
.super Ljava/lang/Object;
.source "FunctionSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqe;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leqj;

.field final synthetic b:I

.field final synthetic c:Leqe;


# direct methods
.method constructor <init>(Leqe;Leqj;I)V
    .locals 0
    .param p1, "this$0"    # Leqe;

    .prologue
    .line 56
    iput-object p1, p0, Leqe$1;->c:Leqe;

    iput-object p2, p0, Leqe$1;->a:Leqj;

    iput p3, p0, Leqe$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    iget-object v3, p0, Leqe$1;->a:Leqj;

    .line 1056
    iget-object v1, v3, Leqi;->c:Lcom/alibaba/android/search/model/SearchClickLogModel;

    .line 62
    .local v1, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v1, :cond_0

    .line 63
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 64
    invoke-static {}, Leqb;->b()V

    .line 67
    :cond_0
    const-string/jumbo v3, "search_click_type"

    const-string/jumbo v4, "type=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "function"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget v3, p0, Leqe$1;->b:I

    iget-object v4, p0, Leqe$1;->c:Leqe;

    iget-object v4, v4, Leqe;->b:Landroid/app/Activity;

    invoke-static {v3, v4}, Lesx;->a(ILandroid/app/Activity;)V

    .line 71
    iget-object v3, p0, Leqe$1;->c:Leqe;

    iget-object v3, v3, Leqe;->b:Landroid/app/Activity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 72
    .local v2, "localBroadcastManager":Ldq;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.add.search.history"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "addHistroy":Landroid/content/Intent;
    const-string/jumbo v3, "history"

    iget-object v4, p0, Leqe$1;->a:Leqj;

    invoke-virtual {v4}, Leqj;->a()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v2, v0}, Ldq;->b(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
