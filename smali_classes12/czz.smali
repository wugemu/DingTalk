.class public Lczz;
.super Ldaa;
.source "UserTextToViewHolder.java"


# instance fields
.field protected Y:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldaa;-><init>(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lctk$g;->chatting_item_to:I

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
    .line 44
    iget-object v0, p0, Lczz;->Y:Ldac;

    iget-boolean v1, p0, Lczz;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 45
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lctk$g;->chatting_item_to_text:I

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lczz;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lczz;->Y:Ldac;

    .line 36
    invoke-virtual {p0}, Lczz;->q()V

    .line 37
    iget-object v0, p0, Lczz;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_translate_status_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczz;->J:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lczz;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_translate_divide_line_v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lczz;->ac:Landroid/view/View;

    .line 39
    return-void
.end method

.method protected p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lczz;->ad:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-wide v0, p0, Lczz;->V:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lczz;->ad:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->announce_chatto_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lczz;->ad:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->im_chatto_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected q()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lczz;->ad:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 71
    iget-wide v0, p0, Lczz;->V:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lczz;->ad:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->announce_chatto_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lczz;->ad:Landroid/widget/LinearLayout;

    sget v1, Lctk$e;->im_chatto_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
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
