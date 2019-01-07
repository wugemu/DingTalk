.class public Lcxu;
.super Lcxv;
.source "UserAnnounceToViewHolder.java"


# instance fields
.field protected Y:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcxv;-><init>(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lcxu;->Y:Ldac;

    iget-boolean v1, p0, Lcxu;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 31
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lctk$g;->chatting_item_to_announce:I

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v0, p0, Lcxu;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcxu;->Y:Ldac;

    .line 25
    return-void
.end method

.method protected p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcxu;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcxu;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$e;->announce_chatto_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lcxu;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcxu;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$e;->announce_chatto_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    :cond_0
    return-void
.end method

.method protected final r()I
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "#3296FA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
