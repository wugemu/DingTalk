.class public Lczy;
.super Ldaa;
.source "UserTextFromViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Y:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldaa;-><init>(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lczy;->Y:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lczy;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lczy;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->isAt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lczy;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lczy;->Y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lctk$g;->chatting_item_from_text:I

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    sget v0, Lctk$f;->layout_reply:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczy;->Y:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lczy;->Y:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lczy;->Y:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lczy;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_translate_status_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczy;->J:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lczy;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_translate_divide_line_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczy;->ac:Landroid/view/View;

    .line 49
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 87
    .local v0, "id":I
    sget v1, Lctk$f;->layout_reply:I

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lczy;->P:Lcts$b;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lczy;->P:Lcts$b;

    iget-object v2, p0, Lczy;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1, v2}, Lcts$b;->f(Lcom/alibaba/wukong/im/Message;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lczy;->ad:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lczy;->ad:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 70
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lczy;->ad:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lczy;->ad:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    :cond_0
    return-void
.end method

.method protected final r()I
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "#3296FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
