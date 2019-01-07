.class public final Lczq;
.super Lczr;
.source "UserSpacePictureToViewHolder.java"


# instance fields
.field private Y:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lczr;-><init>(Z)V

    .line 20
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
    .line 41
    iget-object v0, p0, Lczq;->Y:Ldac;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lczq;->Y:Ldac;

    iget-boolean v1, p0, Lczq;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 44
    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lctk$g;->chatting_item_to_space_picture:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 26
    iget-object v0, p0, Lczq;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lczq;->Y:Ldac;

    .line 27
    return-void
.end method
