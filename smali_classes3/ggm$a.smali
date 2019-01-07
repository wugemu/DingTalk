.class final Lggm$a;
.super Lggm$c;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lggm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lggm$c;-><init>(I)V

    .line 148
    iput-object p1, p0, Lggm$a;->b:Landroid/view/View$OnClickListener;

    .line 149
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 152
    sget v1, Lfzs$g;->cspace_search_history_footer:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "convertView":Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lggm$a;->a:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lggm$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lggm$a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-object v0
.end method

.method public final a(Lggn;)V
    .locals 0
    .param p1, "item"    # Lggn;

    .prologue
    .line 159
    return-void
.end method
