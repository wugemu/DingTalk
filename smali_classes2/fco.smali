.class public final Lfco;
.super Lfcm;
.source "FooterViewHolder.java"


# instance fields
.field public j:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1, "item"    # Landroid/view/View;
    .param p2, "hasMore"    # Z

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfcm;-><init>(Landroid/view/View;Lfdf;)V

    .line 28
    iput-boolean p2, p0, Lfco;->j:Z

    .line 29
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 33
    sget v0, Lezg$h;->item_circle_bt_load:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfco;->k:Landroid/widget/TextView;

    .line 34
    sget v0, Lezg$h;->tv_add_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfco;->l:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lfco;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lfco;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lfco;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-boolean v0, p0, Lfco;->j:Z

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lfco;->k:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_circle_load_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lfco;->k:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_circle_fully_loaded:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_add_friends:I

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lfco;->l:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfco;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lfco;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/add_friend"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 70
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
