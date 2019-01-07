.class public Ldaj;
.super Ldak;
.source "UserVoiceToViewHolder.java"


# instance fields
.field protected Y:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldak;-><init>(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$AudioContent;I)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "audioContent"    # Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .param p4, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Ldaj;->Y:Ldac;

    iget-boolean v1, p0, Ldaj;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 56
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lctk$g;->chatting_item_to_voice:I

    return v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Ldaj;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Ldaj;->Y:Ldac;

    .line 26
    return-void
.end method

.method protected p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Ldaj;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Ldaj;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$e;->im_chatto_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Ldaj;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Ldaj;->r:Landroid/view/View;

    sget v1, Lctk$f;->voice_play_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$e;->im_chatto_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    :cond_0
    return-void
.end method
