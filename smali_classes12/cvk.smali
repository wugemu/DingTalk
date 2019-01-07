.class public final Lcvk;
.super Lcvl;
.source "ForwardCombineToViewHolder.java"


# instance fields
.field private S:Ldac;

.field private Y:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcvl;-><init>(Z)V

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcvl;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcvk;->P:Lcts$b;

    invoke-static {p2, v0}, Ldac;->a(Landroid/view/View;Lcts$b;)Ldac;

    move-result-object v0

    iput-object v0, p0, Lcvk;->S:Ldac;

    .line 39
    sget v0, Lctk$f;->vs_for_forward_combine:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcvk;->Y:Landroid/view/View;

    .line 40
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcvl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V

    .line 45
    iget-object v1, p0, Lcvk;->S:Ldac;

    iget-boolean v2, p0, Lcvk;->T:Z

    invoke-virtual {v1, p1, p2, v2}, Ldac;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 46
    iget-object v1, p0, Lcvk;->d:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcvk;->d:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 10527
    .local v0, "chatMsgActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h:Ldeu;

    .line 48
    if-eqz v1, :cond_0

    .line 11527
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->h:Ldeu;

    .line 57
    iget-object v1, p0, Lcvk;->Y:Landroid/view/View;

    .line 12056
    if-eqz v1, :cond_0

    .line 12057
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .end local v0    # "chatMsgActivity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lctk$g;->chatting_item_to:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lctk$g;->chatting_item_to_forward_combine:I

    return v0
.end method
