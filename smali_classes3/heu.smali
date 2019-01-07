.class public final Lheu;
.super Lhes;
.source "MiniAppListFooterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhes",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private i:Lheo;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 41
    iput-object p2, p0, Lheu;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Lheo;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p3, "hostHandler"    # Lheo;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p2, p0, Lheu;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 36
    iput-object p3, p0, Lheu;->i:Lheo;

    .line 37
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lhdn$i;->activity_miniapp_list_footer_layout:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    check-cast p1, Landroid/widget/RelativeLayout;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lheu;->e:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v0, p0, Lheu;->e:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->mini_app_list_footer_load_more_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lheu;->g:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lheu;->e:Landroid/widget/RelativeLayout;

    sget v1, Lhdn$h;->mini_apps_no_more:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lheu;->f:Landroid/widget/RelativeLayout;

    .line 84
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    .line 1049
    iget-object v0, p0, Lheu;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lheu;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lheu;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    move v1, v0

    .line 1052
    :cond_0
    iget-object v0, p0, Lheu;->i:Lheo;

    if-eqz v0, :cond_4

    .line 1053
    iget-object v0, p0, Lheu;->i:Lheo;

    invoke-interface {v0}, Lheo;->b()Z

    move-result v3

    .line 1054
    iget-object v0, p0, Lheu;->i:Lheo;

    invoke-interface {v0}, Lheo;->c()Z

    move-result v0

    .line 1058
    :goto_1
    iget-object v4, p0, Lheu;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1059
    if-eqz v0, :cond_3

    .line 1062
    if-nez v1, :cond_3

    .line 1066
    if-eqz v3, :cond_3

    .line 1067
    iget-object v0, p0, Lheu;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lheu;->i:Lheo;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lheu;->i:Lheo;

    invoke-interface {v0}, Lheo;->a()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1050
    goto :goto_0

    .line 1074
    :cond_3
    iget-object v0, p0, Lheu;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v0, v2

    move v3, v2

    goto :goto_1
.end method
