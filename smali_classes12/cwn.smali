.class public final Lcwn;
.super Lcwo;
.source "NewDingCardToViewHolder.java"


# instance fields
.field protected a:Ldac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcwo;-><init>(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcwo;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcwn;->P:Lcts$b;

    invoke-static {p2, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcwn;->a:Ldac;

    .line 21
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lcwo;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 26
    iget-object v0, p0, Lcwn;->a:Ldac;

    iget-boolean v1, p0, Lcwn;->T:Z

    invoke-virtual {v0, p1, p2, v1}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 28
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lctk$g;->chatting_item_new_ding_card:I

    return v0
.end method
