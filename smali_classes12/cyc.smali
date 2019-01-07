.class public final Lcyc;
.super Lcyd;
.source "UserCommonVideoToViewHolder.java"


# instance fields
.field private af:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcyd;-><init>(Z)V

    .line 17
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
    .line 39
    iget-object v0, p0, Lcyc;->af:Ldac;

    iget-boolean v1, p0, Lcyc;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 40
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lctk$g;->chatting_item_to_common_video:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 23
    iget-object v0, p0, Lcyc;->P:Lcts$b;

    invoke-static {p1, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcyc;->af:Ldac;

    .line 24
    return-void
.end method

.method protected final p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-super {p0}, Lcyd;->p()V

    .line 45
    iget-object v0, p0, Lcyc;->af:Ldac;

    iget-object v1, p0, Lcyc;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcyc;->X:Lcom/alibaba/wukong/im/Message;

    iget-boolean v3, p0, Lcyc;->T:Z

    invoke-virtual {v0, v1, v2, v3}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 46
    return-void
.end method
