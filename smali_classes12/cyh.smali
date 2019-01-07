.class public final Lcyh;
.super Lcva;
.source "UserEncryptedAudioToViewHolder.java"


# instance fields
.field protected ab:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcva;-><init>(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcyh;->ab:Ldac;

    iget-boolean v1, p0, Lcyh;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 39
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lctk$g;->chatting_item_to_encrypt_voice:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lcyh;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcyh;->ab:Ldac;

    .line 24
    return-void
.end method

.method protected final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Lcyh;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_chatto_bg_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    return-void
.end method

.method protected final r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lcyh;->r:Landroid/view/View;

    sget v1, Lctk$e;->im_chatto_bg_pressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    return-void
.end method
