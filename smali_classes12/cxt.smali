.class public Lcxt;
.super Lcxv;
.source "UserAnnounceFromViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcxv;-><init>(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 37
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->chatting_item_from_announce:I

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 31
    return-void
.end method

.method protected p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcxt;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcxt;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$e;->announce_chatfrom_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v0, p0, Lcxt;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcxt;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$e;->announce_chatfrom_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    :cond_0
    return-void
.end method

.method protected final r()I
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "#3296FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
