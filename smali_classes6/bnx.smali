.class public final Lbnx;
.super Lbnv;
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
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbnv;-><init>(Landroid/view/View;Lboq;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbnx;->j:Z

    .line 26
    iput-boolean p2, p0, Lbnx;->j:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 31
    sget v0, Lbpu$d;->item_circle_bt_load:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbnx;->k:Landroid/widget/TextView;

    .line 32
    sget v0, Lbpu$d;->btn_post:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbnx;->l:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lbnx;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lbnx;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lbnx;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-boolean v0, p0, Lbnx;->j:Z

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lbnx;->k:Landroid/widget/TextView;

    sget v1, Lbpu$f;->dt_circle_load_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lbnx;->k:Landroid/widget/TextView;

    sget v1, Lbpu$f;->dt_circle_fully_loaded:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbpu$d;->btn_post:I

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1069
    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lbnn;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1}, Lbnn;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Landroid/app/Activity;Lbnn;)V

    .line 65
    :cond_0
    return-void
.end method
